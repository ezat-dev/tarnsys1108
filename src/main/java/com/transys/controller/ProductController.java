package com.transys.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.transys.dao.OutPutDao;
import com.transys.domain.OutPut;
import com.transys.domain.PlcWrite;
import com.transys.domain.Product;
import com.transys.service.ProductService;

@Controller
public class ProductController {

    @Autowired
    private ProductService productService;

    @Autowired
    private OutPutDao outPutDao;
    
    // 처리폼관리 페이지
    @RequestMapping(value = "/product/productList", method = RequestMethod.GET)
    public String productDetail(Model model) {
        return "/product/productList.jsp"; 
    }
    
    // 처리폼관리 진행리스트 페이지
    @RequestMapping(value = "/product/productPlayList", method = RequestMethod.GET)
    public String productPlayList(Model model) {
        return "/product/productPlayList.jsp"; 
    }
    
    // 처리폼관리 수정페이지 팝업
    @RequestMapping(value = "/product/productModify", method = RequestMethod.GET)
    public String productModify(@RequestParam(value = "dobun", required = false) String dobun, Model model) {
        if (dobun != null && !dobun.isEmpty()) {
            model.addAttribute("dobun", dobun); 
        }
        return "/product/productAdd.jsp";
    }
    
    // 처리폼관리 추가페이지 팝업
    @RequestMapping(value = "/product/productAdd", method = RequestMethod.GET)
    public String productAdd(Model model) {
        return "/product/productAdd.jsp"; 
    }
    
    
    
    
    
    // 일자별투입 List 페이지
    @RequestMapping(value = "/product/dayList", method = RequestMethod.GET)
    public String productdayList(Model model) {
        return "/product/dayList.jsp"; 
    }
    // 일자별투입 창고출고
    @RequestMapping(value = "/product/dayList/popup", method = RequestMethod.GET)
    public String productdaypopup(Model model) {
        return "/product/hogiOut.jsp"; 
    }
    
    @RequestMapping(value = "/product/dayList/list", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> workDetailList(
            @RequestParam String p_devicecode,
            @RequestParam String p_date
    ) {
        // 요청 파라미터 로그 출력
        System.out.println("Received request:");
        System.out.println("Device Code: " + p_devicecode);
        System.out.println("Date: " + p_date);

      
        Map<String, Object> rtnMap = new HashMap<>();

        try {
           
            PlcWrite plcWrite = new PlcWrite();
            plcWrite.setDevicecode(p_devicecode);
            plcWrite.setWorkday(Integer.parseInt(p_date));  // 여기서 p_date는 workday와 매핑됨

            List<PlcWrite> productList = productService.getWaitList(plcWrite);

            // 제품 리스트 크기 로그 출력
            System.out.println("Product List Size: " + productList.size());

            // 성공 시 데이터 반환
            rtnMap.put("status", "success");
            rtnMap.put("last_page", 1);
            rtnMap.put("data", productList);
        } catch (Exception e) {
            // 에러 발생 시 에러 메시지 반환
            System.out.println("Error occurred: " + e.getMessage());
            rtnMap.put("status", "error");
            rtnMap.put("message", e.getMessage());
        }

        return rtnMap;
    }
    
    
    @RequestMapping(value = "/product/productPlayList/list", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> workDetailPlayList(
            @RequestParam String p_devicecode,
            @RequestParam String p_date
    ) {
        // 요청 파라미터 로그 출력
        System.out.println("Received request:");
        System.out.println("Device Code: " + p_devicecode);
        System.out.println("Date: " + p_date);

        // 반환할 Map 생성
        Map<String, Object> rtnMap = new HashMap<>();

        // 서비스 계층을 통해 데이터를 가져옴
        try {
            // t_waitlist 테이블 도메인
            PlcWrite plcWrite = new PlcWrite();
            plcWrite.setDevicecode(p_devicecode);
            plcWrite.setWorkday(Integer.parseInt(p_date));  // 여기서 p_date는 workday와 매핑됨

            // 서비스 계층을 통해 데이터 조회
            List<PlcWrite> productList = productService.getWaitPlayList(plcWrite);

            // 제품 리스트 크기 로그 출력
            System.out.println("Product List Size: " + productList.size());

            // 성공 시 데이터 반환
            rtnMap.put("status", "success");
            rtnMap.put("last_page", 1);
            rtnMap.put("data", productList);
        } catch (Exception e) {
            // 에러 발생 시 에러 메시지 반환
            System.out.println("Error occurred: " + e.getMessage());
            rtnMap.put("status", "error");
            rtnMap.put("message", e.getMessage());
        }

        return rtnMap;
    }

    
    
    
    
    // 처리폼관리 데이터 전체 조회
    @RequestMapping(value = "/product/productList/data", method = RequestMethod.POST) 
    @ResponseBody 
    public List<Product> getProductList() {
        return productService.getProductList(); 
    }
    
    // 처리폼관리 데이터 삭제
    @RequestMapping(value = "/product/productList/delete", method = RequestMethod.POST)
    @ResponseBody
    public String deleteProduct(@RequestBody Product product) {
        productService.deleteProductByDobun(product.getDobun());
        return "OK"; 
    }

    // 처리폼관리 특정 제품 조회
    @RequestMapping(value = "/product/productModify/data", method = RequestMethod.POST)
    @ResponseBody
    public Product getProductByDobun(@RequestBody Product product) {
        return productService.getProductByDobun(product.getDobun());
    }
    
    
    
 // 처리폼관리 제품 수정
    @RequestMapping(value = "/product/productModify/data/save", method = RequestMethod.POST)
    @ResponseBody
    public ResponseEntity<Map<String, String>> updateProduct(@RequestBody Product product) {
        System.out.println("업데이트 요청 수신: " + product);
        Map<String, String> response = new HashMap<>();

        try {
            productService.updateProduct(product);
            System.out.println("제품 업데이트 성공: " + product.getDobun());
            response.put("status", "OK");
        } catch (Exception e) {
            System.out.println("업데이트 실패: " + e.getMessage());
            response.put("status", "FAIL");
            
        }
        return ResponseEntity.ok(response);
    }
    //일자별투입 리스트 추가
    @RequestMapping(value = "/product/dayList/popup/insert", method = RequestMethod.POST)
    @ResponseBody
    public ResponseEntity<String> insertOutputTab(@RequestParam("device_code") String deviceCode) {
        try {
        	
        	System.out.println("devicecode : "+deviceCode);
        	
        	OutPut outPut = new OutPut();
        	outPut.setFireno(Integer.parseInt(deviceCode));
        	
        	System.out.println("devicecode2 : "+outPut.getFireno());
        	
        	outPutDao.setOutPutSend(outPut);
            return ResponseEntity.ok("Insert successful");
        } catch (Exception e) {
            e.printStackTrace(); 
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Insert failed: " + e.getMessage());
        }
    }
    	
    	//공통설비 이동
	    @RequestMapping(value = "/product/productPlayList/Move", method = RequestMethod.POST)
	    public String updateCurLocation(@RequestParam String lotNo) {
	        productService.updateCurLocation(lotNo);
	        return "공통설비 이동 완료"; 
	    }
	 // 5일 자료 완료
	    @RequestMapping(value = "/product/productPlayList/5forcingStart", method = RequestMethod.POST)
	    public String forceCompleteOldData() {
	        productService.forceCompleteOldData();
	        return "5일 자료 완료"; 
	    }
}

