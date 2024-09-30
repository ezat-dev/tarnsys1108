<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CCF1</title>
<jsp:include page="../include/header.jsp"/>
<style>

img{
	-webkit-perspective: 1;
}


.over{
	background-color:#FF00FF !important;
}

	
.box{
	text-align: center;
}

.dn {color: hotpink}

	div > button{
		width: 160px;
		height: 35px;
		margin-left: 5px;
		border: 1px solid black; 
		color: firebrick;
		font-size:14pt;
		cursor:pointer;
	}
	
		
	div > button:hover {     
		background: firebrick;
		border: 1px solid firebrick;
		color: white; 
	}

/* body{
	background: #a1a1a1;
} */

</style>
</head>

<body style="background-color:#d9d9d4">
	<div id="top_body2">

<div class="top container-fluid">
		<div class="top row">		

			<!-- CCF01 -->
			<div>
				<span
				style="z-index:19998; position:fixed; left:160px; top:60px; font-weight:700; font-size:3em; text-align:left;
					width:600px; cursor:pointer;">CCF #01</span>
				<div class="hogi" style="position: fixed; top: 75px;left: 340px; z-index:20000;"> <button id="hogi1_out" type="button"><b>1호기 출고요청</b></button> </div>
			</div>
			
			<!-- 전력량 -->
			<!-- <div style="z-index:19998; position: fixed; background-color: #646464; width: 130px; height: 45px; left:200px; top:305px;  margin-left: 3px; text-align: center; color: white; font-weight: 700;">
				전력 사용량

				<span class="top control-label"
					style="z-index:19998; position: fixed; left: 220px; top:325px; font-weight: 700; color: yellow; background-color: #323232; text-align: right; width: 50px; height: 20px;"
					id="top_byun_up">0</span>
				<span class="top control-label"
				style="z-index:19998; position: fixed; left: 270px; top:325px; font-weight: 700; color: white; background-color: #323232; text-align: right; height: 20px; font-size: 13px;">&nbsp;
				[ KWH ]</span>
				
			</div> -->
			
			<!-- 자동/수동 -->
			<div class="top jo_state" id="top_jo_state_auto"
			style="z-index:19998; position: fixed; background-color: #54c454; width: 130px; left:200px; top:185px;  margin-left: 3px; text-align: center; color: white; font-weight: 700;">
				자동 조깅중
			</div>
			<div class="top jo_state" id="top_jo_state_man"
			style="z-index:19998; position: fixed; background-color: #ff3335; width: 130px; left:200px; top:185px;  margin-left: 3px; text-align: center; color: white; font-weight: 700;">
				수동 조깅중
			</div>
			
			
			<!-- 이미지 -->
			<div
			style="z-index:19998; position:fixed; left:155px; top:50px; font-weight:700; font-size:14pt; text-align:center;
				color:white; cursor:pointer;">
			<img src="img/CCF_TRAN_1610(4).png" width="1595px" height="350px"/></div>	
			

			<!-- 1 -->
			<div class="top box1" onclick="getPopupDetail_top(1);"
			style="z-index:19998; position:fixed; left:168px; top:227px; font-weight:700; font-size:14pt; text-align:center;
				color:white; cursor:pointer;">
			<img src="img/LTF_box_short3.png" width="45px" /></div>	
					
			<span class="top box_lno box1" onclick="getPopupDetail_top(1);"
			style="z-index:19998; position: fixed; left: 170px; top:225px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			4</span>
			<span class="top box_cno box1" onclick="getPopupDetail_top(1);"
			style="z-index:19998; position: fixed; left: 198px; top:225px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
			<span class="top box_no1 box1" onclick="getPopupDetail_top(1);"
			style="z-index:19998; position: fixed; left: 183px; top:235px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
			
			<!-- 1컨베어 -->
			<!-- 좌 -->
			<div class="top con02_off"
			style="z-index:19998; position:fixed; left:161px; top:271px; font-weight:700; font-size:14pt; text-align:center;
				color:white;">
			<img src="img/컨베어off.png" width="12px;"/></div>	
			
			<div class="top con02"
			style="z-index:19998; position:fixed; left:161px; top:271px; font-weight:700; font-size:14pt; text-align:center;
				color:white;">
			<img src="img/컨베어.png" width="12px;"/></div>	
			
			<!-- 우 -->
			<div class="top con02_off"
			style="z-index:19998; position:fixed; left:200px; top:271px; font-weight:700; font-size:14pt; text-align:center;
				color:white;">
			<img src="img/컨베어off.png" width="12px;"/></div>	
			
			<div class="top con02"
			style="z-index:19998; position:fixed; left:200px; top:271px; font-weight:700; font-size:14pt; text-align:center;
				color:white;">
			<img src="img/컨베어.png" width="12px;"/></div>		
							
	<!-- 		<div class="top "  
			style="z-index:19998; position:fixed; left:235px; top:515px; text-align:center; cursor:pointer;">
			<img src="img/화살표_왼_R.png" width="35px"/></div>
			
			<div class="top "  
			style="z-index:19998; position:fixed; left:235px; top:515px; text-align:center; cursor:pointer;">
			<img src="img/화살표_왼_y.png" width="35px"/></div>
			
			<div class="top "  
			style="z-index:19998; position:fixed; left:295px; top:515px; text-align:center; cursor:pointer;">
			<img src="img/화살표_오_R.png" width="35px"/></div>
			
			<div class="top "  
			style="z-index:19998; position:fixed; left:295px; top:515px; text-align:center; cursor:pointer;">
			<img src="img/화살표_오_y.png" width="35px"/></div> -->
			
			<!-- 2 -->
			<div class="top box2" onclick="getPopupDetail_top(2);"
			style="z-index:19998; position:fixed; left:215px; top:223px; font-weight:700; font-size:14pt; text-align:center;
				color:white; cursor:pointer;">
			<img src="img/LTF_box_short3.png" width="45px" /></div>	
						
			<span class="top box_lno box2" onclick="getPopupDetail_top(2);"
			style="z-index:19998; position: fixed; left: 218px; top:219px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			4</span>
			<span class="top box_cno box2" onclick="getPopupDetail_top(2);"
			style="z-index:19998; position: fixed; left: 245px; top:219px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
			<span class="top box_no2 box2" onclick="getPopupDetail_top(2);"
			style="z-index:19998; position: fixed; left: 230px; top:239px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
			
			<!-- 2컨베어 -->
			<!-- 좌 -->
			<div class="top con03_off"
			style="z-index:19998; position:fixed; left:210px; top:265px; font-weight:700; font-size:14pt; text-align:center;
				color:white;">
			<img src="img/컨베어off.png" width="12px;"/></div>	
			
			<div class="top con03"
			style="z-index:19998; position:fixed; left:210px; top:265px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어.png" width="12px;"/></div>	
			
			<!-- 우 -->
			<div class="top con03_off"
			style="z-index:19998; position:fixed; left:246px; top:265px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어off.png" width="12px;"/></div>	
			
			<div class="top con03"
			style="z-index:19998; position:fixed; left:246px; top:265px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어.png" width="12px;"/></div>		
			
							
			<!-- 3 -->	
			<div class="top box3" onclick="getPopupDetail_top(3);"
			style="z-index:19998; position:fixed; left:265px; top:223px; font-weight:700; font-size:14pt; text-align:center;
				color:white; cursor:pointer;">
			<img src="img/LTF_box_short3.png" width="45px" /></div>	
						
			<span class="top box3 box_lno" onclick="getPopupDetail_top(3);"
			style="z-index:19998; position: fixed; left: 268px; top:219px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			4</span>
			<span class="top box3 box_cno" onclick="getPopupDetail_top(3);"
			style="z-index:19998; position: fixed; left: 295px; top:219px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
			<span class="top box3 box_no3" onclick="getPopupDetail_top(3);"
			style="z-index:19998; position: fixed; left: 280px; top:239px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
			
			<!-- 3컨베어 -->
			<!-- 좌 -->
			<div class="top con04_off"
			style="z-index:19998; position:fixed; left:260px; top:265px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어off.png" width="12px;"/></div>	
			
			<div class="top con04"
			style="z-index:19998; position:fixed; left:260px; top:265px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어.png" width="12px;"/></div>	
			
			<!-- 우 -->
			<div class="top con04_off"
			style="z-index:19998; position:fixed; left:296px; top:265px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어off.png" width="12px;"/></div>	
			
			<div class="top con04"
			style="z-index:19998; position:fixed; left:296px; top:265px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어.png" width="12px;"/></div>		
			
			
			<!-- 4 -->	
			<div class="top box4" onclick="getPopupDetail_top(4);"
			style="z-index:19998; position:fixed; left:315px; top:223px; font-weight:700; font-size:14pt; text-align:center;
				color:white; cursor:pointer;">
			<img src="img/LTF_box_short3.png" width="45px" /></div>	
						
			<span class="top box4 box_lno" onclick="getPopupDetail_top(4);"
			style="z-index:19998; position: fixed; left: 318px; top:219px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			4</span>
			<span class="top box4 box_cno" onclick="getPopupDetail_top(4);"
			style="z-index:19998; position: fixed; left: 345px; top:219px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
			<span class="top box4 box_no4" onclick="getPopupDetail_top(4);"
			style="z-index:19998; position: fixed; left: 330px; top:239px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
			
			<!-- 4컨베어 -->
			<!-- 좌 -->
			<div class="top con05_off"
			style="z-index:19998; position:fixed; left:310px; top:265px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어off.png" width="12px;"/></div>	
			
			<div class="top con05"
			style="z-index:19998; position:fixed; left:310px; top:265px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어.png" width="12px;"/></div>	
			
			<!-- 우 -->
			<div class="top con05_off"
			style="z-index:19998; position:fixed; left:346px; top:265px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어off.png" width="12px;"/></div>	
			
			<div class="top con05"
			style="z-index:19998; position:fixed; left:346px; top:265px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어.png" width="12px;"/></div>		
			
				
			<div class="top s_fdoor"  id="top_s_fdoor_r"
			style="z-index:19998; position:fixed; left:365px; top:145px; text-align:center; ">
			<img src="img/10.png" width="14px"/></div>
			
			<div class="top s_r_state"  id="top_s_r_state_g"
			style="z-index:19998; position:fixed; left:320px; top:270px; text-align:center; ">
			<img src="img/녹색바1.png" width="80px"/></div>
			
			<div class="top s_r_state"  id="top_s_r_state_r"
			style="z-index:19998; position:fixed; left:380px; top:270px; text-align:center; ">
			<img src="img/적색바2.png" width="80px"/></div>
			
			<div class="top s_fdoor"  id="top_s_fdoor_g"
			style="z-index:19998; position:fixed; left:365px; top:185px; text-align:center; ">
			<img src="img/09.png" width="15px" height="100px"/></div>
			
			<!-- 5 -->
			<div class="top box5" onclick="getPopupDetail_top(5);"
			style="z-index:19998; position:fixed; left:396px; top:228px; font-weight:700; font-size:14pt; text-align:center;
				color:white; cursor:pointer;">
			<img src="img/LTF_box_short3.png" width="45px" /></div>	
						
			<span class="top box5 box_lno" onclick="getPopupDetail_top(5);"
			style="z-index:19998; position: fixed; left: 399px; top:225px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			4</span>
			<span class="top box5 box_cno" onclick="getPopupDetail_top(5);"
			style="z-index:19998; position: fixed; left: 426px; top:225px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
			<span class="top box5 box_no5" onclick="getPopupDetail_top(5);"
			style="z-index:19998; position: fixed; left: 411px; top:245px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
				
			<div
			style="z-index:19998; position:fixed; left:412px; top: 171px; text-align:center; ">
			<img src="img/21.FAN_RUN_고정기둥.png"/></div>
				
			<div class="top s_fan"  id="top_s_fan_run"
			style="z-index:19998; position:fixed; left:395px; top:186px; text-align:center; ">
			<img src="img/21.FAN_RUN_수평이동.png" width="50px"/></div>
				
			<div class="top s_fan"  id="top_s_fan00"
			style="z-index:19998; position:fixed; left:395px; top:115px; text-align:center; ">
			<img src="img/팬모터회1.png" width="50px"/></div>
			
			<!-- <div class="top s_fan"  id="top_s_fan01"
			style="z-index:19998; position:fixed; left:395px; top:270px; text-align:center; cursor:pointer;">
			<img src="img/팬모터노1.png" width="50px"/></div> -->
			
			<div class="top s_fan"  id="top_s_fan02"
			style="z-index:19998; position:fixed; left:395px; top:115px; text-align:center; ">
			<img src="img/팬모터빨1.png" width="50px"/></div>
			
			<div class="top s_fan"  id="top_s_fan03"
			style="z-index:19998; position:fixed; left:395px; top:115px; text-align:center; ">
			<img src="img/팬모터초1.png" width="50px"/></div>
			
			<div class="top s_edoor"  id="top_s_edoor_r"
			style="z-index:19998; position:fixed; left:460px; top:145px; text-align:center; ">
			<img src="img/10.png" width="14px"/></div>
			
			<div class="top s_edoor"  id="top_s_edoor_g"
			style="z-index:19998; position:fixed; left:460px; top:185px; text-align:center; ">
			<img src="img/09.png" width="15px" height="100px"/></div>
			
