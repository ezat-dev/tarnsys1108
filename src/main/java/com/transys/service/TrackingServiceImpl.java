package com.transys.service;

import java.util.Map;
import java.util.concurrent.ExecutionException;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.transys.dao.TrackingDao;
import com.transys.domain.Tracking;
import com.transys.util.OpcDataMap;

@Service
public class TrackingServiceImpl implements TrackingService{
	
	@Autowired
	private TrackingDao trackingDao;
	
	
	
	public void trackingDataSet(String devicecode, int curLocation, String setDataDir) 
			throws InterruptedException, ExecutionException {
		OpcDataMap opcDataMap = new OpcDataMap();
		
		Map<String, JSONArray> dataMap = opcDataMap.getOpcDataListMap2(setDataDir);
				
		JSONArray rowsArray = dataMap.get("dataList");			
		
		Tracking tracking = new Tracking();
		
		for(int i=0; i<rowsArray.size(); i++) {
			JSONObject rowObj = (JSONObject) rowsArray.get(i);
			
			String tagName = rowObj.get("tagName").toString();
			String value = rowObj.get("value").toString();
			
			String pumBun = "";

			if("PUMBUN".equals(tagName)) {
				//PUMBUN_01 : 품번 01 ~ 99 (4자리 포맷으로 변경해야됨)
				pumBun = String.format("%04d",Integer.parseInt(value));
				tracking.setPumbun(pumBun);
			}
			
			if("PRD_CHK".equals(tagName)) {
				//PRD_01 : 제품감지, PRD_CHK_01 : 제품감지시 1
				//PRD_01 : 1 -> PRD_CHK01 1변경됨(오토닉스 경보에서 지정) 
				//PRD_CHK_01이 1일때 동작			
				tracking.setDevicecode(devicecode);				
				tracking.setCurLocation(curLocation);
				
				//PRD_CHK01이 1이면서(제품이 위치하며)
				if("true".equals(value)) {
					//품번이 0이 아니면
					if(!"0000".equals(pumBun)) {
						System.out.println("devicecode : "+tracking.getDevicecode());
						System.out.println("pumbun : "+tracking.getPumbun());
						System.out.println("curLocation : "+tracking.getCurLocation());
						System.out.println("value : "+value);
						//트래킹 실행
						trackingDao.ccf1Tracking01(tracking);
						//지연시간 0.3초
						Thread.sleep(300);
						
						//트래킹처리 후 PRD_CHK_01 0으로 변경
						opcDataMap.setOpcData(setDataDir+".PRD_CHK", false);						
					}
				}
			}
		}
	}
	
	//[1]투입완료: 탈지로입구 리프트에 처리품이 위치할때
	public void ccf1Tracking01() throws InterruptedException, ExecutionException {
		//Transys.TRACKING.CCF01.C01의 하위태그 조회		
		String setDataDir = "Transys.TRACKING.CCF01.C01";
		
		//호기, 위치(순서), 태그경로
		trackingDataSet("1",1,setDataDir);
	}
	
	//[2]예열장입 : 처리품이 예열실에 도착할 때
	public void ccf1Tracking02() throws InterruptedException, ExecutionException {
		//Transys.TRACKING.CCF01.C02의 하위태그 조회		
		String setDataDir = "Transys.TRACKING.CCF01.C02";
	
		//호기, 위치(순서), 태그경로
		trackingDataSet("1",2,setDataDir);
	}
	
	//[3]침탄실(1) : 침탄 처리 시작위치
	public void ccf1Tracking03() throws InterruptedException, ExecutionException {
		//Transys.TRACKING.CCF01.C02의 하위태그 조회		
		String setDataDir = "Transys.TRACKING.CCF01.C03";
	
		//호기, 위치(순서), 태그경로
		trackingDataSet("1",3,setDataDir);
	}
	
	//[4]확산실(1) : 침탄 처리 종료 및 확산 처리 시작위치
	public void ccf1Tracking04() throws InterruptedException, ExecutionException {
		//Transys.TRACKING.CCF01.C02의 하위태그 조회		
		String setDataDir = "Transys.TRACKING.CCF01.C04";
		
		//호기, 위치(순서), 태그경로
		trackingDataSet("1",4,setDataDir);
	}
	
	//[5]냉각실(1) : 확산 처리 종료 위치
	public void ccf1Tracking05() throws InterruptedException, ExecutionException{
		
		String setDataDir = "Transys.TRACKING.CCF01.C05";
		
		trackingDataSet("1",5,setDataDir);
		
	}
	
	//[6]소입1실(1) : 소입 처리 시작 위치
	public void ccf1Tracking06() throws InterruptedException, ExecutionException{
			
		String setDataDir = "Transys.TRACKING.CCF01.C06";
			
		trackingDataSet("1",6,setDataDir);
			
	}
	
	//[7]소입2 추출 : 소입 처리 종료
	public void ccf1Tracking07() throws InterruptedException, ExecutionException{
				
		String setDataDir = "Transys.TRACKING.CCF01.C07";
				
		trackingDataSet("1",7,setDataDir);
				
	}
	
	//[8]SALT장입 : SALT 처리 시작위치
	public void ccf1Tracking08() throws InterruptedException, ExecutionException{
					
		String setDataDir = "Transys.TRACKING.CCF01.C08";
					
		trackingDataSet("1",8,setDataDir);
					
	}
	
	//[8]SALT추출 : 출구 리트리버 후퇴정지
	public void ccf1Tracking09() throws InterruptedException, ExecutionException{
						
		String setDataDir = "Transys.TRACKING.CCF01.C09";
						
		trackingDataSet("1",9,setDataDir);
						
	}
	
	
	
	
	
	
	//3호기
	
	
	//4호기
}
