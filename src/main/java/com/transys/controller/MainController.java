package com.transys.controller;

import java.util.concurrent.ExecutionException;

import org.eclipse.milo.opcua.sdk.client.OpcUaClient;
import org.eclipse.milo.opcua.stack.core.UaException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {
	
	public static OpcUaClient client = null;

	//설비별 출고가능신호
	public static boolean outPutChk1 = false;
	public static boolean outPutChk2 = false;
	public static boolean outPutChk3 = false;
	public static boolean outPutChk4 = false;

	//창고 입고카운트
	public static int plcCount = 0;
	
    //OPC서버 연결시작
    public static void opcStart() throws UaException, InterruptedException, ExecutionException {
		client = OpcUaClient.create("opc.tcp://192.168.1.181:5660");
			
		client.connect().get();
    }
    
    //OPC서버 연결종료
    public static void opcEnd() throws InterruptedException, ExecutionException {
		client.disconnect().get();
    }	
    
    
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		
		return "/ccf/CCF01_02.jsp";
	}
	

	
}