<!-- 			<div class="top "  
			style="z-index:19998; position:fixed; left:539px; top:358px; text-align:center; ">
			<img src="img/02.png" width="45px"/></div>
			
			<div class="top "  
			style="z-index:19998; position:fixed; left:539px; top:358px; text-align:center; ">
			<img src="img/02(1).png" width="45px"/></div>
			 -->
			
			<div class="top p_fdoor"  id="top_p_fdoor_r"
			style="z-index:19998; position:fixed; left:525px; top:135px; text-align:center; ">
			<img src="img/10.png" width="14px"/></div>
			
			<div class="top p_fdoor"  id="top_p_fdoor_g"
			style="z-index:19998; position:fixed; left:525px; top:185px; text-align:center; ">
			<img src="img/09.png" width="15px" height="100px"/></div>
			 
			<!-- 6 -->
			<div class="top box6" onclick="getPopupDetail_top(6);"
			style="z-index:19998; position:fixed; left:478px; top:230px; font-weight:700; font-size:14pt; text-align:center;
				color:white; cursor:pointer;">
			<img src="img/LTF_box_short3.png" width="45px" /></div>	
						
			<span class="top box6 box_lno" onclick="getPopupDetail_top(6);"
			style="z-index:19998; position: fixed; left: 480px; top:225px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			4</span>
			<span class="top box6 box_cno" onclick="getPopupDetail_top(6);"
			style="z-index:19998; position: fixed; left: 508px; top:225px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
			<span class="top box6 box_no6" onclick="getPopupDetail_top(6);"
			style="z-index:19998; position: fixed; left: 494px; top:250px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
					
			<!-- 5컨베어(BOX 6) -->
			<!-- 좌 -->
			<div class="top con06_off"
			style="z-index:19998; position:fixed; left:475px; top:270px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어off.png" width="12px;"/></div>	
			
			<div class="top con06"
			style="z-index:19998; position:fixed; left:475px; top:270px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어.png" width="12px;"/></div>	
			
			<!-- 우 -->
			<div class="top con06_off"
			style="z-index:19998; position:fixed; left:512px; top:270px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어off.png" width="12px;"/></div>	
			
			<div class="top con06"
			style="z-index:19998; position:fixed; left:512px; top:270px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어.png" width="12px;"/></div>		
			
				
			<!-- <div class="top "  
			style="z-index:19998; position:fixed; left:595px; top:345px; text-align:center; ">
			<img src="img/04.png" width="65px"/></div>
			
			<div class="top "  
			style="z-index:19998; position:fixed; left:595px; top:345px; text-align:center; ">
			<img src="img/04(1).png" width="65px"/></div> -->
			
			<!-- 7 -->
			<div class="top box7" onclick="getPopupDetail_top(7);"
			style="z-index:19998; position:fixed; left:553px; top:240px; font-weight:700; font-size:14pt; text-align:center;
				color:white; cursor:pointer;">
			<img src="img/LTF_box_short3.png" width="45px" /></div>	
						
			<span class="top box7 box_lno" onclick="getPopupDetail_top(7);"
			style="z-index:19998; position: fixed; left: 555px; top:235px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			4</span>
			<span class="top box7 box_cno" onclick="getPopupDetail_top(7);"
			style="z-index:19998; position: fixed; left: 583px; top:235px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
			<span class="top box7 box_no7" onclick="getPopupDetail_top(7);"
			style="z-index:19998; position: fixed; left: 569px; top:260px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
					
			<!-- 6컨베어(Box 7) -->
			<!-- 좌 -->
			<div class="top con07_off"
			style="z-index:19998; position:fixed; left:548px; top:283px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어off.png" width="12px;"/></div>	
			
			<div class="top con07"
			style="z-index:19998; position:fixed; left:548px; top:283px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어.png" width="12px;"/></div>	
			
			<!-- 우 -->
			<div class="top con07_off"
			style="z-index:19998; position:fixed; left:588px; top:283px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어off.png" width="12px;"/></div>	
			
			<div class="top con07"
			style="z-index:19998; position:fixed; left:588px; top:283px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어.png" width="12px;"/></div>		
			
				
			<div
			style="z-index:19998; position:fixed; left:567px; top: 163px; text-align:center; ">
			<img src="img/21.FAN_RUN_고정기둥.png"/></div>
				
			<div class="top p_fan" id="top_p_fan_run"
			style="z-index:19998; position:fixed; left:550px; top:176px; text-align:center; ">
			<img src="img/21.FAN_RUN_수평이동.png" width="50px"/></div>
			
			<div class="top p_fan"  id="top_p_fan00"
			style="z-index:19998; position:fixed; left:550px; top:107px; text-align:center; ">
			<img src="img/팬모터회1.png" width="50px"/></div>
			
			<!-- <div class="top p_fan"  id="top_p_fan01"
			style="z-index:19998; position:fixed; left:550px; top:262px; text-align:center; ">
			<img src="img/팬모터노1.png" width="50px"/></div> -->
			
			<div class="top p_fan"  id="top_p_fan02"
			style="z-index:19998; position:fixed; left:550px; top:107px; text-align:center; ">
			<img src="img/팬모터빨1.png" width="50px"/></div>
			
			<div class="top p_fan"  id="top_p_fan03"
			style="z-index:19998; position:fixed; left:550px; top:107px; text-align:center; ">
			<img src="img/팬모터초1.png" width="50px"/></div>
			
			
			<div class="top p_roller"  id="top_p_roller_rl"
			style="z-index:19998; position:fixed; left:540px; top:325px; text-align:center; ">
			<img src="img/화살표_왼_R.png" width="35px"/></div>
			
			<div class="top p_roller"  id="top_p_roller_l"
			style="z-index:19998; position:fixed; left:540px; top:325px; text-align:center; ">
			<img src="img/화살표_왼_y.png" width="35px"/></div>
			
			<div class="top p_roller" id="top_p_roller_rr"
			style="z-index:19998; position:fixed; left:580px; top:325px; text-align:center; ">
			<img src="img/화살표_오_R.png" width="35px"/></div>
			
			<div class="top p_roller"  id="top_p_roller_r"
			style="z-index:19998; position:fixed; left:580px; top:325px; text-align:center; ">
			<img src="img/화살표_오_y.png" width="35px"/></div>
			
			<div class="top p_jo_state" id="top_p_jo_state_a"
			 style="z-index:19998; position: fixed; background-color: #54c454; width: 70px; left:537px; top:355px;  margin-left: 3px; text-align: center; color: black; font-size: 14px; font-weight: 700;">
				자동 조깅
			</div>
			<div class="top p_jo_state" id="top_p_jo_state_m"
			 style="z-index:19998; position: fixed; background-color: #ff3335; width: 70px; left:537px; top:355px;  margin-left: 3px; text-align: center; color: black; font-size: 14px; font-weight: 700;">
				수동 조깅
			</div>
			
			<!-- 리프터 -->
			<div class="top lift01_dn" id=lift01_dn
			 style="z-index:19998; position: fixed; background-color: #54c454; width: 70px; left:502px; top:300px;  margin-left: 3px; text-align: center; color: black; font-size: 12px; font-weight: 700;">
				리프터 아래
			</div>
			<div class="top lift01_up" id=lift01_up
			 style="z-index:19998; position: fixed; background-color: #54c454; width: 70px; left:502px; top:300px;  margin-left: 3px; text-align: center; color: black; font-size: 14px; font-weight: 700;">
				리프터 위
			</div>
			
			<div class="top p_edoor"  id="top_p_edoor_r"
			style="z-index:19998; position:fixed; left:615px; top:135px; text-align:center; ">
			<img src="img/10.png" width="14px"/></div>
			
			<div class="top p_edoor"  id="top_p_edoor_g"
			style="z-index:19998; position:fixed; left:615px; top:185px; text-align:center; ">
			<img src="img/09.png" width="15px" height="100px"/></div>
			
			<!-- 8-1 -->
			<div class="top box8" onclick="getPopupDetail_top(8);"
			style="z-index:19998; position:fixed; left:639px; top:240px; font-weight:700; font-size:14pt; text-align:center;
				color:white; cursor:pointer;">
			<img src="img/LTF_box_short3.png" width="45px" /></div>	
						
			<span class="top box8 box_lno" onclick="getPopupDetail_top(8);"
			style="z-index:19998; position: fixed; left: 641px; top:238px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			4</span>
			<span class="top box8 box_cno" onclick="getPopupDetail_top(8);"
			style="z-index:19998; position: fixed; left: 669px; top:238px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
			<span class="top box8 box_no8" onclick="getPopupDetail_top(8);"
			style="z-index:19998; position: fixed; left: 655px; top:255px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
					
			<!-- 7컨베어( Box8 ) -->
			<!-- 좌 -->
			<div class="top con08_off"
			style="z-index:19998; position:fixed; left:636px; top:283px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어off.png" width="12px;"/></div>	
			
			<div class="top con08"
			style="z-index:19998; position:fixed; left:636px; top:283px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어.png" width="12px;"/></div>	
			
				
			<!-- 9-2 -->
			<div class="top box9" onclick="getPopupDetail_top(9);"
			style="z-index:19998; position:fixed; left:683px; top:240px; font-weight:700; font-size:14pt; text-align:center;
				color:white; cursor:pointer;">
			<img src="img/LTF_box_short3.png" width="45px" /></div>	
						
			<span class="top box9 box_lno" onclick="getPopupDetail_top(9);"
			style="z-index:19998; position: fixed; left: 685px; top:238px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			4</span>
			<span class="top box9 box_cno" onclick="getPopupDetail_top(9);"
			style="z-index:19998; position: fixed; left: 713px; top:238px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
			<span class="top box9 box_no9" onclick="getPopupDetail_top(9);"
			style="z-index:19998; position: fixed; left: 698px; top:255px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
			
			<!-- 클러치 좌 -->
			<div class="top con08_off"
			style="z-index:19998; position:fixed; left:667px; top:283px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어off.png" width="12px;"/></div>	
			
			<div class="top con08"
			style="z-index:19998; position:fixed; left:667px; top:283px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어.png" width="12px;"/></div>		
			
			<div class="top cl01_off" id="top_cl01_off"
			 style="z-index:19998; position: fixed; background-color: #ff3335; width: 70px; left:645px; top:300px;  margin-left: 3px; text-align: center; color: black; font-size: 12px; font-weight: 700;">
				클러치 OFF
			</div>
			<div class="top cl01" id="top_cl01_on"
			 style="z-index:19998; position: fixed; background-color: #54c454; width: 70px; left:645px; top:300px;  margin-left: 3px; text-align: center; color: black; font-size: 14px; font-weight: 700;">
				클러치 ON
			</div>
			
			<!-- 클러치 우 -->
			<div class="top con09_off"
			style="z-index:19998; position:fixed; left:683px; top:283px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어off.png" width="12px;"/></div>	
			
			<div class="top con09"
			style="z-index:19998; position:fixed; left:683px; top:283px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어.png" width="12px;"/></div>		
			
				
			<!-- 10-3 -->
			<div class="top box10" onclick="getPopupDetail_top(10);"
			style="z-index:19998; position:fixed; left:727px; top:240px; font-weight:700; font-size:14pt; text-align:center;
				color:white; cursor:pointer;">
			<img src="img/LTF_box_short3.png" width="45px" /></div>	
						
			<span class="top box10 box_lno" onclick="getPopupDetail_top(10);"
			style="z-index:19998; position: fixed; left: 729px; top:238px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			4</span>
			<span class="top box10 box_cno" onclick="getPopupDetail_top(10);"
			style="z-index:19998; position: fixed; left: 757px; top:238px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
			<span class="top box10 box_no10" onclick="getPopupDetail_top(10);"
			style="z-index:19998; position: fixed; left: 743px; top:255px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
				
			<!-- 11-4 -->
			<div class="top box11" onclick="getPopupDetail_top(11);"
			style="z-index:19998; position:fixed; left:770px; top:240px; font-weight:700; font-size:14pt; text-align:center;
				color:white; cursor:pointer;">
			<img src="img/LTF_box_short3.png" width="45px" /></div>	
						
			<span class="top box11 box_lno" onclick="getPopupDetail_top(11);"
			style="z-index:19998; position: fixed; left: 772px; top:238px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			4</span>
			<span class="top box11 box_cno" onclick="getPopupDetail_top(11);"
			style="z-index:19998; position: fixed; left: 800px; top:238px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
			<span class="top box11 box_no11" onclick="getPopupDetail_top(11);"
			style="z-index:19998; position: fixed; left: 786px; top:255px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
				
			<!-- 12-5 -->
			<div class="top box12" onclick="getPopupDetail_top(12);"
			style="z-index:19998; position:fixed; left:815px; top:240px; font-weight:700; font-size:14pt; text-align:center;
				color:white; cursor:pointer;">
			<img src="img/LTF_box_short3.png" width="45px" /></div>	
						
			<span class="top box12 box_lno" onclick="getPopupDetail_top(12);"
			style="z-index:19998; position: fixed; left: 817px; top:238px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			4</span>
			<span class="top box12 box_cno" onclick="getPopupDetail_top(12);"
			style="z-index:19998; position: fixed; left: 845px; top:238px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
			<span class="top box12 box_no12" onclick="getPopupDetail_top(12);"
			style="z-index:19998; position: fixed; left: 831px; top:255px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
				
			<!-- 13-6 -->
			<div class="top box13" onclick="getPopupDetail_top(13);"
			style="z-index:19998; position:fixed; left:860px; top:240px; font-weight:700; font-size:14pt; text-align:center;
				color:white; cursor:pointer;">
			<img src="img/LTF_box_short3.png" width="45px" /></div>	
						
			<span class="top box13 box_lno" onclick="getPopupDetail_top(13);"
			style="z-index:19998; position: fixed; left: 862px; top:238px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			4</span>
			<span class="top box13 box_cno" onclick="getPopupDetail_top(13);"
			style="z-index:19998; position: fixed; left: 890px; top:238px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
			<span class="top box13 box_no13" onclick="getPopupDetail_top(13);"
			style="z-index:19998; position: fixed; left: 876px; top:255px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
			
			<!-- 14-7 -->
			<div class="top box14" onclick="getPopupDetail_top(14);"
			style="z-index:19998; position:fixed; left:905px; top:240px; font-weight:700; font-size:14pt; text-align:center;
				color:white; cursor:pointer;">
			<img src="img/LTF_box_short3.png" width="45px" /></div>	
						
			<span class="top box14 box_lno" onclick="getPopupDetail_top(14);"
			style="z-index:19998; position: fixed; left: 907px; top:238px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			4</span>
			<span class="top box14 box_cno" onclick="getPopupDetail_top(14);"
			style="z-index:19998; position: fixed; left: 935px; top:238px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
			<span class="top box14 box_no14" onclick="getPopupDetail_top(14);"
			style="z-index:19998; position: fixed; left: 921px; top:255px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
						
			<!-- 8컨베어( Box13~14 사이) -->
			<!-- 좌 -->
			<div class="top con09_off"
			style="z-index:19998; position:fixed; left:875px; top:283px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어off.png" width="12px;"/></div>	
			
			<div class="top con09"
			style="z-index:19998; position:fixed; left:875px; top:283px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어.png" width="12px;"/></div>	
			
			<!-- 우 -->
			<div class="top con10_off"
			style="z-index:19998; position:fixed; left:910px; top:283px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어off.png" width="12px;"/></div>	
			
			<div class="top con10"
			style="z-index:19998; position:fixed; left:910px; top:283px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어.png" width="12px;"/></div>		
			
					
			<!-- 15-8 -->
			<div class="top box15" onclick="getPopupDetail_top(15);"
			style="z-index:19998; position:fixed; left:950px; top:240px; font-weight:700; font-size:14pt; text-align:center;
				color:white; cursor:pointer;">
			<img src="img/LTF_box_short3.png" width="45px" /></div>	
						
			<span class="top box15 box_lno" onclick="getPopupDetail_top(15);"
			style="z-index:19998; position: fixed; left: 952px; top:238px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			4</span>
			<span class="top box15 box_cno" onclick="getPopupDetail_top(15);"
			style="z-index:19998; position: fixed; left: 980px; top:238px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
			<span class="top box15 box_no15" onclick="getPopupDetail_top(15);"
			style="z-index:19998; position: fixed; left: 966px; top:255px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
				
			<!-- 16-9 -->
			<div class="top box16" onclick="getPopupDetail_top(16);"
			style="z-index:19998; position:fixed; left:997px; top:240px; font-weight:700; font-size:14pt; text-align:center;
				color:white; cursor:pointer;">
			<img src="img/LTF_box_short3.png" width="45px" /></div>	
						
			<span class="top box16 box_lno" onclick="getPopupDetail_top(16);"
			style="z-index:19998; position: fixed; left: 999px; top:238px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			4</span>
			<span class="top box16 box_cno" onclick="getPopupDetail_top(16);"
			style="z-index:19998; position: fixed; left: 1027px; top:238px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
			<span class="top box16 box_no16" onclick="getPopupDetail_top(16);"
			style="z-index:19998; position: fixed; left: 1013px; top:255px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
				
			<!-- 17-10 -->
			<div class="top box17" onclick="getPopupDetail_top(17);"
			style="z-index:19998; position:fixed; left:1042px; top:240px; font-weight:700; font-size:14pt; text-align:center;
				color:white; cursor:pointer;">
			<img src="img/LTF_box_short3.png" width="45px" /></div>	
						
			<span class="top box17 box_lno" onclick="getPopupDetail_top(17);"
			style="z-index:19998; position: fixed; left: 1044px; top:238px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			4</span>
			<span class="top box17 box_cno" onclick="getPopupDetail_top(17);"
			style="z-index:19998; position: fixed; left: 1072px; top:238px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
			<span class="top box17 box_no17" onclick="getPopupDetail_top(17);"
			style="z-index:19998; position: fixed; left: 1058px; top:255px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
				
			<!-- 18-11 -->
			<div class="top box18" onclick="getPopupDetail_top(18);"
			style="z-index:19998; position:fixed; left:1087px; top:240px; font-weight:700; font-size:14pt; text-align:center;
				color:white; cursor:pointer;">
			<img src="img/LTF_box_short3.png" width="45px" /></div>	
						
			<span class="top box18 box_lno" onclick="getPopupDetail_top(18);"
			style="z-index:19998; position: fixed; left: 1089px; top:238px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			4</span>
			<span class="top box18 box_cno" onclick="getPopupDetail_top(18);"
			style="z-index:19998; position: fixed; left: 1117px; top:238px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
			<span class="top box18 box_no18" onclick="getPopupDetail_top(18);"
			style="z-index:19998; position: fixed; left: 1103px; top:255px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
				
			<!-- 19-12 -->
			<div class="top box19" onclick="getPopupDetail_top(19);"
			style="z-index:19998; position:fixed; left:1133px; top:240px; font-weight:700; font-size:14pt; text-align:center;
				color:white; cursor:pointer;">
			<img src="img/LTF_box_short3.png" width="45px" /></div>	
						
			<span class="top box19 box_lno" onclick="getPopupDetail_top(19);"
			style="z-index:19998; position: fixed; left: 1135px; top:238px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			4</span>
			<span class="top box19 box_cno" onclick="getPopupDetail_top(19);"
			style="z-index:19998; position: fixed; left: 1162px; top:238px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
			<span class="top box19 box_no19" onclick="getPopupDetail_top(19);"
			style="z-index:19998; position: fixed; left: 1148px; top:255px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
			
			<!-- 클러치02 좌 -->
			<div class="top con10_off"
			style="z-index:19998; position:fixed; left:1117px; top:283px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어off.png" width="12px;"/></div>	
			
			<div class="top con10"
			style="z-index:19998; position:fixed; left:1117px; top:283px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어.png" width="12px;"/></div>		
			
			<div class="top cl02_off" id="top_cl02_off"
			 style="z-index:19998; position: fixed; background-color: #ff3335; width: 70px; left:1090px; top:300px;  margin-left: 3px; text-align: center; color: black; font-size: 12px; font-weight: 700;">
				클러치 OFF
			</div>
			<div class="top cl02" id="top_cl02_on"
			 style="z-index:19998; position: fixed; background-color: #54c454; width: 70px; left:1090px; top:300px;  margin-left: 3px; text-align: center; color: black; font-size: 14px; font-weight: 700;">
				클러치 ON
			</div>
			
			<!-- 클러치02 우 -->
			<div class="top con11_off"
			style="z-index:19998; position:fixed; left:1133px; top:283px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어off.png" width="12px;"/></div>	
			
			<div class="top con11"
			style="z-index:19998; position:fixed; left:1133px; top:283px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어.png" width="12px;"/></div>		
					
			<!-- 9컨베어( Box19) -->
			<!-- 좌 -->
			<div class="top con11_off"
			style="z-index:19998; position:fixed; left:1162px; top:283px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어off.png" width="12px;"/></div>	
			
			<div class="top con11"
			style="z-index:19998; position:fixed; left:1162px; top:283px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어.png" width="12px;"/></div>	
			
				
					
			<div
			style="z-index:19998; position:fixed; left:827px; top: 171px; text-align:center; ">
			<img src="img/21.FAN_RUN_고정기둥.png"/></div>
				
			<div class="top c_fan" id="top_c_fan_run"
			style="z-index:19998; position:fixed; left:810px; top:186px; text-align:center; ">
			<img src="img/21.FAN_RUN_수평이동.png" width="50px"/></div>
			
			<div class="top c_fan"  id="top_c_fan00"
			style="z-index:19998; position:fixed; left:810px; top:115px; text-align:center; ">
			<img src="img/팬모터회1.png" width="50px"/></div>
			
			<!-- <div class="top c_fan"  id="top_c_fan01"
			style="z-index:19998; position:fixed; left:780px; top:270px; text-align:center; ">
			<img src="img/팬모터노1.png" width="50px"/></div>-->
			 
			<div class="top c_fan"  id="top_c_fan02"
			style="z-index:19998; position:fixed; left:810px; top:115px; text-align:center; ">
			<img src="img/팬모터빨1.png" width="50px"/></div>
			
			<div class="top c_fan"  id="top_c_fan03"
			style="z-index:19998; position:fixed; left:810px; top:115px; text-align:center; ">
			<img src="img/팬모터초1.png" width="50px"/></div>
			
			<div class="top c_roller"  id="top_c_roller_rl"
			style="z-index:19998; position:fixed; left:765px; top:330px; text-align:center; ">
			<img src="img/화살표_왼_R.png" width="35px"/></div>
			
			<div class="top c_roller"  id="top_c_roller_l"
			style="z-index:19998; position:fixed; left:765px; top:330px; text-align:center; ">
			<img src="img/화살표_왼_y.png" width="35px"/></div>
			
			<div class="top c_roller"  id="top_c_roller_rr"
			style="z-index:19998; position:fixed; left:810px; top:330px; text-align:center; ">
			<img src="img/화살표_오_R.png" width="35px"/></div>
			
			<div class="top c_roller"  id="top_c_roller_r"
			style="z-index:19998; position:fixed; left:810px; top:330px; text-align:center; ">
			<img src="img/화살표_오_y.png" width="35px"/></div>
			
			<div class="top l_jo_state" id="top_l_jo_state_a"
			  style="z-index:19998; position: fixed; background-color: #54c454; width: 70px; left:900px; top:360px;  margin-left: 3px; text-align: center; color: black; font-size: 14px; font-weight: 700;">
				자동 조깅
			</div>
			<div class="top l_jo_state" id="top_l_jo_state_m"
			  style="z-index:19998; position: fixed; background-color: #ff3335; width: 70px; left:900px; top:360px;  margin-left: 3px; text-align: center; color: black; font-size: 14px; font-weight: 700;">
				수동 조깅
			</div>
			
			<div
			style="z-index:19998; position:fixed; left:1037px; top: 171px; text-align:center; ">
			<img src="img/21.FAN_RUN_고정기둥.png"/></div>
				
			<div class="top d_fan"  id="top_d_fan_run"
			style="z-index:19998; position:fixed; left:1020px; top:186px; text-align:center; ">
			<img src="img/21.FAN_RUN_수평이동.png" width="50px"/></div>
			
			<div class="top d_fan"  id="top_d_fan00"
			style="z-index:19998; position:fixed; left:1020px; top:115px; text-align:center; ">
			<img src="img/팬모터회1.png" width="50px"/></div>
			
			<!-- <div class="top d_fan"  id="top_d_fan01"
			style="z-index:19998; position:fixed; left:1020px; top:270px; text-align:center; ">
			<img src="img/팬모터노1.png" width="50px"/></div> -->
			
			<div class="top d_fan"  id="top_d_fan02"
			style="z-index:19998; position:fixed; left:1020px; top:115px; text-align:center; ">
			<img src="img/팬모터빨1.png" width="50px"/></div>
			
			<div class="top d_fan"  id="top_d_fan03"
			style="z-index:19998; position:fixed; left:1020px; top:115px; text-align:center; ">
			<img src="img/팬모터초1.png" width="50px"/></div>
			
			<div class="top d_roller"  id="top_d_roller_rl"
			style="z-index:19998; position:fixed; left:1000px; top:330px; text-align:center; ">
			<img src="img/화살표_왼_R.png" width="35px"/></div>
			
			<div class="top d_roller"  id="top_d_roller_l"
			style="z-index:19998; position:fixed; left:1000px; top:330px; text-align:center; ">
			<img src="img/화살표_왼_y.png" width="35px"/></div>
			
			<div class="top d_roller"  id="top_d_roller_rr"
			style="z-index:19998; position:fixed; left:1040px; top:330px; text-align:center; ">
			<img src="img/화살표_오_R.png" width="35px"/></div>
			
			<div class="top d_roller"  id="top_d_roller_r"
			style="z-index:19998; position:fixed; left:1040px; top:330px; text-align:center; ">
			<img src="img/화살표_오_y.png" width="35px"/></div>
			
			<!-- 소입 입구 -->
			<div class="top so_fdoor"  id="top_so_fdoor_r"
			style="z-index:19998; position:fixed; left:1185px; top:125px; text-align:center; ">
			<img src="img/10.png" width="14px"/></div>
			
			<div class="top so_fdoor"  id="top_so_fdoor_g"
			style="z-index:19998; position:fixed; left:1185px; top:185px; text-align:center; ">
			<img src="img/09.png" width="15px" height="100px"/></div>
			
			<!-- 20 -->
			<div class="top box20" onclick="getPopupDetail_top(20);"
			style="z-index:19998; position:fixed; left:1211px; top:240px; font-weight:700; font-size:14pt; text-align:center;
				color:white; cursor:pointer;">
			<img src="img/LTF_box_short3.png" width="45px" /></div>	
						
			<span class="top box20 box_lno" onclick="getPopupDetail_top(20);"
			style="z-index:19998; position: fixed; left: 1212px; top:238px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			4</span>
			<span class="top box20 box_cno" onclick="getPopupDetail_top(20);"
			style="z-index:19998; position: fixed; left: 1241px; top:238px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
			<span class="top box20 box_no20" onclick="getPopupDetail_top(20);"
			style="z-index:19998; position: fixed; left: 1226px; top:255px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
						
			<!-- 10컨베어( Box20) -->
			<!-- 좌 -->
			<div class="top con12_off"
			style="z-index:19998; position:fixed; left:1205px; top:283px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어off.png" width="12px;"/></div>	
			
			<div class="top con12"
			style="z-index:19998; position:fixed; left:1205px; top:283px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어.png" width="12px;"/></div>	
			
			<!-- 우 -->
			<div class="top con12_off"
			style="z-index:19998; position:fixed; left:1245px; top:283px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어off.png" width="12px;"/></div>	
			
			<div class="top con12"
			style="z-index:19998; position:fixed; left:1245px; top:283px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어.png" width="12px;"/></div>		
			
						
			<div
			style="z-index:19998; position:fixed; left:1223px; top: 171px; text-align:center; ">
			<img src="img/21.FAN_RUN_고정기둥.png"/></div>
					
			<div class="top so1_fan"  id="top_so1_fan_run"
			style="z-index:19998; position:fixed; left:1206px; top:186px; text-align:center; ">
			<img src="img/21.FAN_RUN_수평이동.png" width="50px"/></div>
			
			<div class="top so1_fan"  id="top_so1_fan00"
			style="z-index:19998; position:fixed; left:1206px; top:115px; text-align:center; ">
			<img src="img/팬모터회1.png" width="50px"/></div>
			
			<!-- <div class="top so1_fan"  id="top_so1_fan01"
			style="z-index:19998; position:fixed; left:1206px; top:270px; text-align:center; ">
			<img src="img/팬모터노1.png" width="50px"/></div> -->
			
			<div class="top so1_fan"  id="top_so1_fan02"
			style="z-index:19998; position:fixed; left:1206px; top:115px; text-align:center; ">
			<img src="img/팬모터빨1.png" width="50px"/></div>
			
			<div class="top so1_fan"  id="top_so1_fan03"
			style="z-index:19998; position:fixed; left:1206px; top:115px; text-align:center; ">
			<img src="img/팬모터초1.png" width="50px"/></div>
			
			<div class="top so1_roller"  id="top_so1_roller_rl"
			style="z-index:19998; position:fixed; left:1195px; top:330px; text-align:center; ">
			<img src="img/화살표_왼_R.png" width="35px"/></div>
			
			<div class="top so1_roller"  id="top_so1_roller_l"
			style="z-index:19998; position:fixed; left:1195px; top:330px; text-align:center; ">
			<img src="img/화살표_왼_y.png" width="35px"/></div>
			
			<div class="top so1_roller"  id="top_so1_roller_rr"
			style="z-index:19998; position:fixed; left:1235px; top:330px; text-align:center; ">
			<img src="img/화살표_오_R.png" width="35px"/></div>
			
			<div class="top so1_roller"  id="top_so1_roller_r"
			style="z-index:19998; position:fixed; left:1235px; top:330px; text-align:center; ">
			<img src="img/화살표_오_y.png" width="35px"/></div>
			
			<div class="top so1_jo_state" id="top_so1_jo_state_a"
			   style="z-index:19998; position: fixed; background-color: #54c454; width: 70px; left:1195px; top:360px;  margin-left: 3px; text-align: center; color: black; font-size: 14px; font-weight: 700;">
				자동 조깅
			</div>
			<div class="top so1_jo_state" id="top_so1_jo_state_m"
			   style="z-index:19998; position: fixed; background-color: #ff3335; width: 70px; left:1195px; top:360px;  margin-left: 3px; text-align: center; color: black; font-size: 14px; font-weight: 700;">
				수동 조깅
			</div>
			
			
			<!-- 소입 중간문 -->
			<div class="top so_mdoor"  id="top_so_mdoor_r"
			style="z-index:19998; position:fixed; left:1268px; top:125px; text-align:center; ">
			<img src="img/10.png" width="14px"/></div>
			
			<div class="top so_mdoor"  id="top_so_mdoor_g"
			style="z-index:19998; position:fixed; left:1268px; top:185px; text-align:center; ">
			<img src="img/09.png" width="15px" height="100px"/></div>
			
			<!-- 21 -->
			<div class="top box21" onclick="getPopupDetail_top(21);"
			style="z-index:19998; position:fixed; left:1297px; top:240px; font-weight:700; font-size:14pt; text-align:center;
				color:white; cursor:pointer;">
			<img src="img/LTF_box_short3.png" width="45px" /></div>	
					
			<span class="top box21 box_lno" onclick="getPopupDetail_top(21);"
			style="z-index:19998; position: fixed; left: 1299px; top:238px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			4</span>
			<span class="top box21 box_cno" onclick="getPopupDetail_top(21);"
			style="z-index:19998; position: fixed; left: 1327px; top:238px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
			<span class="top box21 box_no21" onclick="getPopupDetail_top(21);"
			style="z-index:19998; position: fixed; left: 1313px; top:255px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
						
			<!-- 11컨베어( Box21) -->
			<!-- 좌 -->
			<div class="top con13_off"
			style="z-index:19998; position:fixed; left:1290px; top:283px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어off.png" width="12px;"/></div>	
			
			<div class="top con13"
			style="z-index:19998; position:fixed; left:1290px; top:283px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어.png" width="12px;"/></div>	
			
			<!-- 우 -->
			<div class="top con13_off"
			style="z-index:19998; position:fixed; left:1330px; top:283px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어off.png" width="12px;"/></div>	
			
			<div class="top con13"
			style="z-index:19998; position:fixed; left:1330px; top:283px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어.png" width="12px;"/></div>		
			
						
			<!-- 소입2 -->		
			<div
			style="z-index:19998; position:fixed; left:1307px; top: 171px; text-align:center; ">
			<img src="img/21.FAN_RUN_고정기둥.png"/></div>
					
			<div class="top so2_fan"  id="top_so2_fan_run"
			style="z-index:19998; position:fixed; left:1290px; top:186px; text-align:center; ">
			<img src="img/21.FAN_RUN_수평이동.png" width="50px"/></div>
			
			<div class="top so2_fan"  id="top_so2_fan00"
			style="z-index:19998; position:fixed; left:1290px; top:115px; text-align:center; ">
			<img src="img/팬모터회1.png" width="50px"/></div>
			
			<!-- <div class="top so2_fan"  id="top_so2_fan01"
			style="z-index:19998; position:fixed; left:1290px; top:270px; text-align:center; ">
			<img src="img/팬모터노1.png" width="50px"/></div> -->
			
			<div class="top so2_fan"  id="top_so2_fan02"
			style="z-index:19998; position:fixed; left:1290px; top:115px; text-align:center; ">
			<img src="img/팬모터빨1.png" width="50px"/></div>
			
			<div class="top so2_fan"  id="top_so2_fan03"
			style="z-index:19998; position:fixed; left:1290px; top:115px; text-align:center; ">
			<img src="img/팬모터초1.png" width="50px"/></div>
			
			<div class="top so2_roller" id="top_so2_roller_rl"
			style="z-index:19998; position:fixed; left:1280px; top:330px; text-align:center; ">
			<img src="img/화살표_왼_R.png" width="35px"/></div>
			
			<div class="top so2_roller"  id="top_so2_roller_l"
			style="z-index:19998; position:fixed; left:1280px; top:330px; text-align:center; ">
			<img src="img/화살표_왼_y.png" width="35px"/></div>
			
			<div class="top so2_roller" id="top_so2_roller_rr"
			style="z-index:19998; position:fixed; left:1320px; top:330px; text-align:center; ">
			<img src="img/화살표_오_R.png" width="35px"/></div>
			
			<div class="top so2_roller"  id="top_so2_roller_r"
			style="z-index:19998; position:fixed; left:1320px; top:330px; text-align:center; ">
			<img src="img/화살표_오_y.png" width="35px"/></div>
			
			<div class="top so2_jo_state" id="top_so2_jo_state_a"
			   style="z-index:19998; position: fixed; background-color: #54c454; width: 70px; left:1282px; top:360px;  margin-left: 3px; text-align: center; color: black; font-size: 14px; font-weight: 700;">
				자동 조깅
			</div>
			<div class="top so2_jo_state" id="top_so2_jo_state_m"
			   style="z-index:19998; position: fixed; background-color: #ff3335; width: 70px; left:1282px; top:360px;  margin-left: 3px; text-align: center; color: black; font-size: 14px; font-weight: 700;">
				수동 조깅
			</div>
			
			<div class="top so2_ff" 
			   style="z-index:19998; position: fixed; background-color: #54c454; width: 70px; left:1282px; top:383px;  margin-left: 3px; text-align: center; color: black; font-size: 14px; font-weight: 700;">
				고속 전진
			</div>
			
			<!-- 리프터 -->
			<div class="top lift02_dn" id=lift02_dn
			 style="z-index:19998; position: fixed; background-color: #54c454; width: 70px; left:1325px; top:300px;  margin-left: 3px; text-align: center; color: black; font-size: 12px; font-weight: 700;">
				리프터 아래
			</div>
			<div class="top lift02_up" id=lift02_up
			 style="z-index:19998; position: fixed; background-color: #54c454; width: 70px; left:1325px; top:300px;  margin-left: 3px; text-align: center; color: black; font-size: 14px; font-weight: 700;">
				리프터 위
			</div>
			
			
				
			<!-- 소입 출구문 -->
			<div class="top so_edoor"  id="top_so_edoor_r"
			style="z-index:19998; position:fixed; left:1347px; top:125px; text-align:center;">
			<img src="img/10.png" width="14px"/></div>
			
			<div class="top so_edoor"  id="top_so_edoor_g"
			style="z-index:19998; position:fixed; left:1347px; top:185px; text-align:center;">
			<img src="img/09.png" width="15px" height="100px"/></div>
			
			<!-- 22 -->
			<div class="top box22" onclick="getPopupDetail_top(22);"
			style="z-index:19998; position:fixed; left:1385px; top:228px; font-weight:700; font-size:14pt; text-align:center;
				color:white; cursor:pointer;">
			<img src="img/LTF_box_short3.png" width="45px" /></div>	
					
			<span class="top box22 box_lno" onclick="getPopupDetail_top(22);"
			style="z-index:19998; position: fixed; left: 1387px; top:226px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			4</span>
			<span class="top box22 box_cno" onclick="getPopupDetail_top(22);"
			style="z-index:19998; position: fixed; left: 1415px; top:226px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
			<span class="top box22 box_no22" onclick="getPopupDetail_top(22);"
			style="z-index:19998; position: fixed; left: 1401px; top:247px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
			
			<!-- 위 -->
			<div class="top sa_ev sa_ev_u"  
			style="z-index:19998; position:fixed; left:1469px; top:267px; text-align:center;">
			<img src="img/녹색바1.png" width="50px" height="10px"/></div>
			
			<div class="top sa_ev sa_ev_d"  
			style="z-index:19998; position:fixed; left:1469px; top:267px; text-align:center;">
			<img src="img/적색바2.png" width="50px" height="10px"/></div>
			
			<!-- SALT조 위 -->
			<div class="top sa_ev sa_ev_u" id="top_sa_ev_u" onclick="getPopupDetail_top(23);"
			style="z-index:19998; position:fixed; left:1470px; top:160px; font-weight:700; font-size:14pt; text-align:center;
				color:white;">
			<img src="img/1.엘레베이터_상승.png" width="50px" height="120px" /></div>	
			
			<!-- 23 -->
			<div class="top box23_up" onclick="getPopupDetail_top(23);"
			style="z-index:20010; position:fixed; left:1471px; top:225px; font-weight:700; font-size:14pt; text-align:center;
				color:white; cursor:pointer;">
			<img src="img/LTF_box_short3.png" width="45px" /></div>	
					
			<span class="top box23_up box_lno" onclick="getPopupDetail_top(23);"
			style="z-index:20011; position: fixed; left: 1473px; top:222px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			4</span>
			<span class="top box23_up box_cno" onclick="getPopupDetail_top(23);"
			style="z-index:20011; position: fixed; left: 1501px; top:222px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
			<span class="top box23_up box_no23" onclick="getPopupDetail_top(23);"
			style="z-index:20011; position: fixed; left: 1487px; top:240px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
			
			<!-- 24 
			<div class="top box23_mid" onclick="getPopupDetail_top(23);"
			style="z-index:19998; position:fixed; left:1471px; top:280px; font-weight:700; font-size:14pt; text-align:center;
				color:white; cursor:pointer;">
			<img src="img/LTF_box_short_기울음.png" width="48px" /></div>	
					
			<span class="top box23_mid box_lno" onclick="getPopupDetail_top(23);"
			style="z-index:19998; position: fixed; left: 1478px; top:280px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			4</span>
			<span class="top box23_mid box_cno" onclick="getPopupDetail_top(23);"
			style="z-index:19998; position: fixed; left: 1504px; top:285px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
			<span class="top box23_mid box_no23" onclick="getPopupDetail_top(23);"
			style="z-index:19998; position: fixed; left: 1489px; top:425px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
			-->	
			
			<!-- SALT조 아래 -->
			<div class="top sa_ev sa_ev_d" id="top_sa_ev_d"
			style="z-index:19998; position:fixed; left:1470px; top:155px; font-weight:700; font-size:14pt; text-align:center;
				color:white;">
			<img src="img/2.엘레베이터_하강.png" width="50px" height="215px" /></div>	
			
			<!-- 25 -->	
			<div class="top box23_dw" onclick="getPopupDetail_top(23);"
			style="z-index:20010; position:fixed; left:1471px; top:315px; font-weight:700; font-size:14pt; text-align:center;
				color:white; cursor:pointer;">
			<img src="img/LTF_box_short3.png" width="45px" /></div>	
					
			<span class="top box23_dw box_lno" onclick="getPopupDetail_top(23);"
			style="z-index:20011; position: fixed; left: 1474px; top:312px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			4</span>
			<span class="top box23_dw box_cno" onclick="getPopupDetail_top(23);"
			style="z-index:20011; position: fixed; left: 1501px; top:312px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
			<span class="top box23_dw box_no23" onclick="getPopupDetail_top(23);"
			style="z-index:20011; position: fixed; left: 1487px; top:335px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
				
			<!-- 아래 바 -->
			<div class="top sa_r_state"  id="top_sa_r_state01"
			style="z-index:19998; position:fixed; left:1400px; top:270px; text-align:center; ">
			<img src="img/녹색바1.png" width="80px"/></div>
			
			<div class="top sa_r_state"  id="top_sa_r_state02"
			style="z-index:19998; position:fixed; left:1450px; top:270px; text-align:center; ">
			<img src="img/적색바2.png" width="80px"/></div>
			
			<div class="top sa_r_state"  id="top_sa_r_state03"
			style="z-index:19998; position:fixed; left:1500px; top:270px; text-align:center; ">
			<img src="img/녹색바1.png" width="80px"/></div>
						
			<!-- 12컨베어( Box22) -->
			<!-- 좌 -->
			<div class="top con14_off"
			style="z-index:19998; position:fixed; left:1380px; top:273px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어off.png" width="12px;"/></div>	
			
			<div class="top con14"
			style="z-index:19998; position:fixed; left:1380px; top:273px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어.png" width="12px;"/></div>	
			
			<!-- 우 -->
			<div class="top con14_off"
			style="z-index:19998; position:fixed; left:1417px; top:273px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어off.png" width="12px;"/></div>	
			
			<div class="top con14"
			style="z-index:19998; position:fixed; left:1417px; top:273px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어.png" width="12px;"/></div>		
			
							
			<div class="top sa_agi"  id="top_sa_agi_r"
			style="z-index:19998; position:fixed; left:1430px; top:345px; text-align:center; ">
			<img src="img/아지테이터_r.png" width="30px"/></div>
			
			<div class="top sa_agi"  
			style="z-index:19998; position:fixed; left:1430px; top:345px; text-align:center; ">
			<img src="img/아지테이터.png" width="30px"/></div>
			
			<div class="top sa_agi sa_agi_on"  id="top_sa_agi_lo"
			style="z-index:19998; position:fixed; left:1430px; top:345px; text-align:center; ">
			<img src="img/아지테이터1.png" width="30px"/></div>
				
			<div class="top sa_agi"  
			style="z-index:19998; position:fixed; left:1525px; top:345px; text-align:center; ">
			<img src="img/아지테이터_r.png" width="30px"/></div>
			
			<div class="top sa_agi"  
			style="z-index:19998; position:fixed; left:1525px; top:345px; text-align:center; ">
			<img src="img/아지테이터.png" width="30px"/></div>
			
			<div class="top sa_agi sa_agi_on"  id="top_sa_agi_ro"
			style="z-index:19998; position:fixed; left:1525px; top:345px; text-align:center; ">
			<img src="img/아지테이터1.png" width="30px"/></div>
			
			<!-- 26 -->	
			<div class="top box24" onclick="getPopupDetail_top(24);"
			style="z-index:19998; position:fixed; left:1555px; top:228px; font-weight:700; font-size:14pt; text-align:center;
				color:white; cursor:pointer;">
			<img src="img/LTF_box_short3.png" width="45px" /></div>	
					
			<span class="top box24 box_lno" onclick="getPopupDetail_top(24);"
			style="z-index:19998; position: fixed; left: 1557px; top:226px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			4</span>
			<span class="top box24 box_cno" onclick="getPopupDetail_top(24);"
			style="z-index:19998; position: fixed; left: 1585px; top:226px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
			<span class="top box24 box_no24" onclick="getPopupDetail_top(24);"
			style="z-index:19998; position: fixed; left: 1570px; top:248px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
			
			<!-- 27 -->		
			<div class="top box25" onclick="getPopupDetail_top(25);"
			style="z-index:19998; position:fixed; left:1605px; top:228px; font-weight:700; font-size:14pt; text-align:center;
				color:white; cursor:pointer;">
			<img src="img/LTF_box_short3.png" width="45px" /></div>	
					
			<span class="top box25 box_lno" onclick="getPopupDetail_top(25);"
			style="z-index:19998; position: fixed; left: 1607px; top:226px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			4</span>
			<span class="top box25 box_cno" onclick="getPopupDetail_top(25);"
			style="z-index:19998; position: fixed; left: 1635px; top:226px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
			<span class="top box25 box_no25" onclick="getPopupDetail_top(25);"
			style="z-index:19998; position: fixed; left: 1621px; top:248px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
			
			<!-- 28 -->	
			<div class="top box26" onclick="getPopupDetail_top(26);"
			style="z-index:19998; position:fixed; left:1655px; top:228px; font-weight:700; font-size:14pt; text-align:center;
				color:white; cursor:pointer;">
			<img src="img/LTF_box_short3.png" width="45px" /></div>	
					
			<span class="top box26 box_lno" onclick="getPopupDetail_top(26);"
			style="z-index:19998; position: fixed; left: 1657px; top:226px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			4</span>
			<span class="top box26 box_cno" onclick="getPopupDetail_top(26);"
			style="z-index:19998; position: fixed; left: 1685px; top:226px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
			<span class="top box26 box_no26" onclick="getPopupDetail_top(26);"
			style="z-index:19998; position: fixed; left: 1671px; top:248px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
						
			<!-- 13컨베어( Box28) -->
			<!-- 좌 -->
			<div class="top con15_off"
			style="z-index:19998; position:fixed; left:1650px; top:273px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어off.png" width="12px;"/></div>	
			
			<div class="top con15"
			style="z-index:19998; position:fixed; left:1650px; top:273px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어.png" width="12px;"/></div>	
			
			<!-- 우 -->
			<div class="top con15_off"
			style="z-index:19998; position:fixed; left:1688px; top:273px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어off.png" width="12px;"/></div>	
			
			<div class="top con15"
			style="z-index:19998; position:fixed; left:1688px; top:273px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어.png" width="12px;"/></div>		
			
								
			<!-- <div class="top "  
			style="z-index:19998; position:fixed; left:1585px; top:515px; text-align:center; ">
			<img src="img/화살표_왼_R.png" width="35px"/></div>
			
			<div class="top "  
			style="z-index:19998; position:fixed; left:1585px; top:515px; text-align:center; ">
			<img src="img/화살표_왼_y.png" width="35px"/></div> -->
			
			<!-- 29 -->	
			<div class="top box27" onclick="getPopupDetail_top(27);"
			style="z-index:19998; position:fixed; left:1705px; top:228px; font-weight:700; font-size:14pt; text-align:center;
				color:white; cursor:pointer;">
			<img src="img/LTF_box_short3.png" width="45px" /></div>	
					
			<span class="top box27 box_lno" onclick="getPopupDetail_top(27);"
			style="z-index:19998; position: fixed; left: 1707px; top:226px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			4</span>
			<span class="top box27 box_cno" onclick="getPopupDetail_top(27);"
			style="z-index:19998; position: fixed; left: 1735px; top:226px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
			<span class="top box27 box_no27" onclick="getPopupDetail_top(27);"
			style="z-index:19998; position: fixed; left: 1719px; top:248px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
						
			<!-- 13컨베어( Box28) -->
			<!-- 좌 -->
			<div class="top con16_off"
			style="z-index:19998; position:fixed; left:1702px; top:273px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어off.png" width="12px;"/></div>	
			
			<div class="top con16"
			style="z-index:19998; position:fixed; left:1702px; top:273px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어.png" width="12px;"/></div>	
			
			<!-- 우 -->
			<div class="top con16_off"
			style="z-index:19998; position:fixed; left:1738px; top:273px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어off.png" width="12px;"/></div>	
			
			<div class="top con16"
			style="z-index:19998; position:fixed; left:1738px; top:273px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어.png" width="12px;"/></div>		
			
									
		<!-- 	<div class="top "  
			style="z-index:19998; position:fixed; left:1650px; top:515px; text-align:center; ">
			<img src="img/화살표_오_R.png" width="35px"/></div>
			
			<div class="top "  
			style="z-index:19998; position:fixed; left:1650px; top:515px; text-align:center; ">
			<img src="img/화살표_오_y.png" width="35px"/></div> -->
			
			
			<!-- 상세 정보 -->
			<!-- RPM -->
			<span
			style="z-index:19998; position:fixed; left:1578px; top:368px; font-weight:700; font-size:15pt; text-align:center;
				color:#123478; ">RPM</span>
				
			<span class="top rpm" 
			style="z-index:19998; position:fixed; left:1633px; top:365px; font-weight:700; font-size:15pt; text-align:center; width: 90px;
				color:#123478; background:white; border: 3px solid #123478; ">0</span>
					
			<!-- 현재온도 / LNG 삭제 -->
			<div style="z-index:19998; position:fixed; font-weight:700; font-size:12pt; text-align:center;
					color:white; left:200px; top:408px; width:1475px; background-color:#123478; height:25px; ">
					
				<span
				style="z-index:19998; position:fixed; top:408px; left:396px; font-weight:700; font-size:13pt; text-align:center;
					color:white; ">탈지로</span>
					
				<span
				style="z-index:19998; position:fixed; top:408px; left:562px; font-weight:700; font-size:13pt; text-align:center;
					color:white; ">예열</span>
					
				<span
				style="z-index:19998; position:fixed; top:408px; left:752px; font-weight:700; font-size:13pt; text-align:center;
					color:white; ">침탄</span>
					
				<span
				style="z-index:19998; position:fixed; top:408px; left:1032px; font-weight:700; font-size:13pt; text-align:center;
					color:white; ">확산</span>
					
				<span
				style="z-index:19998; position:fixed; top:408px; left:1210px; font-weight:700; font-size:13pt; text-align:center;
					color:white; ">소입1</span>
					
				<span
				style="z-index:19998; position:fixed; top:408px; left:1315px; font-weight:700; font-size:13pt; text-align:center;
					color:white; ">소입2</span>
					
				<span
				style="z-index:19998; position:fixed; top:408px; left:1480px; font-weight:700; font-size:13pt; text-align:center;
					color:white; ">SALT조</span>
					
			</div>
			
					
