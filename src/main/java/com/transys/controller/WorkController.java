package com.transys.controller;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.FormulaEvaluator;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.transys.domain.Product;
import com.transys.domain.Work;
import com.transys.service.WorkService;

@Controller
public class WorkController {

   @Autowired
   private WorkService workService;
   
   //작업일보 상세
    @RequestMapping(value= "/work/workDetail", method = RequestMethod.GET)
    public String workDetail(Model model) {       

        return "/work/workDetail.jsp"; // 
    }
    
    //작업일보 상세 조회
    @RequestMapping(value= "/work/workDetail/list", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> workDetailList(
          @RequestParam String p_devicecode,
          @RequestParam String p_date
          ) {

       Map<String, Object> rtnMap = new HashMap<String, Object>();
       Work work = new Work();
       work.setDevicecode(p_devicecode);
       work.setSearchStartDate(p_date+" 07:00");
       work.setSearchEndDate(p_date+" 06:59");
       
       List<Work> workList = workService.workDetailList(work);
       
       rtnMap.put("last_page",1);
       rtnMap.put("data", workList);
       
        return rtnMap; // 
    }

    //작업일보 상세이력
    @RequestMapping(value= "/work/workDetailDesc", method = RequestMethod.GET)
    public String workDetailDesc(Model model) {       

        return "/work/workDetailDesc.jsp"; // 
    }
    
    //작업일보 상세 조회
    @RequestMapping(value= "/work/workDetailDesc/data", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> workDetailDescData(@RequestParam String lotNo) {

       Map<String, Object> rtnMap = new HashMap<String, Object>();
       Work work = new Work();
       work.setLotno(lotNo);
       
       Work workDetailDesc = workService.workDetailDescData(work);
       
       rtnMap.put("data", workDetailDesc);
       
        return rtnMap; // 
    }

    //작업일보 편집
    @RequestMapping(value= "/work/workDetailEdit", method = RequestMethod.GET)
    public String workDetailEdit(Model model) {       

        return "/work/workDetailEdit.jsp"; // 
    }
    
    
    //작업일보 편집 제품이력 조회
    @RequestMapping(value= "/work/workDetail/productList", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> workDetailProductList() {

       Map<String, Object> rtnMap = new HashMap<String, Object>();
       
       List<Product> productList = workService.workDetailProductList();
       
       rtnMap.put("last_page",1);
       rtnMap.put("data", productList);
       
        return rtnMap; // 
    }
    
    //작업일보 편집 - 데이터 수정조회
    @RequestMapping(value= "/work/workDetail/editData", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> workDetailEditData(@RequestParam String lotNo) {

       Map<String, Object> rtnMap = new HashMap<String, Object>();
       Work work = new Work();
       work.setLotno(lotNo);
       
       Work workEditData = workService.workDetailEditData(work);
       
       rtnMap.put("data", workEditData);
       
        return rtnMap; // 
    }
    
    
    //작업일보 편집 - 데이터 수정조회
    @RequestMapping(value= "/work/workDetail/editDataSave", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> setWorkDetailEditDataSave(@ModelAttribute Work work) {

       Map<String, Object> rtnMap = new HashMap<String, Object>();
       
       workService.setWorkDetailEditDataSave(work);
       
       rtnMap.put("data", "OK");
       
        return rtnMap; // 
    }
    
    //작업일보 데이터 추가
    @RequestMapping(value= "/work/workDetailAdd", method = RequestMethod.GET)
    public String workDetailAdd(Model model) {       

        return "/work/workDetailAdd.jsp";
    }
    
    //작업일보 데이터 저장
    @RequestMapping(value= "/work/workDetail/addDataSave", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> setWorkDetailAddDataSave(@ModelAttribute Work work) {

       Map<String, Object> rtnMap = new HashMap<String, Object>();
       
       if(work.getPumcode() == null || work.getPumcode().length() == 0) {
          rtnMap.put("data", "처리품코드를 입력하세요.");
          return rtnMap;
       }
       
       if(work.getCnt() == 0) {
          rtnMap.put("data", "적재수량을 입력하세요.");
          return rtnMap;
       }
       
       if(work.getCycleno() == 0) {
          rtnMap.put("data", "사이클 NO를 입력하세요.");
          return rtnMap;
       }
       
       if(work.getAgitate_rpm() == 0) {
          rtnMap.put("data", "아지테이터 RPM을 입력하세요.");
          return rtnMap;
       }
       
       if(work.getDevicecode().length() == 0) {
          rtnMap.put("data", "침탄로를 입력하세요.");
          return rtnMap;
       }
       
       if(work.getCommon_device().length() == 0) {
          rtnMap.put("data", "공통로를 입력하세요.");
          return rtnMap;
       }
       
       workService.setWorkDetailAddDataSave(work);
       rtnMap.put("data", "OK");
       
        return rtnMap; // 
    }    
    
    //작업일보 데이터 삭제
    @RequestMapping(value= "/work/workDetail/delete", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> setWorkDetailDelete(@RequestParam String lotNo) {
       Map<String, Object> rtnMap = new HashMap<String, Object>();
       
       Work work = new Work();
       work.setLotno(lotNo);
       
       workService.setWorkDetailDelete(work);
       
       return rtnMap;
    }
    
    //작업이력 SALT추출
    @RequestMapping(value= "/work/workDetail/endSalt", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> setWorkDetailEndSalt(@RequestParam String lotNo) {
       Map<String, Object> rtnMap = new HashMap<String, Object>();
       
       Work work = new Work();
       work.setLotno(lotNo);
       
       workService.setWorkDetailEndSalt(work);
       rtnMap.put("data","SALT추출시간이 처리되었습니다.");
       
       return rtnMap;
    }
    
    //작업이력 전체완료
    @RequestMapping(value= "/work/workDetail/endTime", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> setWorkDetailEndTime(@RequestParam String lotNo) {
       Map<String, Object> rtnMap = new HashMap<String, Object>();
       
       Work work = new Work();
       work.setLotno(lotNo);
       
       //로트번호로 조회했을 때
       //SALT추출이 처리되어있지 않고, 추출완료가 처리되어있을때만 실행
       Work tWork = workService.getWorkDetailEndTime(work);
       
       if(tWork.getEndsalt().length() == 0) {
          rtnMap.put("data","SALT추출시간 처리 후 진행해주십시오!");
          return rtnMap;
       }
       
       if(tWork.getEndtime().length() != 0) {
          rtnMap.put("data","완료시간 처리 후 진행해주십시오!");
          return rtnMap;
       }
       
       rtnMap.put("data","완료시간이 처리되었습니다.");
       workService.setWorkDetailEndTime(work);
       
       return rtnMap;
    }
    
    //작업이력 SALT추출
    @RequestMapping(value= "/work/workDetail/forcingStart", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> setWorkDetailForcingStart(@RequestParam String lotNo, @RequestParam String pumbun) {
       Map<String, Object> rtnMap = new HashMap<String, Object>();
       System.out.println(lotNo);
       System.out.println(lotNo.substring(8,9));
       Work work = new Work();
       work.setDevicecode(lotNo.substring(8,9));
       work.setPumbun(pumbun);
       
       workService.setWorkDetailForcingStart(work);
       rtnMap.put("data","강제투입이 처리되었습니다.");
       
       return rtnMap;
    }
    
    //작업이력 SALT추출
    @RequestMapping(value= "/work/workDetail/forcingEnd", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> setWorkDetailForcingEnd(@RequestParam String lotNo) {
       Map<String, Object> rtnMap = new HashMap<String, Object>();
       
       Work work = new Work();
       work.setLotno(lotNo);
       
       workService.setWorkDetailForcingEnd(work);
       rtnMap.put("data","강제완료가 처리되었습니다.");
       
       return rtnMap;
    }
        
    @RequestMapping(value = "/work/workDay", method = RequestMethod.GET)
    public String worknormalPopup(Model model) {        
        return "/work/workDay.jsp"; 
    }
    @RequestMapping(value = "/work/workMonth", method = RequestMethod.GET)
    public String worknormalMonthPopup(Model model) {        
        return "/work/workMonth.jsp"; 
    }
    @RequestMapping(value = "/work/workYear", method = RequestMethod.GET)
    public String worknormalYearPopup(Model model) {        
        return "/work/workYear.jsp"; 
    }
    @RequestMapping(value = "/work/workDay/list", method = RequestMethod.POST)
    @ResponseBody
    public List<Work> workDayList(@RequestParam String date,
                                     @RequestParam String placename) {
        // 수신된 값 출력
        System.out.println("수신된 날짜: " + date);
        System.out.println("수신된 설비명: " + placename);

        Work work = new Work();
        work.setDevicecode(placename);
        // 날짜 값을 Work 객체에 설정
        work.setSearchStartDate(date + " 07:00");
        work.setSearchEndDate(date + " 06:59");

        return workService.workDayList(work);
    }
    @RequestMapping(value = "/work/workMonth/list", method = RequestMethod.POST)
    @ResponseBody
    public List<Work> workMonthList(@RequestParam String date,
                                     @RequestParam String placename) {
        // 수신된 값 출력
        System.out.println("수신된 날짜: " + date);
        System.out.println("수신된 설비명: " + placename);

        Work work = new Work();
        work.setDevicecode(placename);
        // 날짜 값을 Work 객체에 설정
        work.setKeymonth(date.substring(0,7).replace("-", ""));


        return workService.workMonthList(work);
    }
    
    
    @RequestMapping(value = "/work/workYear/list", method = RequestMethod.POST)
    @ResponseBody
    public List<Work> workYearList(@RequestParam String date,
                                     @RequestParam String placename) {
        // 수신된 값 출력
        System.out.println("수신된 날짜: " + date);
        System.out.println("수신된 설비명: " + placename);

        Work work = new Work();
        work.setDevicecode(placename);
        // 날짜 값을 Work 객체에 설정
        work.setKeyyear(date);
 

        return workService.workYearList(work);
    }

    
    //작업일보 상세 조회
    @RequestMapping(value= "/work/workDetail/excelDownload", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> workDetailExcelDownload(
          @RequestParam String p_devicecode,
          @RequestParam String p_date,
          HttpServletRequest request
          ) throws IOException {

       Map<String, Object> rtnMap = new HashMap<String, Object>();
       Work work = new Work();
       work.setDevicecode(p_devicecode);
       work.setSearchStartDate(p_date+" 07:00");
       work.setSearchEndDate(p_date+" 06:59");
		
       SimpleDateFormat format = new SimpleDateFormat("yyMMdd_HHmmss");
       Date time = new Date();
		
       String now = format.format(time);
		
       FileOutputStream fos = null;
       FileInputStream fis = null;
       String openPath = "D:/uploads/excelFile/workDetail/";
       String savePath = request.getServletContext().getRealPath("/WEB-INF/resources/uploads/");
//       String filePath = "/fileUploads/excelFile/workDetail/";       
       
       //작업일보 상세는 /fileUploads/excelFile/workDetail
       
       List<Work> workList = workService.workDetailList(work);

       try {
    	   fis = new FileInputStream(openPath+"workDetail.xlsx");
    	   
    	   XSSFWorkbook workbook = new XSSFWorkbook(fis);
    	   FormulaEvaluator evaluator = workbook.getCreationHelper().createFormulaEvaluator();
    	   CellStyle style = workbook.createCellStyle();
			
    	   XSSFSheet sheet = workbook.getSheetAt(0);
    	   
    	   Row row = null;
    	   Cell cell = null;
    	   
    	   //출력일자 : M4
    	   row = sheet.createRow(3);
    	   cell = row.createCell(10); cell.setCellValue(123);
    	   
    	   //설비코드 : D5
    	   row = sheet.createRow(4);
    	   cell = row.createCell(10); cell.setCellValue(123);
    	   
    	   //조회년도 : D6
    	   
    	   //데이터 수 : D7
    	   
    	   //데이터 B10부터
    	   for(int i=0; i<workList.size(); i++) {
    		   row = sheet.createRow((i+9));
    		   cell = row.createCell(1); cell.setCellValue(i);
    		   cell = row.createCell(2); cell.setCellValue(workList.get(i).getDevicecode());
    	   }
    	   
    	   workbook.setForceFormulaRecalculation(true);
    	   
    	   fos = new FileOutputStream(savePath+now+"_작업일보상세.xlsx");
    	   workbook.write(fos);
    	   workbook.close();
    	   fos.flush();
    	   
       }catch(Exception e){
    	   e.printStackTrace();
       }finally {
    	   if(fis != null) {fis.close();}
    	   if(fos != null) {fos.close();}
       }
       
       rtnMap.put("data",savePath+now+"_작업일보상세.xlsx");
       
       return rtnMap; // 
    }
 
}
