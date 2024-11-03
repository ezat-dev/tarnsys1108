package com.transys.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AlarmController {
	
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

}