<!-- 			<div style="z-index:19998; position:fixed; left:100px; top:570px; font-weight:700; font-size:12pt; text-align:center;
					color:white; background-color:#343a40; width:1780px; height:115px; "> -->
					
			<div style="z-index:19998; position:fixed; left:200px; top:435px; font-weight:700; font-size:13pt; text-align:center;
					color:white; background-color:#343a40; width:1475px; height:75px; ">
				
				<!-- SALT조 드레인 / 퀜칭 -->
				<span class="top " 
				style="z-index:19998; position:fixed; left:1400px; top:430px; font-weight:700; font-size:13pt; text-align:center; width: 100px; height:25px;
					color:white; ">QUECHING</span>
					
				<span class="top " 
				style="z-index:19998; position:fixed; left:1513px; top:430px; font-weight:700; font-size:13pt; text-align:center; width: 100px; height:25px;
					color:white; ">DRAIN</span>
					
					
				<!-- 잔여시간 (분) -->
				<span
				style="z-index:19998; position:fixed; left:240px; top:453px; font-weight:700; font-size:13pt; text-align:center;
					color:white; ">잔여시간 (분)</span>
				
				<!-- 탈지 -->
				<span class="top rt_s" 
				style="z-index:19998; position:fixed; left:370px; top:453px; font-weight:700; font-size:13pt; text-align:center; width: 100px; height:25px;
					color:#c03f3f; background:WHITE; ">0</span>
					
				<!-- 예열 -->
				<span class="top rt_p" 
				style="z-index:19998; position:fixed; left:530px; top:453px; font-weight:700; font-size:13pt; text-align:center; width: 100px; height:25px;
					color:#c03f3f; background:WHITE; ">0</span>
				
				<!-- 소입1 -->
				<span class="top rt_so1" 
				style="z-index:19998; position:fixed; left:1180px; top:453px; font-weight:700; font-size:13pt; text-align:center; width: 100px; height:25px;
					color:#c03f3f; background:WHITE; ">0</span>
				
				<!-- 소입2 -->	
				<span class="top rt_so2" 
				style="z-index:19998; position:fixed; left:1285px; top:453px; font-weight:700; font-size:13pt; text-align:center; width: 100px; height:25px;
					color:#c03f3f; background:WHITE; ">0</span>
				
				<!-- 퀜칭 -->		
				<span class="top rt_q" 
				style="z-index:19998; position:fixed; left:1400px; top:453px; font-weight:700; font-size:13pt; text-align:center; width: 100px; height:25px;
					color:#c03f3f; background:WHITE; ">0</span>
				
				<!-- 드레인 -->		
				<span class="top rt_d" 
				style="z-index:19998; position:fixed; left:1513px; top:453px; font-weight:700; font-size:13pt; text-align:center; width: 100px; height:25px;
					color:#c03f3f; background:WHITE; ">0</span>	
					
					
				<!-- 설정시간 (분) -->	
				<span
				style="z-index:19998; position:fixed; left:240px; top:478px; font-weight:700; font-size:13pt; text-align:center;
					color:white; ">설정시간 (분)</span>
				
				<!-- 탈지 -->	
				<span class="top st_s" 
				style="z-index:19998; position:fixed; left:370px; top:482px; font-weight:700; font-size:13pt; text-align:center; width: 100px; height:25px;
					color:#123478; background:WHITE; ">0</span>
				
				<!-- 예열 -->	
				<span class="top st_p" 
				style="z-index:19998; position:fixed; left:530px; top:482px; font-weight:700; font-size:13pt; text-align:center; width: 100px; height:25px;
					color:#123478; background:WHITE; ">0</span>
					
				<!-- 침탄 -->
				<span class="top " 
				style="z-index:19998; position:fixed; left:670px; top:459px; font-weight:700; font-size:13pt; text-align:center; width: 100px; height:25px;
					color:white; ">CYCLE NO</span>
					
				<span class="top cn_c" 
				style="z-index:19998; position:fixed; left:775px; top:461px; font-weight:700; font-size:13pt; text-align:center; width: 100px; height:25px;
					color:white; background:#869fbf; ">0</span>
					
				<!-- 확산 -->	
				<span class="top " 
				style="z-index:19998; position:fixed; left:950px; top:459px; font-weight:700; font-size:13pt; text-align:center; width: 100px; height:25px;
					color:white; ">CYCLE NO</span>
						
				<span class="top cn_d" 
				style="z-index:19998; position:fixed; left:1050px; top:461px; font-weight:700; font-size:13pt; text-align:center; width: 100px; height:25px;
					color:white; background:#86bf94; ">0</span>
				
				<!-- 소입1 -->
				<span class="top st_so1" 
				style="z-index:19998; position:fixed; left:1180px; top:482px; font-weight:700; font-size:13pt; text-align:center; width: 100px; height:25px;
					color:#123478; background:WHITE; ">0</span>
				
				<!-- 소입2 -->
				<span class="top st_so2" 
				style="z-index:19998; position:fixed; left:1285px; top:482px; font-weight:700; font-size:13pt; text-align:center; width: 100px; height:25px;
					color:#123478; background:WHITE; ">0</span>
				
				<!-- 퀜칭 -->		
				<span class="top st_q" 
				style="z-index:19998; position:fixed; left:1400px; top:482px; font-weight:700; font-size:13pt; text-align:center; width: 100px; height:25px;
					color:#123478; background:WHITE; ">0</span>
				
				<!-- 드레인 -->		
				<span class="top st_d" 
				style="z-index:19998; position:fixed; left:1513px; top:482px; font-weight:700; font-size:13pt; text-align:center; width: 100px; height:25px;
					color:#123478; background:WHITE; ">0</span>	
					
			</div>
				
	</div>
	</div>
	</div>
			
	<script>
	//전역
	var timer;
	var ccfinfointerval;
	var ccfstateinterval;
	var boxinterval;
	var timeintervar;
	
	var testInterval; // 토글버튼
	
	var interval_cnt = 0;
	var past = 0;
	

	//로드
	$(function() {

		$('.datepicker').datepicker({
		    format: "yyyy-mm-dd",	//데이터 포맷 형식(yyyy : 년 mm : 월 dd : 일 )
//		    startDate: '-10d',	//달력에서 선택 할 수 있는 가장 빠른 날짜. 이전으로는 선택 불가능 ( d : 일 m : 달 y : 년 w : 주)
//		    endDate: '+10d',	//달력에서 선택 할 수 있는 가장 느린 날짜. 이후로 선택 불가 ( d : 일 m : 달 y : 년 w : 주)
		    autoclose : true,	//사용자가 날짜를 클릭하면 자동 캘린더가 닫히는 옵션
		    calendarWeeks : false, //캘린더 옆에 몇 주차인지 보여주는 옵션 기본값 false 보여주려면 true
		    clearBtn : false, //날짜 선택한 값 초기화 해주는 버튼 보여주는 옵션 기본값 false 보여주려면 true
//		    datesDisabled : ['2019-06-24','2019-06-26'],//선택 불가능한 일 설정 하는 배열 위에 있는 format 과 형식이 같아야함.
//		    daysOfWeekDisabled : [0,6],	//선택 불가능한 요일 설정 0 : 일요일 ~ 6 : 토요일
//		    daysOfWeekHighlighted : [3], //강조 되어야 하는 요일 설정
		    disableTouchKeyboard : false,	//모바일에서 플러그인 작동 여부 기본값 false 가 작동 true가 작동 안함.
		    immediateUpdates: false,	//사용자가 보는 화면으로 바로바로 날짜를 변경할지 여부 기본값 :false 
		    multidate : false, //여러 날짜 선택할 수 있게 하는 옵션 기본값 :false 
		    multidateSeparator :",", //여러 날짜를 선택했을 때 사이에 나타나는 글짜 2019-05-01,2019-06-01
		    templates : {
		        leftArrow: '<i class="top fa fa-long-arrow-left"></i>',
		        rightArrow: '<i class="top fa fa-long-arrow-right"></i>'
		    }, //다음달 이전달로 넘어가는 화살표 모양 커스텀 마이징 
		    showWeekDays : true ,// 위에 요일 보여주는 옵션 기본값 : true
//		    title: "테스트",	//캘린더 상단에 보여주는 타이틀
		    todayHighlight : true ,	//오늘 날짜에 하이라이팅 기능 기본값 :false 
//		    toggleActive : true,	//이미 선택된 날짜 선택하면 기본값 : false인경우 그대로 유지 true인 경우 날짜 삭제
		    weekStart : 0 ,//달력 시작 요일 선택하는 것 기본값은 0인 일요일 
		    language : "ko"//달력의 언어 선택, 그에 맞는 js로 교체해줘야한다.
//		    ,container:"input"
			,orientation:"bottom"
		}).on("changeDate",function(e){
			
		});//datepicker end
		
		var now = new Date();
		
		var year = now.getFullYear();
		var month = checkDate(now.getMonth()+1);
		var date = checkDate(now.getDate());

		var hour = checkDate(now.getHours());
		var minute = checkDate(now.getMinutes());
		var second = checkDate(now.getSeconds());
		
		$("#dateTime").text(year+"-"+month+"-"+date+" "+hour+":"+minute+":"+second);

		$("#top_edate").datepicker("update",year+"-"+month+"-"+date);
		
		var before = new Date();
		before.setFullYear(before.getFullYear(), before.getMonth(), before.getDate()-1);

		var b_year = before.getFullYear();
		var b_month = checkDate(before.getMonth()+1);
		var b_date = checkDate(before.getDate());
		
		$("#top_sdate").datepicker("update",b_year+"-"+b_month+"-"+b_date);

		// 30초마다 시간 불러오기
		timer = setInterval(function(){

			now = new Date();
			
			year = now.getFullYear();
			month = checkDate(now.getMonth()+1);
			date = checkDate(now.getDate());

			hour = checkDate(now.getHours());
			minute = checkDate(now.getMinutes());
			second = checkDate(now.getSeconds());
			
			$("#dateTime").text(year+"-"+month+"-"+date+" "+hour+":"+minute+":"+second);
		}, 10000);

		// 30초마다 리로드
/*		ccfinfointerval = setInterval("getBCFinfo_top()", 10000);
		ccfstateinterval = setInterval("getCCFstate_top()", 10000);
		boxinterval = setInterval(function(){
			interval_cnt ++ ;
			getCCFBOX_top();
		}, 10000);
*/
		imageInterval = setInterval("getImageActive_top()",1300);
		
			// 로드 시 텍스트 값 공란
			$(".top.rt_s").text("　");		// 탈지로 잔여시간
			$(".top.st_s").text("　");		// 탈지로 설정시간
			$(".top.rt_p").text("　");		// 예열 잔여시간
			$(".top.st_p").text("　");		// 예열 설정시간
			$(".top.rt_so1").text("　");		// 소입1 잔여시간
			$(".top.st_so1").text("　");		// 소입1 설정시간
			$(".top.rt_so2").text("　");		// 소입2 잔여시간
			$(".top.st_so2").text("　");		// 소입2 설정시간
			$(".top.rt_q").text("　");		// 퀜칭 잔여시간
			$(".top.st_q").text("　");		// 퀜칭 설정시간
			$(".top.rt_d").text("　");		// 드레인 잔여시간
			$(".top.st_d").text("　");		// 드레인 설정시간
			$(".top.cn_c").text("　");		// 침탄 cycle no
			$(".top.cn_d").text("　");		// 확산 cycle no
			$(".top.rpm").text("　");		// RPM
/*
			getBCFinfo_top();
			getCCFstate_top();
			getCCFBOX_top();
*/
	});
	
	//이벤트		
	$("#hogi1_out").on("click", function(){
		//1호기 출고요청
		
		if(!confirm("1호기 출고요청하시겠습니까?")){
			return;
		}
		
		$.ajax({
			url:"DB/03_process_02_release.jsp",
			type:"post",
			dataType:"json",
			data:{"hogi":1},
			success:function(result){
//				window.close();
			}
		});
	});
	
	// 월(month) 한자리 수 일 때 앞에 '0' 붙혀줌
	function checkDate(i) {
		var result;
	 	if(i<=9){
	 		result = "0"+i;
		}else{
			result = i;
		}
	   	return result;
	}

	// 열처리 데이터 관리 팝업창
	function getPopupData(){

		var width = window.screen.width;
		var height = window.screen.height;
		
		var popupx = width-width;
		var popupy = height-height;
		
		openWin = window.open('/transys/util/managePopup', '', 'status=no, width='+width+', height='+height+', menubar=1, left='+popupx+',top='+ popupy+', screenX='+popupx+', screenY='+popupy);
	}

	// 박스별 세부 정보 팝업창
	function getPopupDetail_top(value){
//		$(".top.box_no16").text(
		var pum; 
		if(value != 23){
			pum = $(".top.box_no"+value).text();
		}else{
			pum = $(".top.box23_dw.box_no"+value).text();
		}
		
		if(pum.length > 2){
			pum = pum.substring(0,2);
		}

		
		/*큰화면
		var width = (window.screen.width)-620;
		var height = (window.screen.height)-630;
		*/
		var width = (window.screen.width)-300;
		var height = (window.screen.height)-630;
		
		var popupx = width-(width/2)-400;
		var popupy = height-(height/2);
		
		openWin = window.open('popup/00_detail_info.jsp?num=1&box='+pum, '', 'status=no, width='+width+', height='+height+', menubar=1, left='+popupx+',top='+ popupy+', screenX='+popupx+', screenY='+popupy);
	}

	
	/* info */
	function getBCFinfo_top(){	
		$.ajax({
			type:"POST",
			url:"DB/CCF_info_22.jsp",
			cache : false,
			dataType:"json",
			data:{"num":"1"},
			success:function(result){
		        var rt_s = result.rt_s;		//탈지로 잔여시간
		        var st_s = result.st_s;		//탈지로 설정시간
		        var rt_p = result.rt_p;		//예열 잔여시간
		        var st_p = result.st_p;		//예열 설정시간
		        var rt_so1 = result.rt_so1;	//소입1 잔여시간
		        var st_so1 = result.st_so1;	//소입1 설정시간
		        var rt_so2 = result.rt_so2;	//소입2 잔여시간
		        var st_so2 = result.st_so2;	//소입2 설정시간
		        var rt_q = result.rt_q;		//퀜칭 잔여시간
		        var st_q = result.st_q;		//퀜칭 설정시간
		        var rt_d = result.rt_d;		//드레인 잔여시간
		        var st_d = result.st_d;		//드레인 설정시간
		        
		        var cn_c = result.cn_c;		//침탄 cycle no
		        var cn_d = result.cn_d;		//확산 cycle no
		        var rpm = result.rpm;		//RPM


				if(rt_s == null || rt_s == "null" || rt_s == "" ){
					$(".top.rt_s").text("　");		// 탈지로 잔여시간
				}else{
					$(".top.rt_s").text(rt_s);
				}

				if(st_s == null || st_s == "null" || st_s == "" ){
					$(".top.st_s").text("　");		// 탈지로 설정시간
				}else{
					$(".top.st_s").text(st_s);
				}

				if(rt_p == null || rt_p == "null" || rt_p == "" ){
					$(".top.rt_p").text("　");		// 예열 잔여시간
				}else{
					$(".top.rt_p").text(rt_p);
				}

				if(st_p == null || st_p == "null" || st_p == "" ){
					$(".top.st_p").text("　");		// 예열 설정시간
				}else{
					$(".top.st_p").text(st_p);
				}

				if(rt_so1 == null || rt_so1 == "null" || rt_so1 == "" ){
					$(".top.rt_so1").text("　");		// 소입1 잔여시간
				}else{
					$(".top.rt_so1").text(rt_so1);
				}

				if(st_so1 == null || st_so1 == "null" || st_so1 == "" ){
					$(".top.st_so1").text("　");		// 소입1 설정시간
				}else{
					$(".top.st_so1").text(st_so1);
				}

				if(rt_so2 == null || rt_so2 == "null" || rt_so2 == "" ){
					$(".top.rt_so2").text("　");		// 소입2 잔여시간
				}else{
					$(".top.rt_so2").text(rt_so2);
				}

				if(st_so2 == null || st_so2 == "null" || st_so2 == "" ){
					$(".top.st_so2").text("　");		// 소입2 설정시간
				}else{
					$(".top.st_so2").text(st_so2);
				}
		        
				if(rt_q == null || rt_q == "null" || rt_q == "" ){
					$(".top.rt_q").text("　");		// 퀜칭 잔여시간
				}else{
					$(".top.rt_q").text(rt_q);
				}
		        
				if(st_q == null || st_q == "null" || st_q == "" ){
					$(".top.st_q").text("　");		// 퀜칭 설정시간
				}else{
					$(".top.st_q").text(st_q);
				}

				if(rt_d == null || rt_d == "null" || rt_d == "" ){
					$(".top.rt_d").text("　");		// 드레인 잔여시간
				}else{
					$(".top.rt_d").text(rt_d);
				}

				if(st_d == null || st_d == "null" || st_d == "" ){
					$(".top.st_d").text("　");		// 드레인 설정시간
				}else{
					$(".top.st_d").text(st_d);
				}

				if(cn_c == null || cn_c == "null" || cn_c == "" ){
					$(".top.cn_c").text("　");		// 침탄 cycle no
				}else{
					$(".top.cn_c").text(cn_c);
				}

				if(cn_d == null || cn_d == "null" || cn_d == "" ){
					$(".top.cn_d").text("　");		// 확산 cycle no
				}else{
					$(".top.cn_d").text(cn_d);
				}

				if(rpm == null || rpm == "null" || rpm == "" ){
					$(".top.rpm").text("　");		// RPM
				}else{
					$(".top.rpm").text(rpm);
				}

				/* if(p_name == null || p_name == "null" || p_name == "" ){
				$("#top_p_name").text("　");		// 품명
				}else{
					$("#top_p_name").text(p_name);		// 품명
					
					var length = p_name.length;
					//console.log(length);
					if(length > 20){
						$("#top_p_name").css("font-size", "-=7");		// 특이사항
						$("#top_p_name").css("top", "768px");		// 특이사항
					}
				} */
				
			}, // success 끝
			error: function(req, status) {
				if (req.status == 0 || status == "timeout") {
					alert("네트워크 연결 확인 후 다시 시도해주세요.");
				} else {
					alert("처리중 예외가 발생하였습니다. 브라우저를 완전히 종료 후 다시 시도해 보시기 바랍니다.");
				}
			},
		})
	}
	
	var top_sa_ev_state;

	var top_s_fan_state;
	var top_p_fan_state;
	var top_c_fan_state;
	var top_d_fan_state;
	var top_so1_fan_state;
	var top_so2_fan_state;
	
	var top_sa_agi_state;
	
	var top_p_roller_state;
	var top_c_roller_state;
	var top_d_roller_state;
	var top_so1_roller_state;
	var top_so2_roller_state;	
	
	/* Status */
	function getCCFstate_top(){
		$.ajax({
			type:"POST",
			url:"DB/CCF_state.jsp",
			cache : false,
			dataType:"json",
			data:{"num":"1"},
			success:function(result){
				/* 이미지 */
				var jo_state = result.jo_state;			// ccf 수동, 자동 조깅 중 표시
				var s_r_state = result.s_r_state;		// 탈지로 리트리버 위치
				var s_fdoor = result.s_fdoor;			// 탈지로 입구 열림, 닫힘
				var s_edoor = result.s_edoor;			// 탈지로 출구 열림, 닫힘
				var s_fan = result.s_fan;				// 탈지로 팬 동작, 이상, 정지
				var p_fdoor = result.p_fdoor;			// 예열 입구 열림, 닫힘
				var p_edoor = result.p_edoor;			// 예열 출구 열림, 닫힘
				var p_fan = result.p_fan;				// 예열 팬 동작, 이상, 정지
				var p_roller = result.p_roller;			// 예열 롤러 방향 좌, 우
				var p_jo_state = result.p_jo_state;		// 예열 자동, 수동조깅 표시
				var c_fan = result.c_fan;				// 침탄 팬 동작, 이상, 정지
				var c_roller = result.c_roller;			// 침탄 롤러 방향 좌, 우
				var l_jo_state = result.l_jo_state;		// 로 자동, 수동 조깅 표시
				var d_fan = result.d_fan;				// 확산 팬 동작, 이상, 정지
				var d_roller = result.d_roller;			// 확산 롤러 방향 좌, 우
				var so_fdoor = result.so_fdoor;			// 소입 입구 열림, 닫힘
				var so_mdoor = result.so_mdoor;			// 소입 중간문 열림, 닫힘
				var so_edoor = result.so_edoor;			// 소입 출구 열림, 닫힘
				var so1_fan = result.so1_fan;			// 소입1 팬 동작, 이상, 정지
				var so1_roller = result.so1_roller;		// 소입1 롤러 방향 좌, 우
				var so1_jo_state = result.so1_jo_state;	// 소입1 자동, 수동 조깅
				var so2_fan = result.so2_fan;			// 소입2 팬 동작, 이상, 정지
				var so2_roller = result.so2_roller;		// 소입2 롤러 방향 좌, 우
				var so2_jo_state = result.so2_jo_state;	// 소입2 자동, 수동 조깅
				var so2_ff = result.so2_ff;				// 소입2 고속전진
				var sa_r_state = result.sa_r_state;		// ccf 수동, 자동 조깅 중 표시
				var sa_agi = result.sa_agi;				// salt조 아지테이터
				var sa_ev = result.sa_ev;				// salt조 EV 상,하
				var sa_b_state = result.sa_b_state;		// salt조 박스 기울기
				sa_ev_state = sa_ev;

				var con01 = result.con01;				// 컨베어 01 - 14
				var con02 = result.con02;				// 
				var con03 = result.con03;				// 
				var con04 = result.con04;				// 
				var con05 = result.con05;				// 
				var con06 = result.con06;				// 
				var con07 = result.con07;				// 
				var con08 = result.con08;				// 
				var con09 = result.con09;				// 
				var con10 = result.con10;				// 
				var con11 = result.con11;				// 
				var con12 = result.con12;				// 
				var con13 = result.con13;				// 
				var con14 = result.con14;				//
				var con15 = result.con15;				// 
				
				var clu01 = result.clu01;				// 클러치 01
				var clu02 = result.clu02;				// 클러치 02
				
				var lift01 = result.lift01;				// 리프터 1-2
				var lift02 = result.lift02;

				top_s_fan_state = s_fan;
				top_p_fan_state = p_fan;
				top_c_fan_state = c_fan;
				top_d_fan_state = d_fan;
				top_so1_fan_state = so1_fan;
				top_so2_fan_state = so2_fan;
				
				top_sa_agi_state = sa_agi;
				
				top_p_roller_state = p_roller;
				top_c_roller_state = c_roller;
				top_d_roller_state = d_roller;
				top_so1_roller_state = so1_roller;
				top_so2_roller_state = so2_roller;
				
				
				if(lift01 == "1"){
					$(".top.lift01_up").show();
					$(".top.lift01_dn").hide();
				}else{
					$(".top.lift01_up").hide();
					$(".top.lift01_dn").show();
				}

				if(lift02 == "1"){
					$(".top.lift02_up").show();
					$(".top.lift02_dn").hide();
				}else{
					$(".top.lift02_up").hide();
					$(".top.lift02_dn").show();
				}
				
				if(con01 == "1"){
					$(".top.con01").show();
					$(".top.con01_off").hide();
				}else{
					$(".top.con01").hide();
					$(".top.con01_off").show();
				}
				
				if(con02 == "1"){
					$(".top.con02").show();
					$(".top.con02_off").hide();
				}else{
					$(".top.con02").hide();
					$(".top.con02_off").show();
				}
				
				if(con03 == "1"){
					$(".top.con03").show();
					$(".top.con03_off").hide();
				}else{
					$(".top.con03").hide();
					$(".top.con03_off").show();
				}
				
				if(con04 == "1"){
					$(".top.con04").show();
					$(".top.con04_off").hide();
				}else{
					$(".top.con04").hide();
					$(".top.con04_off").show();
				}
				
				if(con05 == "1"){
					$(".top.con05").show();
					$(".top.con05_off").hide();
				}else{
					$(".top.con05").hide();
					$(".top.con05_off").show();
				}
				
				if(con06 == "1"){
					$(".top.con06").show();
					$(".top.con06_off").hide();
				}else{
					$(".top.con06").hide();
					$(".top.con06_off").show();
				}
				
				if(con07 == "1"){
					$(".top.con07").show();
					$(".top.con07_off").hide();
				}else{
					$(".top.con07").hide();
					$(".top.con07_off").show();
				}
				
				if(con08 == "1"){
					$(".top.con08").show();
					$(".top.con08_off").hide();
				}else{
					$(".top.con08").hide();
					$(".top.con08_off").show();
				}
				
				if(con09 == "1"){
					$(".top.con09").show();
					$(".top.con09_off").hide();
				}else{
					$(".top.con09").hide();
					$(".top.con09_off").show();
				}
				
				if(con10 == "1"){
					$(".top.con10").show();
					$(".top.con10_off").hide();
				}else{
					$(".top.con10").hide();
					$(".top.con10_off").show();
				}
				
				if(con11 == "1"){
					$(".top.con11").show();
					$(".top.con11_off").hide();
				}else{
					$(".top.con11").hide();
					$(".top.con11_off").show();
				}
				
				if(con12 == "1"){
					$(".top.con12").show();
					$(".top.con12_off").hide();
				}else{
					$(".top.con12").hide();
					$(".top.con12_off").show();
				}
				
				if(con13 == "1"){
					$(".top.con13").show();
					$(".top.con13_off").hide();
				}else{
					$(".top.con13").hide();
					$(".top.con13_off").show();
				}
				
				if(con14 == "1"){
					$(".top.con14").show();
					$(".top.con14_off").hide();
				}else{
					$(".top.con14").hide();
					$(".top.con14_off").show();
				}

				if(clu01 == "1"){
					$(".top.cl01").show();
					$(".top.cl01_off").hide();
				}else{
					$(".top.cl01").hide();
					$(".top.cl01_off").show();
				}
				
				if(clu02 == "1"){
					$(".top.cl02").show();
					$(".top.cl02_off").hide();
				}else{
					$(".top.cl02").hide();
					$(".top.cl02_off").show();
				}

				
				/* console.log("pre_proc 예열중 : " + pre_proc);
				console.log("fs 팬정지 : " + fs);
				console.log("pre 예열 : " + pre);
				console.log("carb 침탄 : " + carb);
				console.log("diff 확산 : " + diff);
				console.log("dw 강온 : " + dw);
				console.log("cr 균열 : " + cr);
				console.log("tm 소입 : " + tm);
				console.log("dr 드레인 : " + dr); */

				if(jo_state == "1"){
					$("#top_jo_state_auto").show();
					$("#top_jo_state_man").hide();
				}else{
					$("#top_jo_state_auto").hide();
					$("#top_jo_state_man").show();
				}

				// 탈지로
				if(s_r_state == "1"){
					$("#top_s_r_state_r").show();
					$("#top_s_r_state_g").hide();
				}else{
					$("#top_s_r_state_r").hide();
					$("#top_s_r_state_g").show();
				}
				
				
				if(s_fdoor == "0"){
					$("#top_s_fdoor_r").show();
					$("#top_s_fdoor_g").hide();
				}else{
					$("#top_s_fdoor_r").hide();
					$("#top_s_fdoor_g").show();
				}
				
				
				if(s_edoor == "0"){
					$("#top_s_edoor_r").show();
					$("#top_s_edoor_g").hide();
				}else{
					$("#top_s_edoor_r").hide();
					$("#top_s_edoor_g").show();
				}
				
				
				if(s_fan == 0){
					$("#top_s_fan00").show();
					$("#top_s_fan02").hide();
					$("#top_s_fan03").hide();
				}else if(s_fan == 1){
					$("#top_s_fan00").hide();
					$("#top_s_fan02").hide();
					$("#top_s_fan03").show();

				}else if(s_fan == 2){
					$("#top_s_fan00").hide();
					$("#top_s_fan02").show();
					$("#top_s_fan03").hide();
				}else{
					$(".top.s_fan").hide();
				}

				// 예열
				if(p_fdoor == "0"){
					$("#top_p_fdoor_r").show();
					$("#top_p_fdoor_g").hide();
				}else{
					$("#top_p_fdoor_r").hide();
					$("#top_p_fdoor_g").show();
				}
				
				
				if(p_edoor == "0"){
					$("#top_p_edoor_r").show();
					$("#top_p_edoor_g").hide();
				}else{
					$("#top_p_edoor_r").hide();
					$("#top_p_edoor_g").show();
				}
				

				if(p_fan == 0){
					$("#top_p_fan00").show();
					$("#top_p_fan02").hide();
					$("#top_p_fan03").hide();
				}else if(p_fan == 1){
					$("#top_p_fan00").hide();
					$("#top_p_fan02").hide();
					$("#top_p_fan03").show();

				}else if(p_fan == 2){
					$("#top_p_fan00").hide();
					$("#top_p_fan02").show();
					$("#top_p_fan03").hide();
				}else{
					$(".top.p_fan").hide();
				}


				if(p_roller == "1"){
					/* 예열 롤러 방향 - 좌 */
					$("#top_p_roller_r").hide();
					$("#top_p_roller_rr").hide();

				}else if(p_roller == "2"){
					/* 예열 롤러 방향 - 우 */
					$("#top_p_roller_l").hide();

					
				}else{
					$("#top_p_roller_l").hide();
					$("#top_p_roller_r").hide();
				}

				if(p_jo_state == "1"){
					$("#top_p_jo_state_a").show();
					$("#top_p_jo_state_m").hide();
				}/* else if(p_jo_state == "2"){
					$("#top_p_jo_state_a").hide();
					$("#top_p_jo_state_m").show();
				} */else{
					$("#top_p_jo_state_a").hide();
					$("#top_p_jo_state_m").show();
				}
				
				// 침탄
				if(c_fan == 0){
					$("#top_c_fan00").show();
					$("#top_c_fan02").hide();
					$("#top_c_fan03").hide();
				}else if(c_fan == 1){
					$("#top_c_fan00").hide();
					$("#top_c_fan02").hide();
					$("#top_c_fan03").show();

				}else if(c_fan == 2){
					$("#top_c_fan00").hide();
					$("#top_c_fan02").show();
					$("#top_c_fan03").hide();
				}else{
					$(".top.c_fan").hide();
				}


				if(c_roller == "1"){
					/* 침탄 롤러 방향 - 좌 */
					$("#top_c_roller_r").hide();
					$("#top_c_roller_rr").hide();


				}else if(c_roller == "2"){
					/* 침탄 롤러 방향 - 우 */
					$("#top_c_roller_l").hide();
					$("#top_c_roller_rl").hide();

					
				}else{
					$("#top_c_roller_l").hide();
					$("#top_c_roller_r").hide();
				}

				// 로
				if(l_jo_state == "1"){
					$("#top_l_jo_state_a").show();
					$("#top_l_jo_state_m").hide();
				}/* else if(l_jo_state == "2"){
					$("#top_l_jo_state_a").hide();
					$("#top_l_jo_state_m").show();
				} */else{
					$("#top_l_jo_state_a").hide();
					$("#top_l_jo_state_m").show();
				}

				// 확산
				if(d_fan == 0){
					$("#top_d_fan00").show();
					$("#top_d_fan02").hide();
					$("#top_d_fan03").hide();
				}else if(d_fan == 1){
					$("#top_d_fan00").hide();
					$("#top_d_fan02").hide();
					$("#top_d_fan03").show();

				}else if(d_fan == 2){
					$("#top_d_fan00").hide();
					$("#top_d_fan02").show();
					$("#top_d_fan03").hide();
				}else{
					$(".top.d_fan").hide();
				}


				if(d_roller == "1"){
					/* 확산 롤러 방향 - 좌 */
					$("#top_d_roller_r").hide();
					$("#top_d_roller_rr").hide();


				}else if(d_roller == "2"){
					/* 확산 롤러 방향 - 우 */
					$("#top_d_roller_l").hide();
					$("#top_d_roller_rl").hide();

					
				}else{
					$("#top_d_roller_l").hide();
					$("#top_d_roller_r").hide();
				}

				// 소입
				// 입구
				if(so_fdoor == "0"){
					$("#top_so_fdoor_r").show();
					$("#top_so_fdoor_g").hide();
				}else{
					$("#top_so_fdoor_r").hide();
					$("#top_so_fdoor_g").show();
				}
				
				// 중간
				if(so_mdoor == "0"){
					$("#top_so_mdoor_r").show();
					$("#top_so_mdoor_g").hide();
				}else{
					$("#top_so_mdoor_r").hide();
					$("#top_so_mdoor_g").show();
				}
				
				// 출구
				if(so_edoor == "0"){
					$("#top_so_edoor_r").show();
					$("#top_so_edoor_g").hide();
				}else{
					$("#top_so_edoor_r").hide();
					$("#top_so_edoor_g").show();
				}
				
				
				// 소입1
				if(so1_fan == 0){
					$("#top_so1_fan00").show();
					$("#top_so1_fan02").hide();
					$("#top_so1_fan03").hide();
				}else if(so1_fan == 1){
					$("#top_so1_fan00").hide();
					$("#top_so1_fan02").hide();
					$("#top_so1_fan03").show();

				}else if(so1_fan == 2){
					$("#top_so1_fan00").hide();
					$("#top_so1_fan02").show();
					$("#top_so1_fan03").hide();
				}else{
					$(".top.so1_fan").hide();
				}

				
				if(so1_roller == "1"){
					/* 소입1 롤러 방향 - 좌 */
					$("#top_so1_roller_r").hide();
					$("#top_so1_roller_rr").hide();


				}else if(so1_roller == "2"){
					/* 소입1 롤러 방향 - 우 */
					$("#top_so1_roller_l").hide();
					$("#top_so1_roller_rl").hide();

					
				}else{
					$("#top_so1_roller_l").hide();
					$("#top_so1_roller_r").hide();
				}


				if(so1_jo_state == "1"){
					$("#top_so1_jo_state_a").show();
					$("#top_so1_jo_state_m").hide();
				}/* else if(so1_jo_state == "2"){
					$("#top_so1_jo_state_a").hide();
					$("#top_so1_jo_state_m").show();
				} */else{
					$("#top_so1_jo_state_a").hide();
					$("#top_so1_jo_state_m").show();
				}


				// 소입2
				if(so2_fan == 0){
					$("#top_so2_fan00").show(); // 정지
					$("#top_so2_fan02").hide(); // 이상
					$("#top_so2_fan03").hide(); // 정상
				}else if(so2_fan == 1){
					$("#top_so2_fan00").hide();
					$("#top_so2_fan02").hide();
					$("#top_so2_fan03").show();
					

				}else if(so2_fan == 2){
					$("#top_so2_fan00").hide();
					$("#top_so2_fan02").show();
					$("#top_so2_fan03").hide();
				}else{
					$(".top.so2_fan").hide();
				}

				
				if(so2_roller == "1"){
					/* 소입2 롤러 방향 - 좌 */
					$("#top_so2_roller_r").hide();
					$("#top_so2_roller_rr").hide();


				}else if(so2_roller == "2"){
					/* 소입2 롤러 방향 - 우 */
					$("#top_so2_roller_l").hide();
					$("#top_so2_roller_rl").hide();

				}else{
					$("#top_so2_roller_l").hide();
					$("#top_so2_roller_r").hide();
				}


				if(so2_jo_state == "1"){
					$("#top_so2_jo_state_a").show();
					$("#top_so2_jo_state_m").hide();
				}/* else if(so2_jo_state == "2"){
					$("#top_so2_jo_state_a").hide();
					$("#top_so2_jo_state_m").show();
				} */else{
					$("#top_so2_jo_state_a").hide();
					$("#top_so2_jo_state_m").show();
				}


				if(so2_ff == "1"){
					$(".top.so2_ff").show();
				}else{
					$(".top.so2_ff").hide();
				}

				// 솔트조
				if(sa_ev == "1"){
					$(".top.sa_ev_d").show();
					$(".top.sa_ev_u").hide();
				}else{
					$(".top.sa_ev_d").hide();
					$(".top.sa_ev_u").show();
				}
				
				
				if(s_r_state == "1"){
					$("#top_sa_r_state01").show();
					$("#top_sa_r_state02").hide();
					$("#top_sa_r_state03").hide();
				}else if(s_r_state == "2"){
					$("#top_sa_r_state01").hide();
					$("#top_sa_r_state02").show();
					$("#top_sa_r_state03").hide();
				}else if(s_r_state == "3"){
					$("#top_sa_r_state01").hide();
					$("#top_sa_r_state02").hide();
					$("#top_sa_r_state03").show();
				}else{
					$("#top_sa_r_state01").hide();
					$("#top_sa_r_state02").hide();
					$("#top_sa_r_state03").hide();
				}

				
				if(sa_agi == "1"){
					/* 아지테이터 */
				}else if(sa_agi == "2"){
					 $(".top.sa_agi").hide();
					 $("#top_sa_agi_r").show();
				}else{
					 $(".top.sa_agi").hide();
				}

				/* if(sa_b_state == "1"){
					// 박스 기울기
					$(".top.box24").show();
				}else{
					 $(".top.box24").hide();
				} */

			}, // success 끝
			error: function(req, status) {
				if (req.status == 0 || status == "timeout") {

					alert("네트워크 연결 확인 후 다시 시도해주세요.");
				} else {
					alert("처리중 예외가 발생하였습니다. 브라우저를 완전히 종료 후 다시 시도해 보시기 바랍니다.");
				}
			},
		})
	}
	

	/* BOX */
	function getCCFBOX_top(){	
		$.ajax({
			type:"POST",
			url:"DB/CCF_box.jsp",
			cache : false,
			dataType:"json",
			data:{"num":"1"},
			success:function(result){
		        var box_lno = result.box_lno;
		        var box_cno = result.box_cno;
		        var box1 = result.box1;
		        var box_no1 = result.box_no1;
		        var box2 = result.box2;
		        var box_no2 = result.box_no2;
		        var box3 = result.box3;
		        var box_no3 = result.box_no3;
		        var box4 = result.box4;
		        var box_no4 = result.box_no4;
		        var box5 = result.box5;
		        var box_no5 = result.box_no5;
		        var box6 = result.box6;
		        var box_no6 = result.box_no6;
		        var box7 = result.box7;
		        var box_no7 = result.box_no7;
		        var box8 = result.box8;
		        var box_no8 = result.box_no8;
		        var box9 = result.box9;
		        var box_no9 = result.box_no9;
		        var box10 = result.box10;
		        var box_no10 = result.box_no10;
		        var box11 = result.box11;
		        var box_no11 = result.box_no11;
		        var box12 = result.box12;
		        var box_no12 = result.box_no12;
		        var box13 = result.box13;
		        var box_no13 = result.box_no13;
		        var box14 = result.box14;
		        var box_no14 = result.box_no14;
		        var box15 = result.box15;
		        var box_no15 = result.box_no15;
		        var box16 = result.box16;
		        var box_no16 = result.box_no16;
		        var box17 = result.box17;
		        var box_no17 = result.box_no17;
		        var box18 = result.box18;
		        var box_no18 = result.box_no18;
		        var box19 = result.box19;
		        var box_no19 = result.box_no19;
		        var box20 = result.box20;
		        var box_no20 = result.box_no20;
		        var box21 = result.box21;
		        var box_no21 = result.box_no21;
		        var box22 = result.box22;
		        var box_no22 = result.box_no22;
		        var box23 = result.box23;
		        var box_no23 = result.box_no23;
		        var box24 = result.box24;
		        var box_no24 = result.box_no24;
		        var box25 = result.box25;
		        var box_no25 = result.box_no25;
		        var box26 = result.box26;
		        var box_no26 = result.box_no26;
		        var box27 = result.box27;
		        var box_no27 = result.box_no27;
		        var box28 = result.box28;
		        var box_no28 = result.box_no28;

		        $(".top.box_lno").text(box_cno);	
	        	$(".top.box_cno").text(box_lno);
	        	
	        	$(".top.box23_mid").hide();	//기울기
	        	
	        	//SALT 엘레베이터 아래에 있을 때
	        	if(sa_ev_state == 0){
	        		if(box23 == 0){
						$(".top.box23_up").hide();
						$(".top.box23_dw").hide();        			
	        		}else{
						$(".top.box23_up").hide();
						$(".top.box23_dw").show();
	        		}
	        	}else{
	        		//SALT 엘레베이터 아래에 있을 때
	        		if(box23 == 0){
						$(".top.box23_up").hide();
						$(".top.box23_dw").hide();        			
	        		}else{
						$(".top.box23_up").show();
						$(".top.box23_dw").hide();
	        		}	        		
	        	}
	        	
	        	
	        	if(box_cno != null){
		        	var length = box_cno.length;
		        	if(interval_cnt == 0){
		        		if(length > 1){
							$(".top.box_cno").css("left", "-=7");
							past = length;
						}
		        	}else{
		        		if(past > 1){
//		    	        	console.log("past : " + past);
							$(".top.box_cno").css("left", "+=7");
							past = 0;
							
							if(length > 1){
			    	        	
								$(".top.box_cno").css("left", "-=7");
							} 
						}
		        	}
				}

		        if(box1 == "0"){
					$(".top.box1").hide();
				}else if(box1 == "1"){
		        	$(".top.box_no1").text(box_no1);
					$(".top.box1").show();
					
					var length = box_no1.length;
					
					if(interval_cnt == 0){
						if(length > 1){
							$(".top.box_no1").css("left", "-=4");
						} 		
					}else{
		        		if(past > 1){
		        			$(".top.box_no1").css("left", "+=4");
							past = 0;
							
							if(length > 1){
								$(".top.box_no1").css("left", "-=4");
							} 
						}
		        	}
				}

				if(box2 == "0"){	
					$(".top.box2").hide();
				}else if(box2 == "1"){
					$(".top.box_no2").text(box_no2);		
					$(".top.box2").show();

					var length = box_no2.length;
					
					if(interval_cnt == 0){
						if(length > 1){
							$(".top.box_no2").css("left", "-=4");
						} 		
					}else{
		        		if(past > 1){
		        			$(".top.box_no2").css("left", "+=4");
							past = 0;
							
							if(length > 1){
			    	        	
								$(".top.box_no2").css("left", "-=4");
							} 
						}
		        	}	
				}

				if(box3 == "0"){	
					$(".top.box3").hide();
				}else if(box3 == "1"){
					$(".top.box_no3").text(box_no3);		
					$(".top.box3").show();	
					
					var length = box_no3.length;
					
					if(interval_cnt == 0){
						if(length > 1){
							$(".top.box_no3").css("left", "-=4");
						} 		
					}else{
		        		if(past > 1){
		        			$(".top.box_no3").css("left", "+=4");
							past = 0;
							
							if(length > 1){
			    	        	
								$(".top.box_no3").css("left", "-=4");
							} 
						}
		        	}	
				}
				
				if(box4 == "0"){	
					$(".top.box4").hide();
				}else if(box4 == "1"){
					$(".top.box_no4").text(box_no4);		
					$(".top.box4").show();
					
					var length = box_no4.length;
					
					if(interval_cnt == 0){
						if(length > 1){
							$(".top.box_no4").css("left", "-=4");
						} 		
					}else{
		        		if(past > 1){
		        			$(".top.box_no4").css("left", "+=4");
							past = 0;
							
							if(length > 1){
			    	        	
								$(".top.box_no4").css("left", "-=4");
							} 
						}
		        	}		
				}
				
				if(box5 == "0"){	
					$(".top.box5").hide();
				}else if(box5 == "1"){
					$(".top.box_no5").text(box_no5);		
					$(".top.box5").show();	
					
					var length = box_no5.length;
					
					if(interval_cnt == 0){
						if(length > 1){
							$(".top.box_no5").css("left", "-=4");
						} 		
					}else{
		        		if(past > 1){
		        			$(".top.box_no5").css("left", "+=4");
							past = 0;
							
							if(length > 1){
			    	        	
								$(".top.box_no5").css("left", "-=4");
							} 
						}
		        	}	
				}
				
				if(box6 == "0"){	
					$(".top.box6").hide();
				}else if(box6 == "1"){
					$(".top.box_no6").text(box_no6);		
					$(".top.box6").show();
					
					var length = box_no6.length;
					
					if(interval_cnt == 0){
						if(length > 1){
							$(".top.box_no6").css("left", "-=4");
						} 		
					}else{
		        		if(past > 1){
		        			$(".top.box_no6").css("left", "+=4");
							past = 0;
							
							if(length > 1){
			    	        	
								$(".top.box_no6").css("left", "-=4");
							} 
						}
		        	}		
				}
				
				if(box7 == "0"){	
					$(".top.box7").hide();
				}else if(box7 == "1"){
					$(".top.box_no7").text(box_no7);		
					$(".top.box7").show();
					
					var length = box_no7.length;
					
					if(interval_cnt == 0){
						if(length > 1){
							$(".top.box_no7").css("left", "-=4");
						} 		
					}else{
		        		if(past > 1){
		        			$(".top.box_no7").css("left", "+=4");
							past = 0;
							
							if(length > 1){
			    	        	
								$(".top.box_no7").css("left", "-=4");
							} 
						}
		        	}		
				}
				
				if(box8 == "0"){	
					$(".top.box8").hide();
				}else if(box8 == "1"){
					$(".top.box_no8").text(box_no8);		
					$(".top.box8").show();
					
					var length = box_no8.length;
					
					if(interval_cnt == 0){
						if(length > 1){
							$(".top.box_no8").css("left", "-=4");
						} 		
					}else{
		        		if(past > 1){
		        			$(".top.box_no8").css("left", "+=4");
							past = 0;
							
							if(length > 1){
			    	        	
								$(".top.box_no8").css("left", "-=4");
							} 
						}
		        	}		
				}
				
				if(box9 == "0"){	
					$(".top.box9").hide();
				}else if(box9 == "1"){
					$(".top.box_no9").text(box_no9);		
					$(".top.box9").show();
					
					var length = box_no9.length;
					
					if(interval_cnt == 0){
						if(length > 1){
							$(".top.box_no9").css("left", "-=4");
						} 		
					}else{
		        		if(past > 1){
		        			$(".top.box_no9").css("left", "+=4");
							past = 0;
							
							if(length > 1){
			    	        	
								$(".top.box_no9").css("left", "-=4");
							} 
						}
		        	}		
				}
				
				if(box10 == "0"){	
					$(".top.box10").hide();
				}else if(box10 == "1"){
					$(".top.box_no10").text(box_no10);		
					$(".top.box10").show();	
					
					var length = box_no10.length;
					
					if(interval_cnt == 0){
						if(length > 1){
							$(".top.box_no10").css("left", "-=4");
						} 		
					}else{
		        		if(past > 1){
		        			$(".top.box_no10").css("left", "+=4");
							past = 0;
							
							if(length > 1){
			    	        	
								$(".top.box_no10").css("left", "-=4");
							} 
						}
		        	}	
				}
				
				if(box11 == "0"){	
					$(".top.box11").hide();
				}else if(box11 == "1"){
					$(".top.box_no11").text(box_no11);		
					$(".top.box11").show();
					
					var length = box_no11.length;
					
					if(interval_cnt == 0){
						if(length > 1){
							$(".top.box_no11").css("left", "-=4");
						} 		
					}else{
		        		if(past > 1){
		        			$(".top.box_no11").css("left", "+=4");
							past = 0;
							
							if(length > 1){
			    	        	
								$(".top.box_no11").css("left", "-=4");
							} 
						}
		        	}		
				}
				
				if(box12 == "0"){	
					$(".top.box12").hide();
				}else if(box12 == "1"){
					$(".top.box_no12").text(box_no12);		
					$(".top.box12").show();	
					
					var length = box_no12.length;
					
					if(interval_cnt == 0){
						if(length > 1){
							$(".top.box_no12").css("left", "-=4");
						} 		
					}else{
		        		if(past > 1){
		        			$(".top.box_no12").css("left", "+=4");
							past = 0;
							
							if(length > 1){
			    	        	
								$(".top.box_no12").css("left", "-=4");
							} 
						}
		        	}	
				}
				
				if(box13 == "0"){	
					$(".top.box13").hide();
				}else if(box13 == "1"){
					$(".top.box_no13").text(box_no13);		
					$(".top.box13").show();	
					
					var length = box_no13.length;
					
					if(interval_cnt == 0){
						if(length > 1){
							$(".top.box_no13").css("left", "-=4");
						} 		
					}else{
		        		if(past > 1){
		        			$(".top.box_no13").css("left", "+=4");
							past = 0;
							
							if(length > 1){
			    	        	
								$(".top.box_no13").css("left", "-=4");
							} 
						}
		        	}	
				}
				
				if(box14 == "0"){	
					$(".top.box14").hide();
				}else if(box14 == "1"){
					$(".top.box_no14").text(box_no14);		
					$(".top.box14").show();
					
					var length = box_no14.length;
					
					if(interval_cnt == 0){
						if(length > 1){
							$(".top.box_no14").css("left", "-=4");
						} 		
					}else{
		        		if(past > 1){
		        			$(".top.box_no14").css("left", "+=4");
							past = 0;
							
							if(length > 1){
								$(".top.box_no14").css("left", "-=4");
							} 
						}
		        	}		
				}
				
				if(box15 == "0"){	
					$(".top.box15").hide();
				}else if(box15 == "1"){
					$(".top.box_no15").text(box_no15);		
					$(".top.box15").show();	
					
					var length = box_no15.length;
					
					if(interval_cnt == 0){
						if(length > 1){
							$(".top.box_no15").css("left", "-=4");
						} 		
					}else{
		        		if(past > 1){
		        			$(".top.box_no15").css("left", "+=4");
							past = 0;
							
							if(length > 1){
								$(".top.box_no15").css("left", "-=4");
							} 
						}
		        	}	
				}
				
				if(box16 == "0"){	
					$(".top.box16").hide();
				}else if(box16 == "1"){
					$(".top.box_no16").text(box_no16);		
					$(".top.box16").show();	
					
					var length = box_no16.length;
					
					if(interval_cnt == 0){
						if(length > 1){
							$(".top.box_no16").css("left", "-=4");
						} 		
					}else{
		        		if(past > 1){
		        			$(".top.box_no16").css("left", "+=4");
							past = 0;
							
							if(length > 1){
			    	        	
								$(".top.box_no16").css("left", "-=4");
							} 
						}
		        	}	
				}
				
				if(box17 == "0"){	
					$(".top.box17").hide();
				}else if(box17 == "1"){
					$(".top.box_no17").text(box_no17);		
					$(".top.box17").show();	
					
					var length = box_no17.length;
					
					if(interval_cnt == 0){
						if(length > 1){
							$(".top.box_no17").css("left", "-=4");
						} 		
					}else{
		        		if(past > 1){
		        			$(".top.box_no17").css("left", "+=4");
							past = 0;
							
							if(length > 1){
			    	        	
								$(".top.box_no17").css("left", "-=4");
							} 
						}
		        	}		
				}
				
				//console.log("box18 : " + box18);
				if(box18 == "0"){	
					$(".top.box18").hide();
				}else if(box18 == "1"){
					$(".top.box_no18").text(box_no18);		
					$(".top.box18").show();
					
					var length = box_no18.length;
					
					if(interval_cnt == 0){
						if(length > 1){
							$(".top.box_no18").css("left", "-=4");
						} 		
					}else{
		        		if(past > 1){
		        			$(".top.box_no18").css("left", "+=4");
							past = 0;
							
							if(length > 1){
			    	        	
								$(".top.box_no18").css("left", "-=4");
							} 
						}
		        	}			
				}
				
				if(box19 == "0"){	
					$(".top.box19").hide();
				}else if(box19 == "1"){
					$(".top.box_no19").text(box_no19);		
					$(".top.box19").show();	
					
					var length = box_no19.length;
					
					if(interval_cnt == 0){
						if(length > 1){
							$(".top.box_no19").css("left", "-=4");
						} 		
					}else{
		        		if(past > 1){
		        			$(".top.box_no19").css("left", "+=4");
							past = 0;
							
							if(length > 1){
			    	        	
								$(".top.box_no19").css("left", "-=4");
							} 
						}
		        	}		
				}
				
				if(box20 == "0"){	
					$(".top.box20").hide();
				}else if(box20 == "1"){
					$(".top.box_no20").text(box_no20);		
					$(".top.box20").show();
					
					var length = box_no20.length;
					
					if(interval_cnt == 0){
						if(length > 1){
							$(".top.box_no20").css("left", "-=4");
						} 		
					}else{
		        		if(past > 1){
		        			$(".top.box_no20").css("left", "+=4");
							past = 0;
							
							if(length > 1){
			    	        	
								$(".top.box_no20").css("left", "-=4");
							} 
						}
		        	}			
				}
				
				if(box21 == "0"){	
					$(".top.box21").hide();
				}else if(box21 == "1"){
					$(".top.box_no21").text(box_no21);		
					$(".top.box21").show();	
					
					var length = box_no21.length;
					
					if(interval_cnt == 0){
						if(length > 1){
							$(".top.box_no21").css("left", "-=4");
						} 		
					}else{
		        		if(past > 1){
		        			$(".top.box_no21").css("left", "+=4");
							past = 0;
							
							if(length > 1){
			    	        	
								$(".top.box_no21").css("left", "-=4");
							} 
						}
		        	}	
				}
				
				if(box22 == "0"){	
					$(".top.box22").hide();
				}else if(box22 == "1"){
					$(".top.box_no22").text(box_no22);		
					$(".top.box22").show();	
					
					var length = box_no22.length;
					
					if(interval_cnt == 0){
						if(length > 1){
							$(".top.box_no22").css("left", "-=4");
						} 		
					}else{
		        		if(past > 1){
		        			$(".top.box_no22").css("left", "+=4");
							past = 0;
							
							if(length > 1){
			    	        	
								$(".top.box_no22").css("left", "-=4");
							} 
						}
		        	}		
				}
				
				if(box23 == "0"){	
					$(".top.box23_dw").hide();
					$(".top.box23_up").hide();
				}else if(box23 == "1"){
					$(".top.box_no23").text(box_no23);
					
					if(sa_ev_state == 0){
						$(".top.box23_dw").hide();
						$(".top.box23_up").show();						
					}else{
						$(".top.box23_dw").show();
						$(".top.box23_up").hide();						
					}
					
					var length = box_no23.length;
					
					if(interval_cnt == 0){
						if(length > 1){
							$(".top.box_no23").css("left", "-=4");
						} 		
					}else{
		        		if(past > 1){
		        			$(".top.box_no23").css("left", "+=4");
							past = 0;
							
							if(length > 1){
			    	        	
								$(".top.box_no23").css("left", "-=4");
							} 
						}
		        	}		
				}
				
				if(box24 == "0"){	
					$(".top.box24").hide();
				}else if(box24 == "1"){
					$(".top.box_no24").text(box_no24);		
					$(".top.box24").show();	
					
					var length = box_no24.length;
					
					if(interval_cnt == 0){
						if(length > 1){
							$(".top.box_no24").css("left", "-=4");
						} 		
					}else{
		        		if(past > 1){
		        			$(".top.box_no24").css("left", "+=4");
							past = 0;
							
							if(length > 1){
			    	        	
								$(".top.box_no24").css("left", "-=4");
							} 
						}
		        	}		
				}
				
				if(box25 == "0"){	
					$(".top.box25").hide();
				}else if(box25 == "1"){
					$(".top.box_no25").text(box_no25);		
					$(".top.box25").show();
					
					var length = box_no25.length;
					
					if(interval_cnt == 0){
						if(length > 1){
							$(".top.box_no25").css("left", "-=4");
						} 		
					}else{
		        		if(past > 1){
		        			$(".top.box_no25").css("left", "+=4");
							past = 0;
							
							if(length > 1){
			    	        	
								$(".top.box_no25").css("left", "-=4");
							} 
						}
		        	}			
				}
				
				if(box26 == "0"){	
					$(".top.box26").hide();
				}else if(box26 == "1"){
					$(".top.box_no26").text(box_no26);		
					$(".top.box26").show();	
					
					var length = box_no26.length;
					
					if(interval_cnt == 0){
						if(length > 1){
							$(".top.box_no26").css("left", "-=4");
						} 		
					}else{
		        		if(past > 1){
		        			$(".top.box_no26").css("left", "+=4");
							past = 0;
							
							if(length > 1){
			    	        	
								$(".top.box_no26").css("left", "-=4");
							} 
						}
		        	}		
				}
				
				if(box27 == "0"){	
					$(".top.box27").hide();
				}else if(box27 == "1"){
					$(".top.box_no27").text(box_no27);		
					$(".top.box27").show();
					
					var length = box_no27.length;
					
					if(interval_cnt == 0){
						if(length > 1){
							$(".top.box_no27").css("left", "-=4");
						} 		
					}else{
		        		if(past > 1){
		        			$(".top.box_no27").css("left", "+=4");
							past = 0;
							
							if(length > 1){
			    	        	
								$(".top.box_no27").css("left", "-=4");
							} 
						}
		        	}			
				}
				
				if(box28 == "0"){	
					$(".top.box28").hide();
				}else if(box28 == "1"){
					$(".top.box_no28").text(box_no28);		
					$(".top.box28").show();
					
					var length = box_no28.length;
					
					if(interval_cnt == 0){
						if(length > 1){
							$(".top.box_no28").css("left", "-=4");
						} 		
					}else{
		        		if(past > 1){
		        			$(".top.box_no28").css("left", "+=4");
							past = 0;
							
							if(length > 1){
								$(".top.box_no28").css("left", "-=4");
							} 
						}
		        	}		
				}
/*				
				if(box29 == "0"){
					$(".top.box29").hide();
				}else if(box29 == "1"){
					$(".top.box_no29").text(box_no29);		
					$(".top.box29").show();	
					
					var length = box_no29.length;
					
					if(interval_cnt == 0){
						if(length > 1){
							$(".top.box_no29").css("left", "-=4");
						} 		
					}else{
		        		if(past > 1){
		        			$(".top.box_no29").css("left", "+=4");
							past = 0;
							
							if(length > 1){
			    	        	
								$(".top.box_no29").css("left", "-=4");
							} 
						}
		        	}	
				}
*/


			}, // success 끝
			error: function(req, status) {
				if (req.status == 0 || status == "timeout") {
					alert("네트워크 연결 확인 후 다시 시도해주세요.");
				} else {
					alert("처리중 예외가 발생하였습니다. 브라우저를 완전히 종료 후 다시 시도해 보시기 바랍니다.");
				}
			},
		})
	}
	
	function getImageActive_top(){
		if(top_s_fan_state == 1){
			$("#top_s_fan_run").toggle();
		}
		if(top_p_fan_state == 1){
			$("#top_p_fan_run").toggle();
		}
		if(top_c_fan_state == 1){
			$("#top_c_fan_run").toggle();
		}
		if(top_d_fan_state == 1){
			$("#top_d_fan_run").toggle();
		}
		if(top_so1_fan_state == 1){
			$("#top_so1_fan_run").toggle();
		}		
		if(top_so2_fan_state == 1){
			$("#top_so2_fan_run").toggle();
		}			

		//아지테이터
		if(top_sa_agi_state == 1){
			$(".top.sa_agi_on").toggle();
		}		
		
		//롤러 동작
		if(top_p_roller_state == 1){
			$("#top_p_roller_l").toggle();
		}else if(top_p_roller_state == 2){
			$("#top_p_roller_r").toggle();
		}
		
		if(top_c_roller_state == 1){
			$("#top_c_roller_l").toggle();
		}else if(top_c_roller_state == 2){
			$("#top_c_roller_r").toggle();
		}
		
		if(top_d_roller_state == 1){
			$("#top_d_roller_l").toggle();
		}else if(top_d_roller_state == 2){
			$("#top_d_roller_r").toggle();
		}
		
		if(top_so1_roller_state == 1){
			$("#top_so1_roller_l").toggle();
		}else if(top_so1_roller_state == 2){
			$("#top_so1_roller_r").toggle();
		}
		
		if(top_so2_roller_state == 1){
			$("#top_so2_roller_l").toggle();
		}else if(top_so2_roller_state == 2){
			$("#top_so2_roller_r").toggle();
		}
	}
	
	</script>
</body>
</html>