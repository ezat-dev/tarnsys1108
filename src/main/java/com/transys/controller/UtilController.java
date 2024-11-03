package com.transys.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.transys.domain.Util;
import com.transys.service.UtilService;



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


}