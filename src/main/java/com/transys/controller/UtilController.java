package com.transys.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UtilController {

	
    @RequestMapping(value= "/util/managePopup", method = RequestMethod.GET)
    public String managePopup(Model model) {
    	

        return "/util/managePopup.jsp"; // 
    }	
	
}
