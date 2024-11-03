package com.transys.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CcfController {
    @RequestMapping(value= "/ccf/ccf01_02", method = RequestMethod.GET)
    public String ccf01_02(Model model) {
        return "/ccf/ccf01_02.jsp"; // 
    }	
    @RequestMapping(value= "/ccf/ccf03_04", method = RequestMethod.GET)
    public String ccf03_04(Model model) {
        return "/ccf/ccf03_04.jsp"; // 
    }	
    @RequestMapping(value= "/ccf/05_06", method = RequestMethod.GET)
    public String ccf05_06(Model model) {
        return "/ccf/ccf05_06.jsp"; // 
    }	
    @RequestMapping(value= "/ccf/07", method = RequestMethod.GET)
    public String ccf07(Model model) {
        return "/ccf/ccf07.jsp"; // 
    }	
    
}
