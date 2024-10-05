package com.transys.service;

import java.util.Map;
import java.util.concurrent.ExecutionException;

import org.apache.poi.util.SystemOutLogger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.transys.dao.MchInputDao;
import com.transys.domain.MchInput;
import com.transys.util.OpcDataMap;

@Service
public class MchInputServiceImpl implements MchInputService{
	
	@Autowired
	private MchInputDao mchInputDao;
	
	public void mchInput() throws InterruptedException, ExecutionException {
//		System.out.println("MCHINPUT ");
		OpcDataMap opcDataMap = new OpcDataMap();
		String plcPumbun = "0";
		String plcDevice = "";
		String dbMesLot = "";
		
		//품번, 호기값 조회
		Map<String, Object> pumbunMap = opcDataMap.getOpcData("TRANSYS_TEST.MCHINPUT.PUMBUN");
		Map<String, Object> deviceMap = opcDataMap.getOpcData("TRANSYS_TEST.MCHINPUT.DEVICECODE");
//		System.out.println("pumbun : "+pumbunMap.get("value"));
//		System.out.println("device : "+deviceMap.get("value"));
		
		plcPumbun = pumbunMap.get("value").toString();
		plcDevice = deviceMap.get("value").toString();
		
		//품번이 0이 아닐때만
		if(!"0".equals(plcPumbun)) {
			//4자리 포맷으로 만들기 품번이 4면 0004
			plcPumbun = String.format("%04d",Integer.parseInt(plcPumbun));
//			System.out.println("plcPumbun : "+plcPumbun);
			
			//t_workinline에서 품번, 호기로 데이터 조회
			MchInput mchInput = new MchInput();
			mchInput.setPumbun(plcPumbun);
			mchInput.setDevicecode(plcDevice);
			
			//t_workinline, t_product 조인쿼리 실행
			MchInput mchData = mchInputDao.getMchInputDataSelectWorkInline(mchInput);
		
//			System.out.println("getRegTime : "+mchData.getRegtime());
			//가져온 데이터가 있을때만
			if(mchData.getRegtime() != null) {
//				#{pumcode}, #{meslot}, #{loadcnt}, SYSDATE, #{devicecode}, '0', #{remark}
/*
				System.out.println("전");
				System.out.println("getPumcode : "+mchData.getPumcode());
				System.out.println("getMeslot : "+mchData.getMeslot());
				System.out.println("getLoadcnt : "+mchData.getLoadcnt());
				System.out.println("getDevicecode : "+mchData.getDevicecode());
				System.out.println("getRemark : "+mchData.getRemark());
*/
				//위 조건이 else 일때만, MESLOT가 공백(널)이면 변수 공백으로
				if(mchData.getMeslot().length() == 0) {
					dbMesLot = "";
				}else {
					dbMesLot = mchData.getMeslot();
				}
				
				mchData.setMeslot(dbMesLot);
				mchData.setDevicecode(plcDevice);
/*
				System.out.println("후");
				System.out.println("getPumcode : "+mchData.getPumcode());
				System.out.println("getMeslot : "+mchData.getMeslot());
				System.out.println("getLoadcnt : "+mchData.getLoadcnt());
				System.out.println("getDevicecode : "+mchData.getDevicecode());
				System.out.println("getRemark : "+mchData.getRemark());
*/
				//INPUT_TAB에 정상적인 데이터 INSERT
				mchInputDao.setMchDataInsertInputTab(mchData);
		
				String send1 = mchInput.getPumcode();
				String send2 = mchInput.getLotno();
				String send3 = mchInput.getMeslot();
				int send4 = mchInput.getLoadcnt();
				
				//PLC값 0:출고대기, 1:작업중, 2:창고입고완료
				//t_waitlist에 PLC값 2로 업데이트
				mchInputDao.setMchDataUpdateWaitList(mchData);
		
				//t_siljuk테이블에 완료시간 업데이트
				mchInputDao.setMchDataUpdateSiljuk(mchData);
		
				//t_workinline에서 해당 호기의 품번 삭제
				mchInputDao.setMchDataDeleteWorkInline(mchData);
		
				OpcDataMap opcData = new OpcDataMap();
				
				//화면의 표시값 초기화 (PLC값 등등)
				opcData.setOpcData("TRANSYS_TEST.MCHINPUT.PUMBUN", 0);
				opcData.setOpcData("TRANSYS_TEST.MCHINPUT.DEVICECODE", 0);
				
				//마지막 창고 입고내역
				
			}else {
				//조회 카운터가 0이하이면 입고요청에러로 INPUT_TAB에 INSERT 후 리턴
				//카운트0 대신에 받아온 데이터가 null로 구분
				mchInputDao.setMchDataInsertInputTabFail(mchData);
			}
			//t_workinline에 데이터가 없어도
			//t_waitlist 업데이트, t_workinline 딜리트
			//오늘날짜 - 5일 이전의 waitlist 업데이트
			mchInputDao.setMchDataUpdateSiljukFail(mchData);
			
			//오늘날짜 -5일 이전의 workinline 딜리트
			mchInputDao.setMchDataDeleteWorkInlineFail(mchData);
		}
	}

}
