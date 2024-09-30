package com.transys.util;

import java.util.HashMap;
import java.util.Map;

public class ActionMap {

	Map<String, Object> actionMap = new HashMap<String, Object>();
	
	
	public String getReturnAction(String tagName) {
		String result = "";
		
		int index = tagName.lastIndexOf("-");

		String text = tagName.substring(0, index);
		
//		result = actionMap.get(text).toString();

		if(text.contains("alarm")) {
			result = "c";
		}else if(text.contains("yello-left")) {
			result = "b";
		}else if(text.contains("yello-right")) {
			result = "b";
		}else {
			//v는 .val포함
			result = "v";
		}
		
		
		return result;
		
	}	
	
	public String getReturnAction(Map<String, Object> tagInfo) {
		String result = "";
		
		String tagName = tagInfo.get("tagName").toString();
		String tagType = tagInfo.get("tagType").toString();
		
		int index = tagName.lastIndexOf("-");

		String text = tagName.substring(0, index);
		
		if("analog".equals(tagType)){
			result = "value";
		}else{
			if(text.contains("io")){
				result = "red"; 
			}else if(text.contains("alarm")){
				result = "c";
			}else if(text.contains("auto")) {
				result = "c";
			}else if(text.contains("data")) {
				result = "c";
			}else if(text.contains("sag")) {
				result = "cv";
			}else if(text.contains("yello-left") || text.contains("yello-right") || 
					text.contains("green-up") || text.contains("green-down")){
				result = "b";
			}else{
				result = "v"; // v는 .val 포함
			}
		}		
		return result;
		
	}	
	
	
}
