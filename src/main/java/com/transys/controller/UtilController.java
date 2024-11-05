package com.transys.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.transys.domain.Util;
import com.transys.service.UtilService;

import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.json.simple.JSONObject;
import org.springframework.core.io.FileSystemResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;

@Controller
public class UtilController {
   @Autowired
    private UtilService utilService;

   
    @RequestMapping(value= "/util/lngMonth", method = RequestMethod.GET)
    public String lngMonth(Model model) {
        return "/util/lngMonth.jsp"; // 
    }   
   
    @RequestMapping(value= "/util/managePopup", method = RequestMethod.GET)
    public String managePopup(Model model) {
        return "/util/managePopup.jsp"; // 
    }   
    
    
    @RequestMapping(value= "/util/lngYear", method = RequestMethod.GET)
    public String lngYear(Model model) {
        return "/util/lngYear.jsp"; // 
    }
    @RequestMapping(value= "/util/electricYear", method = RequestMethod.GET)
    public String electricYear(Model model) {
        return "/util/ElectricYear.jsp"; // 
    }
    @RequestMapping(value= "/util/electricMonth", method = RequestMethod.GET)
    public String electricMonth(Model model) {
        return "/util/ElectricMonth.jsp"; // 
    }   
    
    
    
    @RequestMapping(value = "/util/lngYear/list", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> utilYearList(
            @RequestParam("electricYear") int electricYear  
    ) {
        System.out.println("Received request:");
        System.out.println("electricYear: " + electricYear); 

        Map<String, Object> rtnMap = new HashMap<>();

        try {
            Util util = new Util();
            util.setElectricYear(electricYear);  

            List<Util> utilYearList = utilService.utilYearList(util); 

            System.out.println("Received request:");
            System.out.println("electricYear: " + electricYear);


            rtnMap.put("status", "ok");
            rtnMap.put("data", utilYearList);
        } catch (Exception e) {
            System.out.println("Error occurred: " + e.getMessage());
            rtnMap.put("status", "error");
            rtnMap.put("message", e.getMessage());
        }

        return rtnMap;
    }
    
    @RequestMapping(value = "/util/lngMonth/list", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> utilMonthList(
            @RequestParam("lngYear") int lngYear,
            @RequestParam("lngMonth") int lngMonth,
            @RequestParam String deviceCode
    ) {
        System.out.println("Received request:");
        System.out.println("lngYear: " + lngYear); 
        System.out.println("lngMonth: " + lngMonth); 
        System.out.println("deviceCode: " + deviceCode); 
        System.out.println("-------------------");

        Map<String, Object> rtnMap = new HashMap<>();

        try {
            Util util = new Util();
            util.setLngYear(lngYear);
            util.setLngMonth(lngMonth);  
            util.setDeviceCode(deviceCode);  

            List<Util> utilMonthList = utilService.utilMonthList(util); 

            rtnMap.put("status", "ok");
            rtnMap.put("rows", utilMonthList); // 'data' 대신 'rows' 사용
        } catch (Exception e) {
            System.out.println("Error occurred: " + e.getMessage());
            rtnMap.put("status", "error");
            rtnMap.put("message", e.getMessage());
        }

        return rtnMap;
    }
    
    
    
    @RequestMapping(value = "/util/electricYear/list", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> utilElectricYearList(
            @RequestParam("electricYear") int electricYear  
    ) {
        System.out.println("Received request:");
        System.out.println("electricYear: " + electricYear); 

        Map<String, Object> rtnMap = new HashMap<>();

        try {
            Util util = new Util();
            util.setElectricYear(electricYear);  

            List<Util> utilYearList = utilService.utilElectricYearList(util); 

            System.out.println("Received request:");
            System.out.println("electricYear: " + electricYear);


            rtnMap.put("status", "ok");
            rtnMap.put("data", utilYearList);
        } catch (Exception e) {
            System.out.println("Error occurred: " + e.getMessage());
            rtnMap.put("status", "error");
            rtnMap.put("message", e.getMessage());
        }

        return rtnMap;
    }
    
    @RequestMapping(value = "/util/electricMonth/list", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> utilElectricMonthList(
            @RequestParam("lngYear") int lngYear,
            @RequestParam("lngMonth") int lngMonth,
            @RequestParam String deviceCode
    ) {
        System.out.println("Received request:");
        System.out.println("lngYear: " + lngYear); 
        System.out.println("lngMonth: " + lngMonth); 
        System.out.println("deviceCode: " + deviceCode); 
        System.out.println("-------------------");

        Map<String, Object> rtnMap = new HashMap<>();

        try {
            Util util = new Util();
            util.setLngYear(lngYear);
            util.setLngMonth(lngMonth);  
            util.setDeviceCode(deviceCode);  

            List<Util> utilMonthList = utilService.utilElectricMonthList(util); 

            rtnMap.put("status", "ok");
            rtnMap.put("rows", utilMonthList); // 'data' 대신 'rows' 사용
        } catch (Exception e) {
            System.out.println("Error occurred: " + e.getMessage());
            rtnMap.put("status", "error");
            rtnMap.put("message", e.getMessage());
        }

        return rtnMap;
    }
  
    
    

   @RequestMapping(value = "/util/electricYear/excel", method = RequestMethod.POST)
   @ResponseBody
   public JSONObject electricYearExcel(
         HttpServletRequest request,
            @RequestParam(required = false, defaultValue = "0") int electricYear
      ) throws IOException {
        JSONObject rtnObj = new JSONObject();
           
           Util util = new Util();

           util.setElectricYear(electricYear);
         
         SimpleDateFormat format = new SimpleDateFormat("yyMMdd_HHmmss");
         Date time = new Date();
         
         String now = format.format(time);
         
         FileOutputStream fos = null;
         FileInputStream fis = null;
         
         String openPath = request.getServletContext().getRealPath("/WEB-INF/resources/excels/");
         String savePath = request.getServletContext().getRealPath("/WEB-INF/resources/uploads/");
         
         List<Util> util1 = utilService.utilElectricYearList(util);
         
         System.out.println("사이즈 : "+util1.size());
         
         try {
            fis = new FileInputStream(openPath+"EZ348)트랜시스양식_전력사용량.xlsx");
            
            XSSFWorkbook workbook = new XSSFWorkbook(fis);
            FormulaEvaluator evaluator = workbook.getCreationHelper().createFormulaEvaluator();
            CellStyle style = workbook.createCellStyle();
            
            XSSFSheet sheet = workbook.getSheetAt(0);
//            System.out.println(sheet);
            Row row = null;
            Cell cell = null;
            
            for(int i=0; i<util1.size(); i++) {
                row = sheet.createRow((i + 8));

                cell = row.createCell(2); cell.setCellValue(util1.get(i).getM01());          // 1월
                cell = row.createCell(3); cell.setCellValue(util1.get(i).getM02());          // 2월
                cell = row.createCell(4); cell.setCellValue(util1.get(i).getM03());          // 3월
                cell = row.createCell(5); cell.setCellValue(util1.get(i).getM04());          // 4월
                cell = row.createCell(6); cell.setCellValue(util1.get(i).getM05());          // 5월
                cell = row.createCell(7); cell.setCellValue(util1.get(i).getM06());          // 6월
                cell = row.createCell(8); cell.setCellValue(util1.get(i).getM07());          // 7월
                cell = row.createCell(9); cell.setCellValue(util1.get(i).getM08());          // 8월
                cell = row.createCell(10); cell.setCellValue(util1.get(i).getM09());          // 9월
                cell = row.createCell(11); cell.setCellValue(util1.get(i).getM10());          // 10월
                cell = row.createCell(12); cell.setCellValue(util1.get(i).getM11());          // 11월
                cell = row.createCell(13); cell.setCellValue(util1.get(i).getM12());          // 12월
                cell = row.createCell(14); cell.setCellValue(util1.get(i).getTotal());        // 총합계
                cell = row.createCell(15); cell.setCellValue(util1.get(i).getWriteDayTime()); // 기록 날짜와 시간
            }

            
            workbook.setForceFormulaRecalculation(true);
            
            fos = new FileOutputStream(savePath+"EZ348)트랜시스양식_전력사용량_"+now+".xlsx");
            workbook.write(fos);
            workbook.close();
            fos.flush();
            
         }catch(Exception e) {
            System.out.println(e);
         }finally {
            if(fis != null) {fis.close();}
            if(fos != null) {fos.close();}
         }
         
         
         
         rtnObj.put("r_str","ok");
         rtnObj.put("filename", savePath+"EZ348)트랜시스양식_전력사용량_"+now+".xlsx");
         
         
         return rtnObj;
      
      
   }

   @RequestMapping(value = "/util/lngYear/excel", method = RequestMethod.POST)
   @ResponseBody
   public JSONObject lngYearExcel(
           HttpServletRequest request,
           @RequestParam(required = false, defaultValue = "0") int electricYear
       ) throws IOException {
           JSONObject rtnObj = new JSONObject();
           
           Util util = new Util();
           util.setElectricYear(electricYear);
           
           SimpleDateFormat format = new SimpleDateFormat("yyMMdd_HHmmss");
           Date time = new Date();
           
           String now = format.format(time);
           
           FileOutputStream fos = null;
           FileInputStream fis = null;
           
           String openPath = request.getServletContext().getRealPath("/WEB-INF/resources/excels/");
           String savePath = request.getServletContext().getRealPath("/WEB-INF/resources/uploads/");
           
           List<Util> util1 = utilService.utilYearList(util);
           
           System.out.println("사이즈 : " + util1.size());
           
           try {
               fis = new FileInputStream(openPath +"EZ348)트랜시스양식_LNG사용량.xlsx");
               
               XSSFWorkbook workbook = new XSSFWorkbook(fis);
               XSSFSheet sheet = workbook.getSheetAt(0);
               Row row = null;
               Cell cell = null;
               
               for (int i = 0; i < util1.size(); i++) {
                  
                   row = sheet.createRow((i + 8));

                   // 1월부터 12월 데이터 추가
                   cell = row.createCell(2); cell.setCellValue(util1.get(i).getM01()); // 1월
                   cell = row.createCell(3); cell.setCellValue(util1.get(i).getM02()); // 2월
                   cell = row.createCell(4); cell.setCellValue(util1.get(i).getM03()); // 3월
                   cell = row.createCell(5); cell.setCellValue(util1.get(i).getM04()); // 4월
                   cell = row.createCell(6); cell.setCellValue(util1.get(i).getM05()); // 5월
                   cell = row.createCell(7); cell.setCellValue(util1.get(i).getM06()); // 6월
                   cell = row.createCell(8); cell.setCellValue(util1.get(i).getM07()); // 7월
                   cell = row.createCell(9); cell.setCellValue(util1.get(i).getM08()); // 8월
                   cell = row.createCell(10); cell.setCellValue(util1.get(i).getM09()); // 9월
                   cell = row.createCell(11); cell.setCellValue(util1.get(i).getM10()); // 10월
                   cell = row.createCell(12); cell.setCellValue(util1.get(i).getM11()); // 11월
                   cell = row.createCell(13); cell.setCellValue(util1.get(i).getM12()); // 12월

                   // 14번 셀에 월별 합계 추가
                   double total = util1.get(i).getM01() + util1.get(i).getM02() + util1.get(i).getM03()
                                + util1.get(i).getM04() + util1.get(i).getM05() + util1.get(i).getM06()
                                + util1.get(i).getM07() + util1.get(i).getM08() + util1.get(i).getM09()
                                + util1.get(i).getM10() + util1.get(i).getM11() + util1.get(i).getM12();
                   cell = row.createCell(14); cell.setCellValue(total); // 14번 셀에 합계

           
                 
               }
         
//               Row m = sheet.createRow(3); 

               Row m = sheet.getRow(3);        
               Cell cell1 = m.createCell(12); 
               cell1.setCellValue(now);

               workbook.setForceFormulaRecalculation(true);
               
               fos = new FileOutputStream(savePath +"EZ348)트랜시스양식_LNG사용량_"+ now +".xlsx");
               workbook.write(fos);
               workbook.close();
               fos.flush();
               
           } catch (Exception e) {
               System.out.println(e);
           } finally {
               if (fis != null) { fis.close(); }
               if (fos != null) { fos.close(); }
           }

           rtnObj.put("r_str", "ok");
           rtnObj.put("filename", savePath +"EZ348)트랜시스양식_LNG사용량_"+ now +".xlsx");

           return rtnObj;
   }


}