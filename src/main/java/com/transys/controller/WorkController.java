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
    	
//    	System.out.println("p_devicecode : "+p_devicecode);
//    	System.out.println(p_date);
    	
    	List<Work> workList = workService.workDetailList(work);

//    	System.out.println(workList.size());
    	
    	rtnMap.put("last_page",1);
    	rtnMap.put("data", workList);
    	
        return rtnMap; // 
    }
    
}
