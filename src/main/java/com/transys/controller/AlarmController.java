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

import com.transys.domain.Alarm;
import com.transys.service.AlarmService;

@Controller
public class AlarmController {
	
	@Autowired
	private AlarmService alarmService;
	
	 // 알람 리스트
    @RequestMapping(value = "/alarm/alarmList", method = RequestMethod.GET)
    public String alarmList(Model model) {
        return "/alarm/alarmList.jsp"; 
    }
	 // 알람 썸
    @RequestMapping(value = "/alarm/alarmSum", method = RequestMethod.GET)
    public String alarmSum(Model model) {
        return "/alarm/alarmSum.jsp"; 
    }
	 // 알람 인포
    @RequestMapping(value = "/alarm/alarmInfo", method = RequestMethod.GET)
    public String alarmInfo(Model model) {
        return "/alarm/alarmInfo.jsp"; 
    }
    
    
    
    
    
    
    
    @RequestMapping(value = "/alarm/alarmSum/search", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> alarmSum(
            @RequestParam String alarmgroup,
            @RequestParam String sDate
    ) {
        System.out.println("Received request:");
        System.out.println("alarmgroup: " + alarmgroup);
        System.out.println("sDate: " + sDate);


        Map<String, Object> rtnMap = new HashMap<>();

        try {
            Alarm alarm = new Alarm();
            alarm.setAlarmGroup(alarmgroup);
            alarm.setSdate(sDate);
  

            List<Alarm> alarmList = alarmService.getAlarmSummary(alarm);
            
            System.out.println("Product List Size: " + alarmList.size());

            for(Alarm alarmData : alarmList) {
            	System.out.println(alarmData.getTagName());
            	System.out.println(alarmData.getTotal());
            }
            
            rtnMap.put("status", "success");
            rtnMap.put("last_page", 1);
            rtnMap.put("data", alarmList);
        } catch (Exception e) {
            System.out.println("Error occurred: " + e.getMessage());
            rtnMap.put("status", "error");
            rtnMap.put("message", e.getMessage());
        }

        return rtnMap;
    }
    
    @RequestMapping(value = "/alarm/alarmList/list", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> alarmList(
            @RequestParam String alarmgroup,
            @RequestParam String sDate,
            @RequestParam String eDate
    ) {
        System.out.println("Received request:");
        System.out.println("alarmgroup: " + alarmgroup);
        System.out.println("sDate: " + sDate);
        System.out.println("eDate: " + eDate);

        Map<String, Object> rtnMap = new HashMap<>();

        try {
            Alarm alarm = new Alarm();
            alarm.setAlarmGroup(alarmgroup);
            alarm.setSdate(sDate);
            alarm.setEdate(eDate);

            List<Alarm> alarmList = alarmService.getAlarmList(alarm);
            
            System.out.println("Product List Size: " + alarmList.size());

            for(Alarm alarmData : alarmList) {
            	System.out.println(alarmData.getTagName());
            	System.out.println(alarmData.getTotal());
            }
            
            rtnMap.put("status", "success");
            rtnMap.put("last_page", 1);
            rtnMap.put("data", alarmList);
        } catch (Exception e) {
            System.out.println("Error occurred: " + e.getMessage());
            rtnMap.put("status", "error");
            rtnMap.put("message", e.getMessage());
        }

        return rtnMap;
    }
}