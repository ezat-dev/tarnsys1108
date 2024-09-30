<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CCF2</title>
<link rel="icon" href="icon/HYUN_T_icon.png">

<script type="text/javascript" src="resources/js/jquery.js"></script>

<!-- fontawesome 4.7.0 버전 -->
<link rel="stylesheet" href="resources/css/font-awesome.min.css" />

<!-- 제이쿼리 ui -->
<script type="text/javascript" src="resources/js/jquery-ui.js"></script>
<link rel="stylesheet" href="resources/css/jquery-ui.css">
<link rel="stylesheet" href="resources/css/jquery-ui.theme.css">

<!-- 부트스트랩 -->
<script type="text/javascript" src="resources/js/bootstrap.js"></script>
<link rel="stylesheet" href="resources/css/bootstrap.css">

<!-- Tabulator -->
<script type="text/javascript" src="resources/js/tabulator/tabulator.js"></script>
<link rel="stylesheet" href="resources/css/tabulator/tabulator.css">
<link rel="stylesheet" href="resources/css/tabulator/tabulator_simple.css">

<!-- datepicker -->
<script type="text/javascript" src="resources/js/bootstrap-datepicker.js"></script>
<script type="text/javascript" src="resources/js/bootstrap-datepicker.ko.min.js"></script>
<link rel="stylesheet" href="resources/css/bootstrap-datepicker.css">

<!-- 타임피커 -->
<script type="text/javascript" src="resources/js/timepicker/jquery.timepicker.min.js"></script>
<link rel="stylesheet" href="resources/css/timepicker/jquery.timepicker.css">

<!-- 구글차트 -->
<!--
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
-->

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
	<div id="btm_body2">

<div class="btm container-fluid">
		<div class="btm row">		

			<!-- CCF01 -->
			<div>
				<span
				style="position:fixed; left:160px; top:540px; font-weight:700; font-size:3em; text-align:left;
					width:600px; cursor:pointer;">CCF #02</span>
					<div class="hogi" style="position: fixed; top: 555px;left: 340px; z-index:20000;"> <button id="hogi2_out" type="button"><b>2호기 출고요청</b></button> </div>
			</div>
			
			<!-- 전력량 -->
			<!-- <div style="position: fixed; background-color: #646464; width: 130px; height: 45px; left:200px; top:305px;  margin-left: 3px; text-align: center; color: white; font-weight: 700;">
				전력 사용량

				<span class="btm control-label"
					style="position: fixed; left: 220px; top:325px; font-weight: 700; color: yellow; background-color: #323232; text-align: right; width: 50px; height: 20px;"
					id="btm_byun_up">0</span>
				<span class="btm control-label"
				style="position: fixed; left: 270px; top:325px; font-weight: 700; color: white; background-color: #323232; text-align: right; height: 20px; font-size: 13px;">&nbsp;
				[ KWH ]</span>
				
			</div> -->
			
			<!-- 자동/수동 -->
			<div class="btm jo_state" id="btm_jo_state_auto"
			style="position: fixed; background-color: #54c454; width: 130px; left:200px; top:655px;  margin-left: 3px; text-align: center; color: white; font-weight: 700;">
				자동 조깅중
			</div>
			<div class="btm jo_state" id="btm_jo_state_man"
			style="position: fixed; background-color: #ff3335; width: 130px; left:200px; top:655px;  margin-left: 3px; text-align: center; color: white; font-weight: 700;">
				수동 조깅중
			</div>
			
			
			<!-- 이미지 -->
			<div
			style="position:fixed; left:155px; top:535px; font-weight:700; font-size:14pt; text-align:center;
				color:white; cursor:pointer; z-index:19998;">
			<img src="img/CCF_TRAN_1610(4).png" width="1595px" height="350px"/></div>	
			

			<!-- 1 -->
			<div class="btm box1" onclick="getPopupDetail(1);"
			style="position:fixed; left:168px; top:712px; font-weight:700; font-size:14pt; text-align:center;
				color:white; cursor:pointer; z-index:20001;">
			<img src="img/LTF_box_short3.png" width="45px" /></div>	
					
			<span class="btm box_lno box1" onclick="getPopupDetail(1);"
			style="position: fixed; left: 170px; top:710px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer; z-index:20001;">
			4</span>
			<span class="btm box_cno box1" onclick="getPopupDetail(1);"
			style="position: fixed; left: 198px; top:710px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer; z-index:20001;">
			2</span>
			<span class="btm box_no1 box1" onclick="getPopupDetail(1);"
			style="position: fixed; left: 183px; top:730px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer; z-index:20001;">
			2</span>
			
			<!-- 1컨베어 -->
			<!-- 좌 -->
			<div class="btm con02_off"
			style="position:fixed; left:161px; top:756px; font-weight:700; font-size:14pt; text-align:center;
				color:white; z-index:20001;">
			<img src="img/컨베어off.png" width="12px;"/></div>	
			
			<div class="btm con02"
			style="position:fixed; left:161px; top:756px; font-weight:700; font-size:14pt; text-align:center;
				color:white; z-index:20001;">
			<img src="img/컨베어.png" width="12px;"/></div>	
			
			<!-- 우 -->
			<div class="btm con02_off"
			style="position:fixed; left:200px; top:756px; font-weight:700; font-size:14pt; text-align:center;
				color:white; z-index:20001;">
			<img src="img/컨베어off.png" width="12px;"/></div>	
			
			<div class="btm con02"
			style="position:fixed; left:200px; top:756px; font-weight:700; font-size:14pt; text-align:center;
				color:white; z-index:20001;">
			<img src="img/컨베어.png" width="12px;"/></div>		
							
	<!-- 		<div class="btm "  
			style="position:fixed; left:235px; top:515px; text-align:center; cursor:pointer;">
			<img src="img/화살표_왼_R.png" width="35px"/></div>
			
			<div class="btm "  
			style="position:fixed; left:235px; top:515px; text-align:center; cursor:pointer;">
			<img src="img/화살표_왼_y.png" width="35px"/></div>
			
			<div class="btm "  
			style="position:fixed; left:295px; top:515px; text-align:center; cursor:pointer;">
			<img src="img/화살표_오_R.png" width="35px"/></div>
			
			<div class="btm "  
			style="position:fixed; left:295px; top:515px; text-align:center; cursor:pointer;">
			<img src="img/화살표_오_y.png" width="35px"/></div> -->
			
			<!-- 2 -->
			<div class="btm box2" onclick="getPopupDetail(2);"
			style="position:fixed; left:215px; top:706px; font-weight:700; font-size:14pt; text-align:center;
				color:white; cursor:pointer; z-index:20001;">
			<img src="img/LTF_box_short3.png" width="45px" /></div>	
						
			<span class="btm box_lno box2" onclick="getPopupDetail(2);"
			style="position: fixed; left: 218px; top:704px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer; z-index:20001;">
			4</span>
			<span class="btm box_cno box2" onclick="getPopupDetail(2);"
			style="position: fixed; left: 245px; top:704px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer; z-index:20001;">
			2</span>
			<span class="btm box_no2 box2" onclick="getPopupDetail(2);"
			style="position: fixed; left: 230px; top:725px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer; z-index:20001;">
			2</span>
			
			<!-- 2컨베어 -->
			<!-- 좌 -->
			<div class="btm con03_off"
			style="position:fixed; left:210px; top:750px; font-weight:700; font-size:14pt; text-align:center;
				color:white; z-index:20001;">
			<img src="img/컨베어off.png" width="12px;"/></div>	
			
			<div class="btm con03"
			style="position:fixed; left:210px; top:750px; font-weight:700; font-size:14pt; text-align:center;
				color:white; z-index:20001; ">
			<img src="img/컨베어.png" width="12px;"/></div>	
			
			<!-- 우 -->
			<div class="btm con03_off"
			style="position:fixed; left:246px; top:750px; font-weight:700; font-size:14pt; text-align:center;
				color:white;  z-index:20001;">
			<img src="img/컨베어off.png" width="12px;"/></div>	
			
			<div class="btm con03"
			style="position:fixed; left:246px; top:750px; font-weight:700; font-size:14pt; text-align:center;
				color:white;  z-index:20001;">
			<img src="img/컨베어.png" width="12px;"/></div>		
			
							
			<!-- 3 -->	
			<div class="btm box3" onclick="getPopupDetail(3);"
			style="position:fixed; left:265px; top:706px; font-weight:700; font-size:14pt; text-align:center;
				color:white; cursor:pointer; z-index:20001;">
			<img src="img/LTF_box_short3.png" width="45px" /></div>	
						
			<span class="btm box3 box_lno" onclick="getPopupDetail(3);"
			style="position: fixed; left: 268px; top:704px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer; z-index:20001;">
			4</span>
			<span class="btm box3 box_cno" onclick="getPopupDetail(3);"
			style="position: fixed; left: 295px; top:704px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer; z-index:20001;">
			2</span>
			<span class="btm box3 box_no3" onclick="getPopupDetail(3);"
			style="position: fixed; left: 280px; top:725px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer; z-index:20001;">
			2</span>
			
			<!-- 3컨베어 -->
			<!-- 좌 -->
			<div class="btm con04_off"
			style="position:fixed; left:260px; top:750px; font-weight:700; font-size:14pt; text-align:center;
				color:white;  z-index:20001;">
			<img src="img/컨베어off.png" width="12px;"/></div>	
			
			<div class="btm con04"
			style="position:fixed; left:260px; top:750px; font-weight:700; font-size:14pt; text-align:center;
				color:white;  z-index:20001;">
			<img src="img/컨베어.png" width="12px;"/></div>	
			
			<!-- 우 -->
			<div class="btm con04_off"
			style="position:fixed; left:296px; top:750px; font-weight:700; font-size:14pt; text-align:center;
				color:white;  z-index:20001;">
			<img src="img/컨베어off.png" width="12px;"/></div>	
			
			<div class="btm con04"
			style="position:fixed; left:296px; top:750px; font-weight:700; font-size:14pt; text-align:center;
				color:white;  z-index:20001;">
			<img src="img/컨베어.png" width="12px;"/></div>		
			
			
			<!-- 4 -->	
			<div class="btm box4" onclick="getPopupDetail(4);"
			style="position:fixed; left:315px; top:706px; font-weight:700; font-size:14pt; text-align:center;
				color:white; cursor:pointer; z-index:20001;">
			<img src="img/LTF_box_short3.png" width="45px" /></div>	
						
			<span class="btm box4 box_lno" onclick="getPopupDetail(4);"
			style="position: fixed; left: 318px; top:704px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer; z-index:20001;">
			4</span>
			<span class="btm box4 box_cno" onclick="getPopupDetail(4);"
			style="position: fixed; left: 345px; top:704px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer; z-index:20001;">
			2</span>
			<span class="btm box4 box_no4" onclick="getPopupDetail(4);"
			style="position: fixed; left: 330px; top:725px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer; z-index:20001;">
			2</span>
			
			<!-- 4컨베어 -->
			<!-- 좌 -->
			<div class="btm con05_off"
			style="position:fixed; left:310px; top:750px; font-weight:700; font-size:14pt; text-align:center;
				color:white;  z-index:20001;">
			<img src="img/컨베어off.png" width="12px;"/></div>	
			
			<div class="btm con05"
			style="position:fixed; left:310px; top:750px; font-weight:700; font-size:14pt; text-align:center;
				color:white;  z-index:20001;">
			<img src="img/컨베어.png" width="12px;"/></div>	
			
			<!-- 우 -->
			<div class="btm con05_off"
			style="position:fixed; left:346px; top:750px; font-weight:700; font-size:14pt; text-align:center;
				color:white;  z-index:20001;">
			<img src="img/컨베어off.png" width="12px;"/></div>	
			
			<div class="btm con05"
			style="position:fixed; left:346px; top:750px; font-weight:700; font-size:14pt; text-align:center;
				color:white;  z-index:20001;">
			<img src="img/컨베어.png" width="12px;"/></div>		
			
				
			<div class="btm s_fdoor"  id="btm_s_fdoor_r"
			style="position:fixed; left:365px; top:620px; text-align:center;  z-index:20001;">
			<img src="img/10.png" width="14px"/></div>
			
			<div class="btm s_r_state"  id="btm_s_r_state_g"
			style="position:fixed; left:320px; top:745px; text-align:center;  z-index:20001;">
			<img src="img/녹색바1.png" width="80px"/></div>
			
			<div class="btm s_r_state"  id="btm_s_r_state_r"
			style="position:fixed; left:380px; top:745px; text-align:center;  z-index:20001;">
			<img src="img/적색바2.png" width="80px"/></div>
			
			<div class="btm s_fdoor"  id="btm_s_fdoor_g"
			style="position:fixed; left:365px; top:670px; text-align:center;  z-index:20001;">
			<img src="img/09.png" width="15px" height="100px"/></div>
			
			<!-- 5 -->
			<div class="btm box5" onclick="getPopupDetail(5);"
			style="position:fixed; left:400px; top:706px; font-weight:700; font-size:14pt; text-align:center;
				color:white; cursor:pointer; z-index:20001;">
			<img src="img/LTF_box_short3.png" width="45px" /></div>	
						
			<span class="btm box5 box_lno" onclick="getPopupDetail(5);"
			style="position: fixed; left: 403px; top:704px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer; z-index:20001;">
			4</span>
			<span class="btm box5 box_cno" onclick="getPopupDetail(5);"
			style="position: fixed; left: 430px; top:704px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer; z-index:20001;">
			2</span>
			<span class="btm box5 box_no5" onclick="getPopupDetail(5);"
			style="position: fixed; left: 415px; top:725px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer; z-index:20001;">
			2</span>
				
			<div
			style="position:fixed; left:412px; top: 656px; text-align:center;  z-index:20001;">
			<img src="img/21.FAN_RUN_고정기둥.png"/></div>
				
			<div class="btm s_fan"  id="btm_s_fan_run"
			style="position:fixed; left:395px; top:671px; text-align:center;  z-index:20001;">
			<img src="img/21.FAN_RUN_수평이동.png" width="50px"/></div>
				
			<div class="btm s_fan"  id="btm_s_fan00"
			style="position:fixed; left:395px; top:600px; text-align:center;  z-index:20001;">
			<img src="img/팬모터회1.png" width="50px"/></div>
			
			<!-- <div class="btm s_fan"  id="btm_s_fan01"
			style="position:fixed; left:395px; top:270px; text-align:center; cursor:pointer;">
			<img src="img/팬모터노1.png" width="50px"/></div> -->
			
			<div class="btm s_fan"  id="btm_s_fan02"
			style="position:fixed; left:395px; top:600px; text-align:center;  z-index:20001;">
			<img src="img/팬모터빨1.png" width="50px"/></div>
			
			<div class="btm s_fan"  id="btm_s_fan03"
			style="position:fixed; left:395px; top:600px; text-align:center;  z-index:20001;">
			<img src="img/팬모터초1.png" width="50px"/></div>
			
			<div class="btm s_edoor"  id="btm_s_edoor_r"
			style="position:fixed; left:460px; top:620px; text-align:center;  z-index:20001;">
			<img src="img/10.png" width="14px"/></div>
			
			<div class="btm s_edoor"  id="btm_s_edoor_g"
			style="position:fixed; left:460px; top:670px; text-align:center;  z-index:20001;">
			<img src="img/09.png" width="15px" height="100px"/></div>
			
<!-- 			<div class="btm "  
			style="position:fixed; left:539px; top:358px; text-align:center; ">
			<img src="img/02.png" width="45px"/></div>
			
			<div class="btm "  
			style="position:fixed; left:539px; top:358px; text-align:center; ">
			<img src="img/02(1).png" width="45px"/></div>
			 -->
			
			<div class="btm p_fdoor"  id="btm_p_fdoor_r"
			style="position:fixed; left:525px; top:620px; text-align:center;  z-index:20001;">
			<img src="img/10.png" width="14px"/></div>
			
			<div class="btm p_fdoor"  id="btm_p_fdoor_g"
			style="position:fixed; left:525px; top:670px; text-align:center;  z-index:20001;">
			<img src="img/09.png" width="15px" height="100px"/></div>
			 
			<!-- 6 -->
			<div class="btm box6" onclick="getPopupDetail(6);"
			style="z-index:20001; position:fixed; left:480px; top:715px; font-weight:700; font-size:14pt; text-align:center;
				color:white; cursor:pointer;">
			<img src="img/LTF_box_short3.png" width="45px" /></div>	
						
			<span class="btm box6 box_lno" onclick="getPopupDetail(6);"
			style="z-index:20001; position: fixed; left: 482px; top:712px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			4</span>
			<span class="btm box6 box_cno" onclick="getPopupDetail(6);"
			style="z-index:20001; position: fixed; left: 510px; top:712px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
			<span class="btm box6 box_no6" onclick="getPopupDetail(6);"
			style="z-index:20001; position: fixed; left: 496px; top:730px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
					
			<!-- 5컨베어(BOX 6) -->
			<!-- 좌 -->
			<div class="btm con06_off"
			style="z-index:20001; position:fixed; left:475px; top:760px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어off.png" width="12px;"/></div>	
			
			<div class="btm con06"
			style="z-index:20001; position:fixed; left:475px; top:760px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어.png" width="12px;"/></div>	
			
			<!-- 우 -->
			<div class="btm con06_off"
			style="z-index:20001; position:fixed; left:512px; top:760px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어off.png" width="12px;"/></div>	
			
			<div class="btm con06"
			style="z-index:20001; position:fixed; left:512px; top:760px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어.png" width="12px;"/></div>		
			
				
			<!-- <div class="btm "  
			style="z-index:20001; position:fixed; left:595px; top:345px; text-align:center; ">
			<img src="img/04.png" width="65px"/></div>
			
			<div class="btm "  
			style="z-index:20001; position:fixed; left:595px; top:345px; text-align:center; ">
			<img src="img/04(1).png" width="65px"/></div> -->
			
			<!-- 7 -->
			<div class="btm box7" onclick="getPopupDetail(7);"
			style="z-index:20001; position:fixed; left:553px; top:725px; font-weight:700; font-size:14pt; text-align:center;
				color:white; cursor:pointer;">
			<img src="img/LTF_box_short3.png" width="45px" /></div>	
						
			<span class="btm box7 box_lno" onclick="getPopupDetail(7);"
			style="z-index:20001; position: fixed; left: 555px; top:722px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			4</span>
			<span class="btm box7 box_cno" onclick="getPopupDetail(7);"
			style="z-index:20001; position: fixed; left: 583px; top:722px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
			<span class="btm box7 box_no7" onclick="getPopupDetail(7);"
			style="z-index:20001; position: fixed; left: 569px; top:740px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
					
			<!-- 6컨베어(Box 7) -->
			<!-- 좌 -->
			<div class="btm con07_off"
			style="z-index:20001; position:fixed; left:547px; top:768px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어off.png" width="12px;"/></div>	
			
			<div class="btm con07"
			style="z-index:20001; position:fixed; left:547px; top:768px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어.png" width="12px;"/></div>	
			
			<!-- 우 -->
			<div class="btm con07_off"
			style="z-index:20001; position:fixed; left:587px; top:768px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어off.png" width="12px;"/></div>	
			
			<div class="btm con07"
			style="z-index:20001; position:fixed; left:587px; top:768px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어.png" width="12px;"/></div>		
			
				
			<div
			style="z-index:20001; position:fixed; left:567px; top: 648px; text-align:center; ">
			<img src="img/21.FAN_RUN_고정기둥.png"/></div>
				
			<div class="btm p_fan" id="btm_p_fan_run"
			style="z-index:20001; position:fixed; left:550px; top:661px; text-align:center; ">
			<img src="img/21.FAN_RUN_수평이동.png" width="50px"/></div>
			
			<div class="btm p_fan"  id="btm_p_fan00"
			style="z-index:20001; position:fixed; left:550px; top:592px; text-align:center; ">
			<img src="img/팬모터회1.png" width="50px"/></div>
			
			<!-- <div class="btm p_fan"  id="btm_p_fan01"
			style="z-index:20001; position:fixed; left:550px; top:262px; text-align:center; ">
			<img src="img/팬모터노1.png" width="50px"/></div> -->
			
			<div class="btm p_fan"  id="btm_p_fan02"
			style="z-index:20001; position:fixed; left:550px; top:592px; text-align:center; ">
			<img src="img/팬모터빨1.png" width="50px"/></div>
			
			<div class="btm p_fan"  id="btm_p_fan03"
			style="z-index:20001; position:fixed; left:550px; top:592px; text-align:center; ">
			<img src="img/팬모터초1.png" width="50px"/></div>
			
			
			<div class="btm p_roller"  id="btm_p_roller_rl"
			style="z-index:20001; position:fixed; left:540px; top:810px; text-align:center; ">
			<img src="img/화살표_왼_R.png" width="35px"/></div>
			
			<div class="btm p_roller"  id="btm_p_roller_l"
			style="z-index:20001; position:fixed; left:540px; top:810px; text-align:center; ">
			<img src="img/화살표_왼_y.png" width="35px"/></div>
			
			<div class="btm p_roller" id="btm_p_roller_rr"
			style="z-index:20001; position:fixed; left:580px; top:810px; text-align:center; ">
			<img src="img/화살표_오_R.png" width="35px"/></div>
			
			<div class="btm p_roller"  id="btm_p_roller_r"
			style="z-index:20001; position:fixed; left:580px; top:810px; text-align:center; ">
			<img src="img/화살표_오_y.png" width="35px"/></div>
			
			<div class="btm p_jo_state" id="btm_p_jo_state_a"
			 style="z-index:20001; position: fixed; background-color: #54c454; width: 70px; left:537px; top:840px;  margin-left: 3px; text-align: center; color: black; font-size: 14px; font-weight: 700;">
				자동 조깅
			</div>
			<div class="btm p_jo_state" id="btm_p_jo_state_m"
			 style="z-index:20001; position: fixed; background-color: #ff3335; width: 70px; left:537px; top:840px;  margin-left: 3px; text-align: center; color: black; font-size: 14px; font-weight: 700;">
				수동 조깅
			</div>
			
			<!-- 리프터 -->
			<div class="btm lift01_dn" id=lift01_dn
			 style="z-index:20001; position: fixed; background-color: #54c454; width: 70px; left:502px; top:785px;  margin-left: 3px; text-align: center; color: black; font-size: 12px; font-weight: 700;">
				리프터 아래
			</div>
			<div class="btm lift01_up" id=lift01_up
			 style="z-index:20001; position: fixed; background-color: #54c454; width: 70px; left:502px; top:785px;  margin-left: 3px; text-align: center; color: black; font-size: 14px; font-weight: 700;">
				리프터 위
			</div>
			
			<div class="btm p_edoor"  id="btm_p_edoor_r"
			style="z-index:20001; position:fixed; left:615px; top:620px; text-align:center; ">
			<img src="img/10.png" width="14px"/></div>
			
			<div class="btm p_edoor"  id="btm_p_edoor_g"
			style="z-index:20001; position:fixed; left:615px; top:670px;; text-align:center; ">
			<img src="img/09.png" width="15px" height="100px"/></div>
			
			<!-- 8-1 -->
			<div class="btm box8" onclick="getPopupDetail(8);"
			style="z-index:20001; position:fixed; left:639px; top:725px; font-weight:700; font-size:14pt; text-align:center;
				color:white; cursor:pointer;">
			<img src="img/LTF_box_short3.png" width="45px" /></div>	
						
			<span class="btm box8 box_lno" onclick="getPopupDetail(8);"
			style="z-index:20001; position: fixed; left: 641px; top:722px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			4</span>
			<span class="btm box8 box_cno" onclick="getPopupDetail(8);"
			style="z-index:20001; position: fixed; left: 669px; top:722px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
			<span class="btm box8 box_no8" onclick="getPopupDetail(8);"
			style="z-index:20001; position: fixed; left: 655px; top:740px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
					
			<!-- 7컨베어( Box8 ) -->
			<!-- 좌 -->
			<div class="btm con08_off"
			style="z-index:20001; position:fixed; left:636px; top:768px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어off.png" width="12px;"/></div>	
			
			<div class="btm con08"
			style="z-index:20001; position:fixed; left:636px; top:768px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어.png" width="12px;"/></div>	
			
				
			<!-- 9-2 -->
			<div class="btm box9" onclick="getPopupDetail(9);"
			style="z-index:20001; position:fixed; left:683px; top:725px; font-weight:700; font-size:14pt; text-align:center;
				color:white; cursor:pointer;">
			<img src="img/LTF_box_short3.png" width="45px" /></div>	
						
			<span class="btm box9 box_lno" onclick="getPopupDetail(9);"
			style="z-index:20001; position: fixed; left: 685px; top:722px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			4</span>
			<span class="btm box9 box_cno" onclick="getPopupDetail(9);"
			style="z-index:20001; position: fixed; left: 713px; top:722px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
			<span class="btm box9 box_no9" onclick="getPopupDetail(9);"
			style="z-index:20001; position: fixed; left: 698px; top:740px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
			
			<!-- 클러치 좌 -->
			<div class="btm con08_off"
			style="z-index:20001; position:fixed; left:667px; top:768px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어off.png" width="12px;"/></div>	
			
			<div class="btm con08"
			style="z-index:20001; position:fixed; left:667px; top:768px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어.png" width="12px;"/></div>		
			
			<div class="btm cl01_off" id="btm_cl01_off"
			 style="z-index:20001; position: fixed; background-color: #ff3335; width: 70px; left:645px; top:785px;  margin-left: 3px; text-align: center; color: black; font-size: 12px; font-weight: 700;">
				클러치 OFF
			</div>
			<div class="btm cl01" id="btm_cl01_on"
			 style="z-index:20001; position: fixed; background-color: #54c454; width: 70px; left:645px; top:785px;  margin-left: 3px; text-align: center; color: black; font-size: 14px; font-weight: 700;">
				클러치 ON
			</div>
			
			<!-- 클러치 우 -->
			<div class="btm con09_off"
			style="z-index:20001; position:fixed; left:683px; top:768px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어off.png" width="12px;"/></div>	
			
			<div class="btm con09"
			style="z-index:20001; position:fixed; left:683px; top:768px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어.png" width="12px;"/></div>		
			
				
			<!-- 10-3 -->
			<div class="btm box10" onclick="getPopupDetail(10);"
			style="z-index:20001; position:fixed; left:727px; top:725px; font-weight:700; font-size:14pt; text-align:center;
				color:white; cursor:pointer;">
			<img src="img/LTF_box_short3.png" width="45px" /></div>	
						
			<span class="btm box10 box_lno" onclick="getPopupDetail(10);"
			style="z-index:20001; position: fixed; left: 729px; top:722px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			4</span>
			<span class="btm box10 box_cno" onclick="getPopupDetail(10);"
			style="z-index:20001; position: fixed; left: 757px; top:722px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
			<span class="btm box10 box_no10" onclick="getPopupDetail(10);"
			style="z-index:20001; position: fixed; left: 743px; top:740px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
				
			<!-- 11-4 -->
			<div class="btm box11" onclick="getPopupDetail(11);"
			style="z-index:20001; position:fixed; left:770px; top:725px; font-weight:700; font-size:14pt; text-align:center;
				color:white; cursor:pointer;">
			<img src="img/LTF_box_short3.png" width="45px" /></div>	
						
			<span class="btm box11 box_lno" onclick="getPopupDetail(11);"
			style="z-index:20001; position: fixed; left: 772px; top:722px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			4</span>
			<span class="btm box11 box_cno" onclick="getPopupDetail(11);"
			style="z-index:20001; position: fixed; left: 800px; top:722px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
			<span class="btm box11 box_no11" onclick="getPopupDetail(11);"
			style="z-index:20001; position: fixed; left: 786px; top:740px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
				
			<!-- 12-5 -->
			<div class="btm box12" onclick="getPopupDetail(12);"
			style="z-index:20001; position:fixed; left:815px; top:725px; font-weight:700; font-size:14pt; text-align:center;
				color:white; cursor:pointer;">
			<img src="img/LTF_box_short3.png" width="45px" /></div>	
						
			<span class="btm box12 box_lno" onclick="getPopupDetail(12);"
			style="z-index:20001; position: fixed; left: 817px; top:722px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			4</span>
			<span class="btm box12 box_cno" onclick="getPopupDetail(12);"
			style="z-index:20001; position: fixed; left: 845px; top:722px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
			<span class="btm box12 box_no12" onclick="getPopupDetail(12);"
			style="z-index:20001; position: fixed; left: 831px; top:740px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
				
			<!-- 13-6 -->
			<div class="btm box13" onclick="getPopupDetail(13);"
			style="z-index:20001; position:fixed; left:860px; top:725px; font-weight:700; font-size:14pt; text-align:center;
				color:white; cursor:pointer;">
			<img src="img/LTF_box_short3.png" width="45px" /></div>	
						
			<span class="btm box13 box_lno" onclick="getPopupDetail(13);"
			style="z-index:20001; position: fixed; left: 862px; top:722px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			4</span>
			<span class="btm box13 box_cno" onclick="getPopupDetail(13);"
			style="z-index:20001; position: fixed; left: 890px; top:722px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
			<span class="btm box13 box_no13" onclick="getPopupDetail(13);"
			style="z-index:20001; position: fixed; left: 876px; top:740px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
			
			<!-- 14-7 -->
			<div class="btm box14" onclick="getPopupDetail(14);"
			style="z-index:20001; position:fixed; left:905px; top:725px; font-weight:700; font-size:14pt; text-align:center;
				color:white; cursor:pointer;">
			<img src="img/LTF_box_short3.png" width="45px" /></div>	
						
			<span class="btm box14 box_lno" onclick="getPopupDetail(14);"
			style="z-index:20001; position: fixed; left: 907px; top:722px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			4</span>
			<span class="btm box14 box_cno" onclick="getPopupDetail(14);"
			style="z-index:20001; position: fixed; left: 935px; top:722px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
			<span class="btm box14 box_no14" onclick="getPopupDetail(14);"
			style="z-index:20001; position: fixed; left: 921px; top:740px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
						
			<!-- 8컨베어( Box13~14 사이) -->
			<!-- 좌 -->
			<div class="btm con09_off"
			style="z-index:20001; position:fixed; left:875px; top:768px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어off.png" width="12px;"/></div>	
			
			<div class="btm con09"
			style="z-index:20001; position:fixed; left:875px; top:768px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어.png" width="12px;"/></div>	
			
			<!-- 우 -->
			<div class="btm con10_off"
			style="z-index:20001; position:fixed; left:910px; top:768px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어off.png" width="12px;"/></div>	
			
			<div class="btm con10"
			style="z-index:20001; position:fixed; left:910px; top:768px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어.png" width="12px;"/></div>		
			
					
			<!-- 15-8 -->
			<div class="btm box15" onclick="getPopupDetail(15);"
			style="z-index:20001; position:fixed; left:950px; top:725px; font-weight:700; font-size:14pt; text-align:center;
				color:white; cursor:pointer;">
			<img src="img/LTF_box_short3.png" width="45px" /></div>	
						
			<span class="btm box15 box_lno" onclick="getPopupDetail(15);"
			style="z-index:20001; position: fixed; left: 952px; top:722px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			4</span>
			<span class="btm box15 box_cno" onclick="getPopupDetail(15);"
			style="z-index:20001; position: fixed; left: 980px; top:722px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
			<span class="btm box15 box_no15" onclick="getPopupDetail(15);"
			style="z-index:20001; position: fixed; left: 966px; top:740px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
				
			<!-- 16-9 -->
			<div class="btm box16" onclick="getPopupDetail(16);"
			style="z-index:20001; position:fixed; left:997px; top:725px; font-weight:700; font-size:14pt; text-align:center;
				color:white; cursor:pointer;">
			<img src="img/LTF_box_short3.png" width="45px" /></div>	
						
			<span class="btm box16 box_lno" onclick="getPopupDetail(16);"
			style="z-index:20001; position: fixed; left: 999px; top:722px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			4</span>
			<span class="btm box16 box_cno" onclick="getPopupDetail(16);"
			style="z-index:20001; position: fixed; left: 1027px; top:722px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
			<span class="btm box16 box_no16" onclick="getPopupDetail(16);"
			style="z-index:20001; position: fixed; left: 1013px; top:740px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
				
			<!-- 17-10 -->
			<div class="btm box17" onclick="getPopupDetail(17);"
			style="z-index:20001; position:fixed; left:1042px; top:725px; font-weight:700; font-size:14pt; text-align:center;
				color:white; cursor:pointer;">
			<img src="img/LTF_box_short3.png" width="45px" /></div>	
						
			<span class="btm box17 box_lno" onclick="getPopupDetail(17);"
			style="z-index:20001; position: fixed; left: 1044px; top:722px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			4</span>
			<span class="btm box17 box_cno" onclick="getPopupDetail(17);"
			style="z-index:20001; position: fixed; left: 1072px; top:722px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
			<span class="btm box17 box_no17" onclick="getPopupDetail(17);"
			style="z-index:20001; position: fixed; left: 1058px; top:740px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
				
			<!-- 18-11 -->
			<div class="btm box18" onclick="getPopupDetail(18);"
			style="z-index:20001; position:fixed; left:1087px; top:725px; font-weight:700; font-size:14pt; text-align:center;
				color:white; cursor:pointer;">
			<img src="img/LTF_box_short3.png" width="45px" /></div>	
						
			<span class="btm box18 box_lno" onclick="getPopupDetail(18);"
			style="z-index:20001; position: fixed; left: 1089px; top:722px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			4</span>
			<span class="btm box18 box_cno" onclick="getPopupDetail(18);"
			style="z-index:20001; position: fixed; left: 1117px; top:722px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
			<span class="btm box18 box_no18" onclick="getPopupDetail(18);"
			style="z-index:20001; position: fixed; left: 1103px; top:740px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
				
			<!-- 19-12 -->
			<div class="btm box19" onclick="getPopupDetail(19);"
			style="z-index:20001; position:fixed; left:1133px; top:725px; font-weight:700; font-size:14pt; text-align:center;
				color:white; cursor:pointer;">
			<img src="img/LTF_box_short3.png" width="45px" /></div>	
						
			<span class="btm box19 box_lno" onclick="getPopupDetail(19);"
			style="z-index:20001; position: fixed; left: 1135px; top:722px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			4</span>
			<span class="btm box19 box_cno" onclick="getPopupDetail(19);"
			style="z-index:20001; position: fixed; left: 1162px; top:722px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
			<span class="btm box19 box_no19" onclick="getPopupDetail(19);"
			style="z-index:20001; position: fixed; left: 1148px; top:740px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
			
			<!-- 클러치02 좌 -->
			<div class="btm con10_off"
			style="z-index:20001; position:fixed; left:1117px; top:768px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어off.png" width="12px;"/></div>	
			
			<div class="btm con10"
			style="z-index:20001; position:fixed; left:1117px; top:768px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어.png" width="12px;"/></div>		
			
			<div class="btm cl02_off" id="btm_cl02_off"
			 style="z-index:20001; position: fixed; background-color: #ff3335; width: 70px; left:1090px; top:785px;  margin-left: 3px; text-align: center; color: black; font-size: 12px; font-weight: 700;">
				클러치 OFF
			</div>
			<div class="btm cl02" id="btm_cl02_on"
			 style="z-index:20001; position: fixed; background-color: #54c454; width: 70px; left:1090px; top:785px;  margin-left: 3px; text-align: center; color: black; font-size: 14px; font-weight: 700;">
				클러치 ON
			</div>
			
			<!-- 클러치02 우 -->
			<div class="btm con11_off"
			style="z-index:20001; position:fixed; left:1133px; top:768px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어off.png" width="12px;"/></div>	
			
			<div class="btm con11"
			style="z-index:20001; position:fixed; left:1133px; top:768px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어.png" width="12px;"/></div>		
					
			<!-- 9컨베어( Box19) -->
			<!-- 좌 -->
			<div class="btm con11_off"
			style="z-index:20001; position:fixed; left:1162px; top:768px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어off.png" width="12px;"/></div>	
			
			<div class="btm con11"
			style="z-index:20001; position:fixed; left:1162px; top:768px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어.png" width="12px;"/></div>	
			
				
					
			<div
			style="z-index:20001; position:fixed; left:797px; top: 656px; text-align:center; ">
			<img src="img/21.FAN_RUN_고정기둥.png"/></div>
				
			<div class="btm c_fan" id="btm_c_fan_run"
			style="z-index:20001; position:fixed; left:780px; top:671px; text-align:center; ">
			<img src="img/21.FAN_RUN_수평이동.png" width="50px"/></div>
			
			<div class="btm c_fan"  id="btm_c_fan00"
			style="z-index:20001; position:fixed; left:780px; top:600px; text-align:center; ">
			<img src="img/팬모터회1.png" width="50px"/></div>
			
			<!-- <div class="btm c_fan"  id="btm_c_fan01"
			style="z-index:20001; position:fixed; left:780px; top:270px; text-align:center; ">
			<img src="img/팬모터노1.png" width="50px"/></div>-->
			 
			<div class="btm c_fan"  id="btm_c_fan02"
			style="z-index:20001; position:fixed; left:780px; top:600px; text-align:center; ">
			<img src="img/팬모터빨1.png" width="50px"/></div>
			
			<div class="btm c_fan"  id="btm_c_fan03"
			style="z-index:20001; position:fixed; left:780px; top:600px; text-align:center; ">
			<img src="img/팬모터초1.png" width="50px"/></div>
			
			<div class="btm c_roller"  id="btm_c_roller_rl"
			style="z-index:20001; position:fixed; left:765px; top:810px; text-align:center; ">
			<img src="img/화살표_왼_R.png" width="35px"/></div>
			
			<div class="btm c_roller"  id="btm_c_roller_l"
			style="z-index:20001; position:fixed; left:765px; top:810px; text-align:center; ">
			<img src="img/화살표_왼_y.png" width="35px"/></div>
			
			<div class="btm c_roller"  id="btm_c_roller_rr"
			style="z-index:20001; position:fixed; left:810px; top:810px; text-align:center; ">
			<img src="img/화살표_오_R.png" width="35px"/></div>
			
			<div class="btm c_roller"  id="btm_c_roller_r"
			style="z-index:20001; position:fixed; left:810px; top:810px; text-align:center; ">
			<img src="img/화살표_오_y.png" width="35px"/></div>
			
			<div class="btm l_jo_state" id="btm_l_jo_state_a"
			  style="z-index:20001; position: fixed; background-color: #54c454; width: 70px; left:900px; top:840px;  margin-left: 3px; text-align: center; color: black; font-size: 14px; font-weight: 700;">
				자동 조깅
			</div>
			<div class="btm l_jo_state" id="btm_l_jo_state_m"
			  style="z-index:20001; position: fixed; background-color: #ff3335; width: 70px; left:900px; top:840px;  margin-left: 3px; text-align: center; color: black; font-size: 14px; font-weight: 700;">
				수동 조깅
			</div>
			
			<div
			style="z-index:20001; position:fixed; left:1037px; top: 656px; text-align:center; ">
			<img src="img/21.FAN_RUN_고정기둥.png"/></div>
				
			<div class="btm d_fan"  id="btm_d_fan_run"
			style="z-index:20001; position:fixed; left:1020px; top:671px; text-align:center; ">
			<img src="img/21.FAN_RUN_수평이동.png" width="50px"/></div>
			
			<div class="btm d_fan"  id="btm_d_fan00"
			style="z-index:20001; position:fixed; left:1020px; top:600px; text-align:center; ">
			<img src="img/팬모터회1.png" width="50px"/></div>
			
			<!-- <div class="btm d_fan"  id="btm_d_fan01"
			style="z-index:20001; position:fixed; left:1020px; top:270px; text-align:center; ">
			<img src="img/팬모터노1.png" width="50px"/></div> -->
			
			<div class="btm d_fan"  id="btm_d_fan02"
			style="z-index:20001; position:fixed; left:1020px; top:600px; text-align:center; ">
			<img src="img/팬모터빨1.png" width="50px"/></div>
			
			<div class="btm d_fan"  id="btm_d_fan03"
			style="z-index:20001; position:fixed; left:1020px; top:600px; text-align:center; ">
			<img src="img/팬모터초1.png" width="50px"/></div>
			
			<div class="btm d_roller"  id="btm_d_roller_rl"
			style="z-index:20001; position:fixed; left:1000px; top:810px; text-align:center; ">
			<img src="img/화살표_왼_R.png" width="35px"/></div>
			
			<div class="btm d_roller"  id="btm_d_roller_l"
			style="z-index:20001; position:fixed; left:1000px; top:810px; text-align:center; ">
			<img src="img/화살표_왼_y.png" width="35px"/></div>
			
			<div class="btm d_roller"  id="btm_d_roller_rr"
			style="z-index:20001; position:fixed; left:1040px; top:810px; text-align:center; ">
			<img src="img/화살표_오_R.png" width="35px"/></div>
			
			<div class="btm d_roller"  id="btm_d_roller_r"
			style="z-index:20001; position:fixed; left:1040px; top:810px; text-align:center; ">
			<img src="img/화살표_오_y.png" width="35px"/></div>
			
			<!-- 소입 입구 -->
			<div class="btm so_fdoor"  id="btm_so_fdoor_r"
			style="z-index:20001; position:fixed; left:1185px; top:615px; text-align:center; ">
			<img src="img/10.png" width="14px"/></div>
			
			<div class="btm so_fdoor"  id="btm_so_fdoor_g"
			style="z-index:20001; position:fixed; left:1185px; top:670px;; text-align:center; ">
			<img src="img/09.png" width="15px" height="100px"/></div>
			
			<!-- 20 -->
			<div class="btm box20 box20" onclick="getPopupDetail(20);"
			style="z-index:20001; position:fixed; left:1211px; top:725px; font-weight:700; font-size:14pt; text-align:center;
				color:white; cursor:pointer;">
			<img src="img/LTF_box_short3.png" width="45px" /></div>	
						
			<span class="btm box20 box_lno" onclick="getPopupDetail(20);"
			style="z-index:20001; position: fixed; left: 1212px; top:722px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			4</span>
			<span class="btm box20 box_cno" onclick="getPopupDetail(20);"
			style="z-index:20001; position: fixed; left: 1241px; top:722px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
			<span class="btm box20 box_no20" onclick="getPopupDetail(20);"
			style="z-index:20001; position: fixed; left: 1226px; top:740px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
						
			<!-- 10컨베어( Box20) -->
			<!-- 좌 -->
			<div class="btm con12_off"
			style="z-index:20001; position:fixed; left:1205px; top:768px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어off.png" width="12px;"/></div>	
			
			<div class="btm con12"
			style="z-index:20001; position:fixed; left:1205px; top:768px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어.png" width="12px;"/></div>	
			
			<!-- 우 -->
			<div class="btm con12_off"
			style="z-index:20001; position:fixed; left:1245px; top:768px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어off.png" width="12px;"/></div>	
			
			<div class="btm con12"
			style="z-index:20001; position:fixed; left:1245px; top:768px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어.png" width="12px;"/></div>		
			
						
			<div
			style="z-index:20001; position:fixed; left:1223px; top: 656px; text-align:center; ">
			<img src="img/21.FAN_RUN_고정기둥.png"/></div>
					
			<div class="btm so1_fan"  id="btm_so1_fan_run"
			style="z-index:20001; position:fixed; left:1206px; top:671px; text-align:center; ">
			<img src="img/21.FAN_RUN_수평이동.png" width="50px"/></div>
			
			<div class="btm so1_fan"  id="btm_so1_fan00"
			style="z-index:20001; position:fixed; left:1206px; top:600px; text-align:center; ">
			<img src="img/팬모터회1.png" width="50px"/></div>
			
			<!-- <div class="btm so1_fan"  id="btm_so1_fan01"
			style="z-index:20001; position:fixed; left:1206px; top:270px; text-align:center; ">
			<img src="img/팬모터노1.png" width="50px"/></div> -->
			
			<div class="btm so1_fan"  id="btm_so1_fan02"
			style="z-index:20001; position:fixed; left:1206px; top:600px; text-align:center; ">
			<img src="img/팬모터빨1.png" width="50px"/></div>
			
			<div class="btm so1_fan"  id="btm_so1_fan03"
			style="z-index:20001; position:fixed; left:1206px; top:600px; text-align:center; ">
			<img src="img/팬모터초1.png" width="50px"/></div>
			
			<div class="btm so1_roller"  id="btm_so1_roller_rl"
			style="z-index:20001; position:fixed; left:1195px; top:810px; text-align:center; ">
			<img src="img/화살표_왼_R.png" width="35px"/></div>
			
			<div class="btm so1_roller"  id="btm_so1_roller_l"
			style="z-index:20001; position:fixed; left:1195px; top:810px; text-align:center; ">
			<img src="img/화살표_왼_y.png" width="35px"/></div>
			
			<div class="btm so1_roller"  id="btm_so1_roller_rr"
			style="z-index:20001; position:fixed; left:1235px; top:810px; text-align:center; ">
			<img src="img/화살표_오_R.png" width="35px"/></div>
			
			<div class="btm so1_roller"  id="btm_so1_roller_r"
			style="z-index:20001; position:fixed; left:1235px; top:810px; text-align:center; ">
			<img src="img/화살표_오_y.png" width="35px"/></div>
			
			<div class="btm so1_jo_state" id="btm_so1_jo_state_a"
			   style="z-index:20001; position: fixed; background-color: #54c454; width: 70px; left:1195px; top:840px;  margin-left: 3px; text-align: center; color: black; font-size: 14px; font-weight: 700;">
				자동 조깅
			</div>
			<div class="btm so1_jo_state" id="btm_so1_jo_state_m"
			   style="z-index:20001; position: fixed; background-color: #ff3335; width: 70px; left:1195px; top:840px;  margin-left: 3px; text-align: center; color: black; font-size: 14px; font-weight: 700;">
				수동 조깅
			</div>
			
			
			<!-- 소입 중간문 -->
			<div class="btm so_mdoor"  id="btm_so_mdoor_r"
			style="z-index:20001; position:fixed; left:1268px; top:615px; text-align:center; ">
			<img src="img/10.png" width="14px"/></div>
			
			<div class="btm so_mdoor"  id="btm_so_mdoor_g"
			style="z-index:20001; position:fixed; left:1268px; top:670px; text-align:center; ">
			<img src="img/09.png" width="15px" height="100px"/></div>
			
			<!-- 21 -->
			<div class="btm box21" onclick="getPopupDetail(21);"
			style="z-index:20001; position:fixed; left:1297px; top:725px; font-weight:700; font-size:14pt; text-align:center;
				color:white; cursor:pointer;">
			<img src="img/LTF_box_short3.png" width="45px" /></div>	
					
			<span class="btm box21 box_lno" onclick="getPopupDetail(21);"
			style="z-index:20001; position: fixed; left: 1299px; top:722px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			4</span>
			<span class="btm box21 box_cno" onclick="getPopupDetail(21);"
			style="z-index:20001; position: fixed; left: 1327px; top:722px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
			<span class="btm box21 box_no21" onclick="getPopupDetail(21);"
			style="z-index:20001; position: fixed; left: 1313px; top:740px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
						
			<!-- 11컨베어( Box21) -->
			<!-- 좌 -->
			<div class="btm con13_off"
			style="z-index:20001; position:fixed; left:1290px; top:768px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어off.png" width="12px;"/></div>	
			
			<div class="btm con13"
			style="z-index:20001; position:fixed; left:1290px; top:768px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어.png" width="12px;"/></div>	
			
			<!-- 우 -->
			<div class="btm con13_off"
			style="z-index:20001; position:fixed; left:1330px; top:768px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어off.png" width="12px;"/></div>	
			
			<div class="btm con13"
			style="z-index:20001; position:fixed; left:1330px; top:768px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어.png" width="12px;"/></div>		
			
						
			<!-- 소입2 -->		
			<div
			style="z-index:20001; position:fixed; left:1307px; top: 656px; text-align:center; ">
			<img src="img/21.FAN_RUN_고정기둥.png"/></div>
					
			<div class="btm so2_fan"  id="btm_so2_fan_run"
			style="z-index:20001; position:fixed; left:1290px; top:671px; text-align:center; ">
			<img src="img/21.FAN_RUN_수평이동.png" width="50px"/></div>
			
			<div class="btm so2_fan"  id="btm_so2_fan00"
			style="z-index:20001; position:fixed; left:1290px; top:600px; text-align:center; ">
			<img src="img/팬모터회1.png" width="50px"/></div>
			
			<!-- <div class="btm so2_fan"  id="btm_so2_fan01"
			style="z-index:20001; position:fixed; left:1290px; top:270px; text-align:center; ">
			<img src="img/팬모터노1.png" width="50px"/></div> -->
			
			<div class="btm so2_fan"  id="btm_so2_fan02"
			style="z-index:20001; position:fixed; left:1290px; top:600px; text-align:center; ">
			<img src="img/팬모터빨1.png" width="50px"/></div>
			
			<div class="btm so2_fan"  id="btm_so2_fan03"
			style="z-index:20001; position:fixed; left:1290px; top:600px; text-align:center; ">
			<img src="img/팬모터초1.png" width="50px"/></div>
			
			<div class="btm so2_roller" id="btm_so2_roller_rl"
			style="z-index:20001; position:fixed; left:1280px; top:810px; text-align:center; ">
			<img src="img/화살표_왼_R.png" width="35px"/></div>
			
			<div class="btm so2_roller"  id="btm_so2_roller_l"
			style="z-index:20001; position:fixed; left:1280px; top:810px; text-align:center; ">
			<img src="img/화살표_왼_y.png" width="35px"/></div>
			
			<div class="btm so2_roller" id="btm_so2_roller_rr"
			style="z-index:20001; position:fixed; left:1320px; top:810px; text-align:center; ">
			<img src="img/화살표_오_R.png" width="35px"/></div>
			
			<div class="btm so2_roller"  id="btm_so2_roller_r"
			style="z-index:20001; position:fixed; left:1320px; top:810px; text-align:center; ">
			<img src="img/화살표_오_y.png" width="35px"/></div>
			
			<div class="btm so2_jo_state" id="btm_so2_jo_state_a"
			   style="z-index:20001; position: fixed; background-color: #54c454; width: 70px; left:1282px; top:840px;  margin-left: 3px; text-align: center; color: black; font-size: 14px; font-weight: 700;">
				자동 조깅
			</div>
			<div class="btm so2_jo_state" id="btm_so2_jo_state_m"
			   style="z-index:20001; position: fixed; background-color: #ff3335; width: 70px; left:1282px; top:840px;  margin-left: 3px; text-align: center; color: black; font-size: 14px; font-weight: 700;">
				수동 조깅
			</div>
			
			<div class="btm so2_ff" 
			   style="z-index:20001; position: fixed; background-color: #54c454; width: 70px; left:1282px; top:863px;  margin-left: 3px; text-align: center; color: black; font-size: 14px; font-weight: 700;">
				고속 전진
			</div>
			
			<!-- 리프터 -->
			<div class="btm lift02_dn" id=lift02_dn
			 style="z-index:20001; position: fixed; background-color: #54c454; width: 70px; left:1325px; top:785px;  margin-left: 3px; text-align: center; color: black; font-size: 12px; font-weight: 700;">
				리프터 아래
			</div>
			<div class="btm lift02_up" id=lift02_up
			 style="z-index:20001; position: fixed; background-color: #54c454; width: 70px; left:1325px; top:785px;  margin-left: 3px; text-align: center; color: black; font-size: 14px; font-weight: 700;">
				리프터 위
			</div>
			
			
				
			<!-- 소입 출구문 -->
			<div class="btm so_edoor"  id="btm_so_edoor_r"
			style="z-index:20001; position:fixed; left:1347px; top:615px; text-align:center;">
			<img src="img/10.png" width="14px"/></div>
			
			<div class="btm so_edoor"  id="btm_so_edoor_g"
			style="z-index:20001; position:fixed; left:1347px; top:670px; text-align:center;">
			<img src="img/09.png" width="15px" height="100px"/></div>
			
			<!-- 22 -->
			<div class="btm box22" onclick="getPopupDetail(22);"
			style="z-index:20001; position:fixed; left:1385px; top:713px; font-weight:700; font-size:14pt; text-align:center;
				color:white; cursor:pointer;">
			<img src="img/LTF_box_short3.png" width="45px" /></div>	
					
			<span class="btm box22 box_lno" onclick="getPopupDetail(22);"
			style="z-index:20001; position: fixed; left: 1387px; top:707px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			4</span>
			<span class="btm box22 box_cno" onclick="getPopupDetail(22);"
			style="z-index:20001; position: fixed; left: 1415px; top:707px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
			<span class="btm box22 box_no22" onclick="getPopupDetail(22);"
			style="z-index:20001; position: fixed; left: 1401px; top:725px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
			
			<!-- 위 
			<div class="btm sa_ev sa_ev_u"  
			style="z-index:20001; position:fixed; left:1469px; top:623px; text-align:center;">
			<img src="img/녹색바1.png" width="50px" height="10px"/></div>
			
			<div class="btm sa_ev sa_ev_d"  
			style="z-index:20001; position:fixed; left:1469px; top:623px; text-align:center;">
			<img src="img/적색바2.png" width="50px" height="10px"/></div>
			-->
			
			<!-- SALT조 위 -->
			<div class="btm sa_ev sa_ev_u" id="btm_sa_ev_u"
			style="z-index:20001; position:fixed; left:1470px; top:645px; font-weight:700; font-size:14pt; text-align:center;
				color:white;">
			<img src="img/1.엘레베이터_상승.png" width="50px" height="120px" /></div>	
			
			<!-- 23 -->
			<div class="btm box23_up" onclick="getPopupDetail(23);"
			style="z-index:20010; position:fixed; left:1471px; top:715px; font-weight:700; font-size:14pt; text-align:center;
				color:white; cursor:pointer;">
			<img src="img/LTF_box_short3.png" width="45px" /></div>	
					
			<span class="btm box23_up box_lno" onclick="getPopupDetail(23);"
			style="z-index:20010; position: fixed; left: 1473px; top:712px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			4</span>
			<span class="btm box23_up box_cno" onclick="getPopupDetail(23);"
			style="z-index:20010; position: fixed; left: 1501px; top:712px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
			<span class="btm box23_up box_no23" onclick="getPopupDetail(23);"
			style="z-index:20010; position: fixed; left: 1487px; top:730px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
			
			<!-- 24 
			<div class="btm box23_mid" onclick="getPopupDetail(23);"
			style="z-index:20001; position:fixed; left:1471px; top:410px; font-weight:700; font-size:14pt; text-align:center;
				color:white; cursor:pointer;">
			<img src="img/LTF_box_short_기울음.png" width="48px" /></div>	
					
			<span class="btm box23_mid box_lno" onclick="getPopupDetail(23);"
			style="z-index:20001; position: fixed; left: 1478px; top:410px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			4</span>
			<span class="btm box23_mid box_cno" onclick="getPopupDetail(23);"
			style="z-index:20001; position: fixed; left: 1504px; top:415px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
			<span class="btm box23_mid box_no23" onclick="getPopupDetail(23);"
			style="z-index:20001; position: fixed; left: 1489px; top:425px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
			-->	
			
			<!-- SALT조 아래 -->
			<div class="btm sa_ev sa_ev_d" id="btm_sa_ev_d"
			style="z-index:20001; position:fixed; left:1470px; top:640px; font-weight:700; font-size:14pt; text-align:center;
				color:white;">
			<img src="img/2.엘레베이터_하강.png" width="50px" height="215px" /></div>	
			
			<!-- 25 -->	
			<div class="btm box23_dw" onclick="getPopupDetail(23);"
			style="z-index:20010; position:fixed; left:1471px; top:805px; font-weight:700; font-size:14pt; text-align:center;
				color:white; cursor:pointer;">
			<img src="img/LTF_box_short3.png" width="45px" /></div>	
					
			<span class="btm box23_dw box_lno" onclick="getPopupDetail(23);"
			style="z-index:20010; position: fixed; left: 1474px; top:802px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			4</span>
			<span class="btm box23_dw box_cno" onclick="getPopupDetail(23);"
			style="z-index:20010; position: fixed; left: 1501px; top:802px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
			<span class="btm box23_dw box_no23" onclick="getPopupDetail(23);"
			style="z-index:20010; position: fixed; left: 1487px; top:820px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
				
			<!-- 아래 바 -->
			<div class="btm sa_r_state"  id="btm_sa_r_state01"
			style="z-index:20001; position:fixed; left:1400px; top:755px; text-align:center; ">
			<img src="img/녹색바1.png" width="80px"/></div>
			
			<div class="btm sa_r_state"  id="btm_sa_r_state02"
			style="z-index:20001; position:fixed; left:1450px; top:755px; text-align:center; ">
			<img src="img/적색바2.png" width="80px"/></div>
			
			<div class="btm sa_r_state"  id="btm_sa_r_state03"
			style="z-index:20001; position:fixed; left:1500px; top:755px; text-align:center; ">
			<img src="img/녹색바1.png" width="80px"/></div>
						
			<!-- 12컨베어( Box22) -->
			<!-- 좌 -->
			<div class="btm con14_off"
			style="z-index:20001; position:fixed; left:1380px; top:753px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어off.png" width="12px;"/></div>	
			
			<div class="btm con14"
			style="z-index:20001; position:fixed; left:1380px; top:753px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어.png" width="12px;"/></div>	
			
			<!-- 우 -->
			<div class="btm con14_off"
			style="z-index:20001; position:fixed; left:1417px; top:753px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어off.png" width="12px;"/></div>	
			
			<div class="btm con14"
			style="z-index:20001; position:fixed; left:1417px; top:753px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어.png" width="12px;"/></div>		
			
							
			<div class="btm sa_agi"  id="btm_sa_agi_r"
			style="z-index:20001; position:fixed; left:1430px; top:830px; text-align:center; ">
			<img src="img/아지테이터_r.png" width="30px"/></div>
			
			<div class="btm sa_agi"  
			style="z-index:20001; position:fixed; left:1430px; top:830px; text-align:center; ">
			<img src="img/아지테이터.png" width="30px"/></div>
			
			<div class="btm sa_agi sa_agi_on"  id="btm_sa_agi_lo"
			style="z-index:20001; position:fixed; left:1430px; top:830px; text-align:center; ">
			<img src="img/아지테이터1.png" width="30px"/></div>
				
			<div class="btm sa_agi"  
			style="z-index:20001; position:fixed; left:1525px; top:830px; text-align:center; ">
			<img src="img/아지테이터_r.png" width="30px"/></div>
			
			<div class="btm sa_agi"  
			style="z-index:20001; position:fixed; left:1525px; top:830px; text-align:center; ">
			<img src="img/아지테이터.png" width="30px"/></div>
			
			<div class="btm sa_agi sa_agi_on"  id="btm_sa_agi_ro"
			style="z-index:20001; position:fixed; left:1525px; top:830px; text-align:center; ">
			<img src="img/아지테이터1.png" width="30px"/></div>
			
			<!-- 26 -->	
			<div class="btm box24" onclick="getPopupDetail(24);"
			style="z-index:20001; position:fixed; left:1555px; top:713px; font-weight:700; font-size:14pt; text-align:center;
				color:white; cursor:pointer;">
			<img src="img/LTF_box_short3.png" width="45px" /></div>	
					
			<span class="btm box24 box_lno" onclick="getPopupDetail(24);"
			style="z-index:20001; position: fixed; left: 1557px; top:707px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			4</span>
			<span class="btm box24 box_cno" onclick="getPopupDetail(24);"
			style="z-index:20001; position: fixed; left: 1585px; top:707px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
			<span class="btm box24 box_no24" onclick="getPopupDetail(24);"
			style="z-index:20001; position: fixed; left: 1570px; top:725px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
			
			<!-- 27 -->		
			<div class="btm box25" onclick="getPopupDetail(25);"
			style="z-index:20001; position:fixed; left:1605px; top:713px; font-weight:700; font-size:14pt; text-align:center;
				color:white; cursor:pointer;">
			<img src="img/LTF_box_short3.png" width="45px" /></div>	
					
			<span class="btm box25 box_lno" onclick="getPopupDetail(25);"
			style="z-index:20001; position: fixed; left: 1607px; top:707px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			4</span>
			<span class="btm box25 box_cno" onclick="getPopupDetail(25);"
			style="z-index:20001; position: fixed; left: 1635px; top:707px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
			<span class="btm box25 box_no25" onclick="getPopupDetail(25);"
			style="z-index:20001; position: fixed; left: 1621px; top:725px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
			
			<!-- 28 -->	
			<div class="btm box26" onclick="getPopupDetail(26);"
			style="z-index:20001; position:fixed; left:1655px; top:713px; font-weight:700; font-size:14pt; text-align:center;
				color:white; cursor:pointer;">
			<img src="img/LTF_box_short3.png" width="45px" /></div>	
					
			<span class="btm box26 box_lno" onclick="getPopupDetail(26);"
			style="z-index:20001; position: fixed; left: 1657px; top:707px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			4</span>
			<span class="btm box26 box_cno" onclick="getPopupDetail(26);"
			style="z-index:20001; position: fixed; left: 1685px; top:707px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
			<span class="btm box26 box_no26" onclick="getPopupDetail(26);"
			style="z-index:20001; position: fixed; left: 1671px; top:725px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
						
			<!-- 13컨베어( Box28) -->
			<!-- 좌 -->
			<div class="btm con15_off"
			style="z-index:20001; position:fixed; left:1650px; top:753px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어off.png" width="12px;"/></div>	
			
			<div class="btm con15"
			style="z-index:20001; position:fixed; left:1650px; top:753px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어.png" width="12px;"/></div>	
			
			<!-- 우 -->
			<div class="btm con15_off"
			style="z-index:20001; position:fixed; left:1688px; top:753px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어off.png" width="12px;"/></div>	
			
			<div class="btm con15"
			style="z-index:20001; position:fixed; left:1688px; top:753px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어.png" width="12px;"/></div>		
			
								
			<!-- <div class="btm "  
			style="z-index:20001; position:fixed; left:1585px; top:515px; text-align:center; ">
			<img src="img/화살표_왼_R.png" width="35px"/></div>
			
			<div class="btm "  
			style="z-index:20001; position:fixed; left:1585px; top:515px; text-align:center; ">
			<img src="img/화살표_왼_y.png" width="35px"/></div> -->
			
			<!-- 29 -->	
			<div class="btm box27" onclick="getPopupDetail(27);"
			style="z-index:20001; position:fixed; left:1705px; top:713px; font-weight:700; font-size:14pt; text-align:center;
				color:white; cursor:pointer;">
			<img src="img/LTF_box_short3.png" width="45px" /></div>	
					
			<span class="btm box27 box_lno" onclick="getPopupDetail(27);"
			style="z-index:20001; position: fixed; left: 1707px; top:707px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			4</span>
			<span class="btm box27 box_cno" onclick="getPopupDetail(27);"
			style="z-index:20001; position: fixed; left: 1735px; top:707px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
			<span class="btm box27 box_no27" onclick="getPopupDetail(27);"
			style="z-index:20001; position: fixed; left: 1719px; top:725px; font-weight: 700; color: red; font-size: 15pt; cursor:pointer;">
			2</span>
						
			<!-- 13컨베어( Box28) -->
			<!-- 좌 -->
			<div class="btm con16_off"
			style="z-index:20001; position:fixed; left:1702px; top:753px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어off.png" width="12px;"/></div>	
			
			<div class="btm con16"
			style="z-index:20001; position:fixed; left:1702px; top:753px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어.png" width="12px;"/></div>	
			
			<!-- 우 -->
			<div class="btm con16_off"
			style="z-index:20001; position:fixed; left:1738px; top:753px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어off.png" width="12px;"/></div>	
			
			<div class="btm con16"
			style="z-index:20001; position:fixed; left:1738px; top:753px; font-weight:700; font-size:14pt; text-align:center;
				color:white; ">
			<img src="img/컨베어.png" width="12px;"/></div>		
			
									
		<!-- 	<div class="btm "  
			style="z-index:20001; position:fixed; left:1650px; top:515px; text-align:center; ">
			<img src="img/화살표_오_R.png" width="35px"/></div>
			
			<div class="btm "  
			style="z-index:20001; position:fixed; left:1650px; top:515px; text-align:center; ">
			<img src="img/화살표_오_y.png" width="35px"/></div> -->
			
			
			<!-- 상세 정보 -->
			<!-- RPM -->
			<span
			style="z-index:20001; position:fixed; left:1578px; top:853px; font-weight:700; font-size:15pt; text-align:center;
				color:#123478; ">RPM</span>
				
			<span class="btm rpm" 
			style="z-index:20001; position:fixed; left:1633px; top:850px; font-weight:700; font-size:15pt; text-align:center; width: 90px;
				color:#123478; background:white; border: 3px solid #123478; ">0</span>
					
			<!-- 현재온도 / LNG 삭제 -->
			<div style="z-index:20001; position:fixed; font-weight:700; font-size:12pt; text-align:center;
					color:white; left:200px; top:893px; width:1475px; background-color:#123478; height:25px; ">
					
				<span
				style="z-index:20001; position:fixed; top:893px; left:396px; font-weight:700; font-size:13pt; text-align:center;
					color:white; ">탈지로</span>
					
				<span
				style="z-index:20001; position:fixed; top:893px; left:562px; font-weight:700; font-size:13pt; text-align:center;
					color:white; ">예열</span>
					
				<span
				style="z-index:20001; position:fixed; top:893px; left:752px; font-weight:700; font-size:13pt; text-align:center;
					color:white; ">침탄</span>
					
				<span
				style="z-index:20001; position:fixed; top:893px; left:1032px; font-weight:700; font-size:13pt; text-align:center;
					color:white; ">확산</span>
					
				<span
				style="z-index:20001; position:fixed; top:893px; left:1210px; font-weight:700; font-size:13pt; text-align:center;
					color:white; ">소입1</span>
					
				<span
				style="z-index:20001; position:fixed; top:893px; left:1315px; font-weight:700; font-size:13pt; text-align:center;
					color:white; ">소입2</span>
					
				<span
				style="z-index:20001; position:fixed; top:893px; left:1480px; font-weight:700; font-size:13pt; text-align:center;
					color:white; ">SALT조</span>
					
			</div>
			
					
<!-- 			<div style="z-index:20001; position:fixed; left:100px; top:570px; font-weight:700; font-size:12pt; text-align:center;
					color:white; background-color:#343a40; width:1780px; height:115px; "> -->
					
			<div style="z-index:20001; position:fixed; left:200px; top:920px; font-weight:700; font-size:13pt; text-align:center;
					color:white; background-color:#343a40; width:1475px; height:75px; ">
				
				<!-- SALT조 드레인 / 퀜칭 -->
				<span class="btm " 
				style="z-index:20001; position:fixed; left:1400px; top:915px; font-weight:700; font-size:13pt; text-align:center; width: 100px; height:25px;
					color:white; ">QUECHING</span>
					
				<span class="btm " 
				style="z-index:20001; position:fixed; left:1513px; top:915px; font-weight:700; font-size:13pt; text-align:center; width: 100px; height:25px;
					color:white; ">DRAIN</span>
					
					
				<!-- 잔여시간 (분) -->
				<span
				style="z-index:20001; position:fixed; left:240px; top:938px; font-weight:700; font-size:13pt; text-align:center;
					color:white; ">잔여시간 (분)</span>
				
				<!-- 탈지 -->
				<span class="btm rt_s" 
				style="z-index:20001; position:fixed; left:370px; top:938px; font-weight:700; font-size:13pt; text-align:center; width: 100px; height:25px;
					color:#c03f3f; background:WHITE; ">0</span>
					
				<!-- 예열 -->
				<span class="btm rt_p" 
				style="z-index:20001; position:fixed; left:530px; top:938px; font-weight:700; font-size:13pt; text-align:center; width: 100px; height:25px;
					color:#c03f3f; background:WHITE; ">0</span>
				
				<!-- 소입1 -->
				<span class="btm rt_so1" 
				style="z-index:20001; position:fixed; left:1180px; top:938px; font-weight:700; font-size:13pt; text-align:center; width: 100px; height:25px;
					color:#c03f3f; background:WHITE; ">0</span>
				
				<!-- 소입2 -->	
				<span class="btm rt_so2" 
				style="z-index:20001; position:fixed; left:1285px; top:938px; font-weight:700; font-size:13pt; text-align:center; width: 100px; height:25px;
					color:#c03f3f; background:WHITE; ">0</span>
				
				<!-- 퀜칭 -->		
				<span class="btm rt_q" 
				style="z-index:20001; position:fixed; left:1400px; top:938px; font-weight:700; font-size:13pt; text-align:center; width: 100px; height:25px;
					color:#c03f3f; background:WHITE; ">0</span>
				
				<!-- 드레인 -->		
				<span class="btm rt_d" 
				style="z-index:20001; position:fixed; left:1513px; top:938px; font-weight:700; font-size:13pt; text-align:center; width: 100px; height:25px;
					color:#c03f3f; background:WHITE; ">0</span>	
					
					
				<!-- 설정시간 (분) -->	
				<span
				style="z-index:20001; position:fixed; left:240px; top:963px; font-weight:700; font-size:13pt; text-align:center;
					color:white; ">설정시간 (분)</span>
				
				<!-- 탈지 -->	
				<span class="btm st_s" 
				style="z-index:20001; position:fixed; left:370px; top:967px; font-weight:700; font-size:13pt; text-align:center; width: 100px; height:25px;
					color:#123478; background:WHITE; ">0</span>
				
				<!-- 예열 -->	
				<span class="btm st_p" 
				style="z-index:20001; position:fixed; left:530px; top:967px; font-weight:700; font-size:13pt; text-align:center; width: 100px; height:25px;
					color:#123478; background:WHITE; ">0</span>
					
				<!-- 침탄 -->
				<span class="btm " 
				style="z-index:20001; position:fixed; left:670px; top:944px; font-weight:700; font-size:13pt; text-align:center; width: 100px; height:25px;
					color:white; ">CYCLE NO</span>
					
				<span class="btm cn_c" 
				style="z-index:20001; position:fixed; left:775px; top:946px; font-weight:700; font-size:13pt; text-align:center; width: 100px; height:25px;
					color:white; background:#869fbf; ">0</span>
					
				<!-- 확산 -->	
				<span class="btm " 
				style="z-index:20001; position:fixed; left:950px; top:944px; font-weight:700; font-size:13pt; text-align:center; width: 100px; height:25px;
					color:white; ">CYCLE NO</span>
						
				<span class="btm cn_d" 
				style="z-index:20001; position:fixed; left:1050px; top:946px; font-weight:700; font-size:13pt; text-align:center; width: 100px; height:25px;
					color:white; background:#86bf94; ">0</span>
				
				<!-- 소입1 -->
				<span class="btm st_so1" 
				style="z-index:20001; position:fixed; left:1180px; top:967px; font-weight:700; font-size:13pt; text-align:center; width: 100px; height:25px;
					color:#123478; background:WHITE; ">0</span>
				
				<!-- 소입2 -->
				<span class="btm st_so2" 
				style="z-index:20001; position:fixed; left:1285px; top:967px; font-weight:700; font-size:13pt; text-align:center; width: 100px; height:25px;
					color:#123478; background:WHITE; ">0</span>
				
				<!-- 퀜칭 -->		
				<span class="btm st_q" 
				style="z-index:20001; position:fixed; left:1400px; top:967px; font-weight:700; font-size:13pt; text-align:center; width: 100px; height:25px;
					color:#123478; background:WHITE; ">0</span>
				
				<!-- 드레인 -->		
				<span class="btm st_d" 
				style="z-index:20001; position:fixed; left:1513px; top:967px; font-weight:700; font-size:13pt; text-align:center; width: 100px; height:25px;
					color:#123478; background:WHITE; ">0</span>	
					
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
		        leftArrow: '<i class="btm fa fa-long-arrow-left"></i>',
		        rightArrow: '<i class="btm fa fa-long-arrow-right"></i>'
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
		
		$("#btm_dateTime").text(year+"-"+month+"-"+date+" "+hour+":"+minute+":"+second);

		$("#btm_edate").datepicker("update",year+"-"+month+"-"+date);
		
		var before = new Date();
		before.setFullYear(before.getFullYear(), before.getMonth(), before.getDate()-1);

		var b_year = before.getFullYear();
		var b_month = checkDate(before.getMonth()+1);
		var b_date = checkDate(before.getDate());
		
		$("#btm_sdate").datepicker("update",b_year+"-"+b_month+"-"+b_date);

		// 30초마다 시간 불러오기
		timer = setInterval(function(){

			now = new Date();
			
			year = now.getFullYear();
			month = checkDate(now.getMonth()+1);
			date = checkDate(now.getDate());

			hour = checkDate(now.getHours());
			minute = checkDate(now.getMinutes());
			second = checkDate(now.getSeconds());
			
//			$("#btm_dateTime").text(year+"-"+month+"-"+date+" "+hour+":"+minute+":"+second);
		}, 10000);

		// 30초마다 리로드

		ccfinfointerval = setInterval("getBCFinfo()", 10000);
		ccfstateinterval = setInterval("getCCFstate()", 10000);
		boxinterval = setInterval(function(){
			interval_cnt ++ ;
			getCCFBOX();
		}, 10000);

		imageInterval = setInterval("getImageActive()",1300);
	
			// 로드 시 텍스트 값 공란
			$(".btm.rt_s").text("　");		// 탈지로 잔여시간
			$(".btm.st_s").text("　");		// 탈지로 설정시간
			$(".btm.rt_p").text("　");		// 예열 잔여시간
			$(".btm.st_p").text("　");		// 예열 설정시간
			$(".btm.rt_so1").text("　");		// 소입1 잔여시간
			$(".btm.st_so1").text("　");		// 소입1 설정시간
			$(".btm.rt_so2").text("　");		// 소입2 잔여시간
			$(".btm.st_so2").text("　");		// 소입2 설정시간
			$(".btm.rt_q").text("　");		// 퀜칭 잔여시간
			$(".btm.st_q").text("　");		// 퀜칭 설정시간
			$(".btm.rt_d").text("　");		// 드레인 잔여시간
			$(".btm.st_d").text("　");		// 드레인 설정시간
			$(".btm.cn_c").text("　");		// 침탄 cycle no
			$(".btm.cn_d").text("　");		// 확산 cycle no
			$(".btm.rpm").text("　");		// RPM
	
			getBCFinfo();
			getCCFstate();
			getCCFBOX();

	});
	
	
	//이벤트		
	$("#hogi2_out").on("click", function(){
		//1호기 출고요청
		
		if(!confirm("2호기 출고요청하시겠습니까?")){
			return;
		}
		
		$.ajax({
			url:"DB/03_process_02_release.jsp",
			type:"post",
			dataType:"json",
			data:{"hogi":2},
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
		//console.log("이름 : " + comm_qr.indexOf('-Z'));

		/* 큰화면
		var width = (window.screen.width)-500;
		var height = (window.screen.height)-100;
		*/
		
		var width = window.screen.width;
		var height = window.screen.height;
		
		/*큰화면
		var popupx = width-(width/2);
		var popupy = height-(height/2);
		*/
		var popupx = width-width;
		var popupy = height-height;
		
		openWin = window.open('Popup_data.jsp', '', 'status=no, width='+width+', height='+height+', menubar=1, left='+popupx+',top='+ popupy+', screenX='+popupx+', screenY='+popupy);
	}

	// 박스별 세부 정보 팝업창
	function getPopupDetail(value){
//		$(".btm.box_no16").text(
		var pum; 
		if(value != 23){
			pum = $(".btm.box_no"+value).text();
		}else{
			pum = $(".btm.box23_dw.box_no"+value).text();
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
		
		openWin = window.open('popup/00_detail_info.jsp?num=2&box='+pum, '', 'status=no, width='+width+', height='+height+', menubar=1, left='+popupx+',top='+ popupy+', screenX='+popupx+', screenY='+popupy);
	}

	
	/* info */
	function getBCFinfo(){	
		$.ajax({
			type:"POST",
			url:"DB/CCF_info_22.jsp",
			cache : false,
			dataType:"json",
			data:{"num":"2"},
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
					$(".btm.rt_s").text("　");		// 탈지로 잔여시간
				}else{
					$(".btm.rt_s").text(rt_s);
				}

				if(st_s == null || st_s == "null" || st_s == "" ){
					$(".btm.st_s").text("　");		// 탈지로 설정시간
				}else{
					$(".btm.st_s").text(st_s);
				}

				if(rt_p == null || rt_p == "null" || rt_p == "" ){
					$(".btm.rt_p").text("　");		// 예열 잔여시간
				}else{
					$(".btm.rt_p").text(rt_p);
				}

				if(st_p == null || st_p == "null" || st_p == "" ){
					$(".btm.st_p").text("　");		// 예열 설정시간
				}else{
					$(".btm.st_p").text(st_p);
				}

				if(rt_so1 == null || rt_so1 == "null" || rt_so1 == "" ){
					$(".btm.rt_so1").text("　");		// 소입1 잔여시간
				}else{
					$(".btm.rt_so1").text(rt_so1);
				}

				if(st_so1 == null || st_so1 == "null" || st_so1 == "" ){
					$(".btm.st_so1").text("　");		// 소입1 설정시간
				}else{
					$(".btm.st_so1").text(st_so1);
				}

				if(rt_so2 == null || rt_so2 == "null" || rt_so2 == "" ){
					$(".btm.rt_so2").text("　");		// 소입2 잔여시간
				}else{
					$(".btm.rt_so2").text(rt_so2);
				}

				if(st_so2 == null || st_so2 == "null" || st_so2 == "" ){
					$(".btm.st_so2").text("　");		// 소입2 설정시간
				}else{
					$(".btm.st_so2").text(st_so2);
				}
		        
				if(rt_q == null || rt_q == "null" || rt_q == "" ){
					$(".btm.rt_q").text("　");		// 퀜칭 잔여시간
				}else{
					$(".btm.rt_q").text(rt_q);
				}
		        
				if(st_q == null || st_q == "null" || st_q == "" ){
					$(".btm.st_q").text("　");		// 퀜칭 설정시간
				}else{
					$(".btm.st_q").text(st_q);
				}

				if(rt_d == null || rt_d == "null" || rt_d == "" ){
					$(".btm.rt_d").text("　");		// 드레인 잔여시간
				}else{
					$(".btm.rt_d").text(rt_d);
				}

				if(st_d == null || st_d == "null" || st_d == "" ){
					$(".btm.st_d").text("　");		// 드레인 설정시간
				}else{
					$(".btm.st_d").text(st_d);
				}

				if(cn_c == null || cn_c == "null" || cn_c == "" ){
					$(".btm.cn_c").text("　");		// 침탄 cycle no
				}else{
					$(".btm.cn_c").text(cn_c);
				}

				if(cn_d == null || cn_d == "null" || cn_d == "" ){
					$(".btm.cn_d").text("　");		// 확산 cycle no
				}else{
					$(".btm.cn_d").text(cn_d);
				}

				if(rpm == null || rpm == "null" || rpm == "" ){
					$(".btm.rpm").text("　");		// RPM
				}else{
					$(".btm.rpm").text(rpm);
				}

				/* if(p_name == null || p_name == "null" || p_name == "" ){
				$("#btm_p_name").text("　");		// 품명
				}else{
					$("#btm_p_name").text(p_name);		// 품명
					
					var length = p_name.length;
					//console.log(length);
					if(length > 20){
						$("#btm_p_name").css("font-size", "-=7");		// 특이사항
						$("#btm_p_name").css("top", "768px");		// 특이사항
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
	
	var sa_ev_state;
	
	var s_fan_state;
	var p_fan_state;
	var c_fan_state;
	var d_fan_state;
	var so1_fan_state;
	var so2_fan_state;
	
	var sa_agi_state;
	
	var p_roller_state;
	var c_roller_state;
	var d_roller_state;
	var so1_roller_state;
	var so2_roller_state;	
	
	
	/* Status */
	function getCCFstate(){
		$.ajax({
			type:"POST",
			url:"DB/CCF_state.jsp",
			cache : false,
			dataType:"json",
			data:{"num":"2"},
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

				s_fan_state = s_fan;
				p_fan_state = p_fan;
				c_fan_state = c_fan;
				d_fan_state = d_fan;
				so1_fan_state = so1_fan;
				so2_fan_state = so2_fan;
				
				sa_agi_state = sa_agi;
				
				p_roller_state = p_roller;
				c_roller_state = c_roller;
				d_roller_state = d_roller;
				so1_roller_state = so1_roller;
				so2_roller_state = so2_roller;
				
				
				if(lift01 == "1"){
					$(".btm.lift01_up").show();
					$(".btm.lift01_dn").hide();
				}else{
					$(".btm.lift01_up").hide();
					$(".btm.lift01_dn").show();
				}

				if(lift02 == "1"){
					$(".btm.lift02_up").show();
					$(".btm.lift02_dn").hide();
				}else{
					$(".btm.lift02_up").hide();
					$(".btm.lift02_dn").show();
				}
				
				if(con01 == "1"){
					$(".btm.con01").show();
					$(".btm.con01_off").hide();
				}else{
					$(".btm.con01").hide();
					$(".btm.con01_off").show();
				}
				
				if(con02 == "1"){
					$(".btm.con02").show();
					$(".btm.con02_off").hide();
				}else{
					$(".btm.con02").hide();
					$(".btm.con02_off").show();
				}
				
				if(con03 == "1"){
					$(".btm.con03").show();
					$(".btm.con03_off").hide();
				}else{
					$(".btm.con03").hide();
					$(".btm.con03_off").show();
				}
				
				if(con04 == "1"){
					$(".btm.con04").show();
					$(".btm.con04_off").hide();
				}else{
					$(".btm.con04").hide();
					$(".btm.con04_off").show();
				}
				
				if(con05 == "1"){
					$(".btm.con05").show();
					$(".btm.con05_off").hide();
				}else{
					$(".btm.con05").hide();
					$(".btm.con05_off").show();
				}
				
				if(con06 == "1"){
					$(".btm.con06").show();
					$(".btm.con06_off").hide();
				}else{
					$(".btm.con06").hide();
					$(".btm.con06_off").show();
				}
				
				if(con07 == "1"){
					$(".btm.con07").show();
					$(".btm.con07_off").hide();
				}else{
					$(".btm.con07").hide();
					$(".btm.con07_off").show();
				}
				
				if(con08 == "1"){
					$(".btm.con08").show();
					$(".btm.con08_off").hide();
				}else{
					$(".btm.con08").hide();
					$(".btm.con08_off").show();
				}
				
				if(con09 == "1"){
					$(".btm.con09").show();
					$(".btm.con09_off").hide();
				}else{
					$(".btm.con09").hide();
					$(".btm.con09_off").show();
				}
				
				if(con10 == "1"){
					$(".btm.con10").show();
					$(".btm.con10_off").hide();
				}else{
					$(".btm.con10").hide();
					$(".btm.con10_off").show();
				}
				
				if(con11 == "1"){
					$(".btm.con11").show();
					$(".btm.con11_off").hide();
				}else{
					$(".btm.con11").hide();
					$(".btm.con11_off").show();
				}
				
				if(con12 == "1"){
					$(".btm.con12").show();
					$(".btm.con12_off").hide();
				}else{
					$(".btm.con12").hide();
					$(".btm.con12_off").show();
				}
				
				if(con13 == "1"){
					$(".btm.con13").show();
					$(".btm.con13_off").hide();
				}else{
					$(".btm.con13").hide();
					$(".btm.con13_off").show();
				}
				
				if(con14 == "1"){
					$(".btm.con14").show();
					$(".btm.con14_off").hide();
				}else{
					$(".btm.con14").hide();
					$(".btm.con14_off").show();
				}

				if(clu01 == "1"){
					$(".btm.cl01").show();
					$(".btm.cl01_off").hide();
				}else{
					$(".btm.cl01").hide();
					$(".btm.cl01_off").show();
				}
				
				if(clu02 == "1"){
					$(".btm.cl02").show();
					$(".btm.cl02_off").hide();
				}else{
					$(".btm.cl02").hide();
					$(".btm.cl02_off").show();
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
					$("#btm_jo_state_auto").show();
					$("#btm_jo_state_man").hide();
				}else{
					$("#btm_jo_state_auto").hide();
					$("#btm_jo_state_man").show();
				}

				// 탈지로
				if(s_r_state == "1"){
					$("#btm_s_r_state_r").show();
					$("#btm_s_r_state_g").hide();
				}else{
					$("#btm_s_r_state_r").hide();
					$("#btm_s_r_state_g").show();
				}
				
				
				if(s_fdoor == "0"){
					$("#btm_s_fdoor_r").show();
					$("#btm_s_fdoor_g").hide();
				}else{
					$("#btm_s_fdoor_r").hide();
					$("#btm_s_fdoor_g").show();
				}
				
				
				if(s_edoor == "0"){
					$("#btm_s_edoor_r").show();
					$("#btm_s_edoor_g").hide();
				}else{
					$("#btm_s_edoor_r").hide();
					$("#btm_s_edoor_g").show();
				}
				
				
				if(s_fan == 0){
					$("#btm_s_fan00").show();
					$("#btm_s_fan02").hide();
					$("#btm_s_fan03").hide();
				}else if(s_fan == 1){
					$("#btm_s_fan00").hide();
					$("#btm_s_fan02").hide();
					$("#btm_s_fan03").show();

				}else if(s_fan == 2){
					$("#btm_s_fan00").hide();
					$("#btm_s_fan02").show();
					$("#btm_s_fan03").hide();
				}else{
					$(".btm.s_fan").hide();
				}

				// 예열
				if(p_fdoor == "0"){
					$("#btm_p_fdoor_r").show();
					$("#btm_p_fdoor_g").hide();
				}else{
					$("#btm_p_fdoor_r").hide();
					$("#btm_p_fdoor_g").show();
				}
				
				
				if(p_edoor == "0"){
					$("#btm_p_edoor_r").show();
					$("#btm_p_edoor_g").hide();
				}else{
					$("#btm_p_edoor_r").hide();
					$("#btm_p_edoor_g").show();
				}
				

				if(p_fan == 0){
					$("#btm_p_fan00").show();
					$("#btm_p_fan02").hide();
					$("#btm_p_fan03").hide();
				}else if(p_fan == 1){
					$("#btm_p_fan00").hide();
					$("#btm_p_fan02").hide();
					$("#btm_p_fan03").show();

				}else if(p_fan == 2){
					$("#btm_p_fan00").hide();
					$("#btm_p_fan02").show();
					$("#btm_p_fan03").hide();
				}else{
					$(".btm.p_fan").hide();
				}


				if(p_roller == "1"){
					/* 예열 롤러 방향 - 좌 */
					$("#btm_p_roller_r").hide();
					$("#btm_p_roller_rr").hide();

				}else if(p_roller == "2"){
					/* 예열 롤러 방향 - 우 */
					$("#btm_p_roller_l").hide();

					
				}else{
					$("#btm_p_roller_l").hide();
					$("#btm_p_roller_r").hide();
				}

				if(p_jo_state == "1"){
					$("#btm_p_jo_state_a").show();
					$("#btm_p_jo_state_m").hide();
				}/* else if(p_jo_state == "2"){
					$("#btm_p_jo_state_a").hide();
					$("#btm_p_jo_state_m").show();
				} */else{
					$("#btm_p_jo_state_a").hide();
					$("#btm_p_jo_state_m").show();
				}
				
				// 침탄
				if(c_fan == 0){
					$("#btm_c_fan00").show();
					$("#btm_c_fan02").hide();
					$("#btm_c_fan03").hide();
				}else if(c_fan == 1){
					$("#btm_c_fan00").hide();
					$("#btm_c_fan02").hide();
					$("#btm_c_fan03").show();

				}else if(c_fan == 2){
					$("#btm_c_fan00").hide();
					$("#btm_c_fan02").show();
					$("#btm_c_fan03").hide();
				}else{
					$(".btm.c_fan").hide();
				}


				if(c_roller == "1"){
					/* 침탄 롤러 방향 - 좌 */
					$("#btm_c_roller_r").hide();
					$("#btm_c_roller_rr").hide();


				}else if(c_roller == "2"){
					/* 침탄 롤러 방향 - 우 */
					$("#btm_c_roller_l").hide();
					$("#btm_c_roller_rl").hide();

					
				}else{
					$("#btm_c_roller_l").hide();
					$("#btm_c_roller_r").hide();
				}

				// 로
				if(l_jo_state == "1"){
					$("#btm_l_jo_state_a").show();
					$("#btm_l_jo_state_m").hide();
				}/* else if(l_jo_state == "2"){
					$("#btm_l_jo_state_a").hide();
					$("#btm_l_jo_state_m").show();
				} */else{
					$("#btm_l_jo_state_a").hide();
					$("#btm_l_jo_state_m").show();
				}

				// 확산
				if(d_fan == 0){
					$("#btm_d_fan00").show();
					$("#btm_d_fan02").hide();
					$("#btm_d_fan03").hide();
				}else if(d_fan == 1){
					$("#btm_d_fan00").hide();
					$("#btm_d_fan02").hide();
					$("#btm_d_fan03").show();

				}else if(d_fan == 2){
					$("#btm_d_fan00").hide();
					$("#btm_d_fan02").show();
					$("#btm_d_fan03").hide();
				}else{
					$(".btm.d_fan").hide();
				}


				if(d_roller == "1"){
					/* 확산 롤러 방향 - 좌 */
					$("#btm_d_roller_r").hide();
					$("#btm_d_roller_rr").hide();


				}else if(d_roller == "2"){
					/* 확산 롤러 방향 - 우 */
					$("#btm_d_roller_l").hide();
					$("#btm_d_roller_rl").hide();

					
				}else{
					$("#btm_d_roller_l").hide();
					$("#btm_d_roller_r").hide();
				}

				// 소입
				// 입구
				if(so_fdoor == "0"){
					$("#btm_so_fdoor_r").show();
					$("#btm_so_fdoor_g").hide();
				}else{
					$("#btm_so_fdoor_r").hide();
					$("#btm_so_fdoor_g").show();
				}
				
				// 중간
				if(so_mdoor == "0"){
					$("#btm_so_mdoor_r").show();
					$("#btm_so_mdoor_g").hide();
				}else{
					$("#btm_so_mdoor_r").hide();
					$("#btm_so_mdoor_g").show();
				}
				
				// 출구
				if(so_edoor == "0"){
					$("#btm_so_edoor_r").show();
					$("#btm_so_edoor_g").hide();
				}else{
					$("#btm_so_edoor_r").hide();
					$("#btm_so_edoor_g").show();
				}
				
				
				// 소입1
				if(so1_fan == 0){
					$("#btm_so1_fan00").show();
					$("#btm_so1_fan02").hide();
					$("#btm_so1_fan03").hide();
				}else if(so1_fan == 1){
					$("#btm_so1_fan00").hide();
					$("#btm_so1_fan02").hide();
					$("#btm_so1_fan03").show();

				}else if(so1_fan == 2){
					$("#btm_so1_fan00").hide();
					$("#btm_so1_fan02").show();
					$("#btm_so1_fan03").hide();
				}else{
					$(".btm.so1_fan").hide();
				}

				
				if(so1_roller == "1"){
					/* 소입1 롤러 방향 - 좌 */
					$("#btm_so1_roller_r").hide();
					$("#btm_so1_roller_rr").hide();


				}else if(so1_roller == "2"){
					/* 소입1 롤러 방향 - 우 */
					$("#btm_so1_roller_l").hide();
					$("#btm_so1_roller_rl").hide();

					
				}else{
					$("#btm_so1_roller_l").hide();
					$("#btm_so1_roller_r").hide();
				}


				if(so1_jo_state == "1"){
					$("#btm_so1_jo_state_a").show();
					$("#btm_so1_jo_state_m").hide();
				}/* else if(so1_jo_state == "2"){
					$("#btm_so1_jo_state_a").hide();
					$("#btm_so1_jo_state_m").show();
				} */else{
					$("#btm_so1_jo_state_a").hide();
					$("#btm_so1_jo_state_m").show();
				}


				// 소입2
				if(so2_fan == 0){
					$("#btm_so2_fan00").show(); // 정지
					$("#btm_so2_fan02").hide(); // 이상
					$("#btm_so2_fan03").hide(); // 정상
				}else if(so2_fan == 1){
					$("#btm_so2_fan00").hide();
					$("#btm_so2_fan02").hide();
					$("#btm_so2_fan03").show();
					

				}else if(so2_fan == 2){
					$("#btm_so2_fan00").hide();
					$("#btm_so2_fan02").show();
					$("#btm_so2_fan03").hide();
				}else{
					$(".btm.so2_fan").hide();
				}

				
				if(so2_roller == "1"){
					/* 소입2 롤러 방향 - 좌 */
					$("#btm_so2_roller_r").hide();
					$("#btm_so2_roller_rr").hide();


				}else if(so2_roller == "2"){
					/* 소입2 롤러 방향 - 우 */
					$("#btm_so2_roller_l").hide();
					$("#btm_so2_roller_rl").hide();

				}else{
					$("#btm_so2_roller_l").hide();
					$("#btm_so2_roller_r").hide();
				}


				if(so2_jo_state == "1"){
					$("#btm_so2_jo_state_a").show();
					$("#btm_so2_jo_state_m").hide();
				}/* else if(so2_jo_state == "2"){
					$("#btm_so2_jo_state_a").hide();
					$("#btm_so2_jo_state_m").show();
				} */else{
					$("#btm_so2_jo_state_a").hide();
					$("#btm_so2_jo_state_m").show();
				}


				if(so2_ff == "1"){
					$(".btm.so2_ff").show();
				}else{
					$(".btm.so2_ff").hide();
				}

				// 솔트조
				if(sa_ev == "1"){
					$(".btm.sa_ev_d").show();
					$(".btm.sa_ev_u").hide();
				}else{
					$(".btm.sa_ev_d").hide();
					$(".btm.sa_ev_u").show();
				}
				
				
				if(s_r_state == "1"){
					$("#btm_sa_r_state01").show();
					$("#btm_sa_r_state02").hide();
					$("#btm_sa_r_state03").hide();
				}else if(s_r_state == "2"){
					$("#btm_sa_r_state01").hide();
					$("#btm_sa_r_state02").show();
					$("#btm_sa_r_state03").hide();
				}else if(s_r_state == "3"){
					$("#btm_sa_r_state01").hide();
					$("#btm_sa_r_state02").hide();
					$("#btm_sa_r_state03").show();
				}else{
					$("#btm_sa_r_state01").hide();
					$("#btm_sa_r_state02").hide();
					$("#btm_sa_r_state03").hide();
				}

				
				if(sa_agi == "1"){
					/* 아지테이터 */
				}else if(sa_agi == "2"){
					 $(".btm.sa_agi").hide();
					 $("#btm_sa_agi_r").show();
				}else{
					 $(".btm.sa_agi").hide();
				}

				/* if(sa_b_state == "1"){
					// 박스 기울기
					$(".btm.box24").show();
				}else{
					 $(".btm.box24").hide();
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
	function getCCFBOX(){	
		$.ajax({
			type:"POST",
			url:"DB/CCF_box.jsp",
			cache : false,
			dataType:"json",
			data:{"num":"2"},
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

		        $(".btm.box_lno").text(box_cno);	
	        	$(".btm.box_cno").text(box_lno);
	        	
	        	$(".btm.box23_mid").hide();	//기울기
	        	
	        	//SALT 엘레베이터 아래에 있을 때
	        	if(sa_ev_state == 0){
	        		if(box23 == 0){
						$(".btm.box23_up").hide();
						$(".btm.box23_dw").hide();        			
	        		}else{
						$(".btm.box23_up").hide();
						$(".btm.box23_dw").show();
	        		}
	        	}else{
	        		//SALT 엘레베이터 아래에 있을 때
	        		if(box23 == 0){
						$(".btm.box23_up").hide();
						$(".btm.box23_dw").hide();        			
	        		}else{
						$(".btm.box23_up").show();
						$(".btm.box23_dw").hide();
	        		}	        		
	        	}
	        	
	        	
	        	if(box_cno != null){
		        	var length = box_cno.length;
		        	if(interval_cnt == 0){
		        		if(length > 1){
							$(".btm.box_cno").css("left", "-=7");
							past = length;
						}
		        	}else{
		        		if(past > 1){
//		    	        	console.log("past : " + past);
							$(".btm.box_cno").css("left", "+=7");
							past = 0;
							
							if(length > 1){
			    	        	
								$(".btm.box_cno").css("left", "-=7");
							} 
						}
		        	}
				}

		        if(box1 == "0"){
					$(".btm.box1").hide();
				}else if(box1 == "1"){
		        	$(".btm.box_no1").text(box_no1);
					$(".btm.box1").show();
					
					var length = box_no1.length;
					
					if(interval_cnt == 0){
						if(length > 1){
							$(".btm.box_no1").css("left", "-=4");
						} 		
					}else{
		        		if(past > 1){
		        			$(".btm.box_no1").css("left", "+=4");
							past = 0;
							
							if(length > 1){
								$(".btm.box_no1").css("left", "-=4");
							} 
						}
		        	}
				}

				if(box2 == "0"){	
					$(".btm.box2").hide();
				}else if(box2 == "1"){
					$(".btm.box_no2").text(box_no2);		
					$(".btm.box2").show();

					var length = box_no2.length;
					
					if(interval_cnt == 0){
						if(length > 1){
							$(".btm.box_no2").css("left", "-=4");
						} 		
					}else{
		        		if(past > 1){
		        			$(".btm.box_no2").css("left", "+=4");
							past = 0;
							
							if(length > 1){
			    	        	
								$(".btm.box_no2").css("left", "-=4");
							} 
						}
		        	}	
				}

				if(box3 == "0"){	
					$(".btm.box3").hide();
				}else if(box3 == "1"){
					$(".btm.box_no3").text(box_no3);		
					$(".btm.box3").show();	
					
					var length = box_no3.length;
					
					if(interval_cnt == 0){
						if(length > 1){
							$(".btm.box_no3").css("left", "-=4");
						} 		
					}else{
		        		if(past > 1){
		        			$(".btm.box_no3").css("left", "+=4");
							past = 0;
							
							if(length > 1){
			    	        	
								$(".btm.box_no3").css("left", "-=4");
							} 
						}
		        	}	
				}
				
				if(box4 == "0"){	
					$(".btm.box4").hide();
				}else if(box4 == "1"){
					$(".btm.box_no4").text(box_no4);		
					$(".btm.box4").show();
					
					var length = box_no4.length;
					
					if(interval_cnt == 0){
						if(length > 1){
							$(".btm.box_no4").css("left", "-=4");
						} 		
					}else{
		        		if(past > 1){
		        			$(".btm.box_no4").css("left", "+=4");
							past = 0;
							
							if(length > 1){
			    	        	
								$(".btm.box_no4").css("left", "-=4");
							} 
						}
		        	}		
				}
				
				if(box5 == "0"){	
					$(".btm.box5").hide();
				}else if(box5 == "1"){
					$(".btm.box_no5").text(box_no5);		
					$(".btm.box5").show();	
					
					var length = box_no5.length;
					
					if(interval_cnt == 0){
						if(length > 1){
							$(".btm.box_no5").css("left", "-=4");
						} 		
					}else{
		        		if(past > 1){
		        			$(".btm.box_no5").css("left", "+=4");
							past = 0;
							
							if(length > 1){
			    	        	
								$(".btm.box_no5").css("left", "-=4");
							} 
						}
		        	}	
				}
				
				if(box6 == "0"){	
					$(".btm.box6").hide();
				}else if(box6 == "1"){
					$(".btm.box_no6").text(box_no6);		
					$(".btm.box6").show();
					
					var length = box_no6.length;
					
					if(interval_cnt == 0){
						if(length > 1){
							$(".btm.box_no6").css("left", "-=4");
						} 		
					}else{
		        		if(past > 1){
		        			$(".btm.box_no6").css("left", "+=4");
							past = 0;
							
							if(length > 1){
			    	        	
								$(".btm.box_no6").css("left", "-=4");
							} 
						}
		        	}		
				}
				
				if(box7 == "0"){	
					$(".btm.box7").hide();
				}else if(box7 == "1"){
					$(".btm.box_no7").text(box_no7);		
					$(".btm.box7").show();
					
					var length = box_no7.length;
					
					if(interval_cnt == 0){
						if(length > 1){
							$(".btm.box_no7").css("left", "-=4");
						} 		
					}else{
		        		if(past > 1){
		        			$(".btm.box_no7").css("left", "+=4");
							past = 0;
							
							if(length > 1){
			    	        	
								$(".btm.box_no7").css("left", "-=4");
							} 
						}
		        	}		
				}
				
				if(box8 == "0"){	
					$(".btm.box8").hide();
				}else if(box8 == "1"){
					$(".btm.box_no8").text(box_no8);		
					$(".btm.box8").show();
					
					var length = box_no8.length;
					
					if(interval_cnt == 0){
						if(length > 1){
							$(".btm.box_no8").css("left", "-=4");
						} 		
					}else{
		        		if(past > 1){
		        			$(".btm.box_no8").css("left", "+=4");
							past = 0;
							
							if(length > 1){
			    	        	
								$(".btm.box_no8").css("left", "-=4");
							} 
						}
		        	}		
				}
				
				if(box9 == "0"){	
					$(".btm.box9").hide();
				}else if(box9 == "1"){
					$(".btm.box_no9").text(box_no9);		
					$(".btm.box9").show();
					
					var length = box_no9.length;
					
					if(interval_cnt == 0){
						if(length > 1){
							$(".btm.box_no9").css("left", "-=4");
						} 		
					}else{
		        		if(past > 1){
		        			$(".btm.box_no9").css("left", "+=4");
							past = 0;
							
							if(length > 1){
			    	        	
								$(".btm.box_no9").css("left", "-=4");
							} 
						}
		        	}		
				}
				
				if(box10 == "0"){	
					$(".btm.box10").hide();
				}else if(box10 == "1"){
					$(".btm.box_no10").text(box_no10);		
					$(".btm.box10").show();	
					
					var length = box_no10.length;
					
					if(interval_cnt == 0){
						if(length > 1){
							$(".btm.box_no10").css("left", "-=4");
						} 		
					}else{
		        		if(past > 1){
		        			$(".btm.box_no10").css("left", "+=4");
							past = 0;
							
							if(length > 1){
			    	        	
								$(".btm.box_no10").css("left", "-=4");
							} 
						}
		        	}	
				}
				
				if(box11 == "0"){	
					$(".btm.box11").hide();
				}else if(box11 == "1"){
					$(".btm.box_no11").text(box_no11);		
					$(".btm.box11").show();
					
					var length = box_no11.length;
					
					if(interval_cnt == 0){
						if(length > 1){
							$(".btm.box_no11").css("left", "-=4");
						} 		
					}else{
		        		if(past > 1){
		        			$(".btm.box_no11").css("left", "+=4");
							past = 0;
							
							if(length > 1){
			    	        	
								$(".btm.box_no11").css("left", "-=4");
							} 
						}
		        	}		
				}
				
				if(box12 == "0"){	
					$(".btm.box12").hide();
				}else if(box12 == "1"){
					$(".btm.box_no12").text(box_no12);		
					$(".btm.box12").show();	
					
					var length = box_no12.length;
					
					if(interval_cnt == 0){
						if(length > 1){
							$(".btm.box_no12").css("left", "-=4");
						} 		
					}else{
		        		if(past > 1){
		        			$(".btm.box_no12").css("left", "+=4");
							past = 0;
							
							if(length > 1){
			    	        	
								$(".btm.box_no12").css("left", "-=4");
							} 
						}
		        	}	
				}
				
				if(box13 == "0"){	
					$(".btm.box13").hide();
				}else if(box13 == "1"){
					$(".btm.box_no13").text(box_no13);		
					$(".btm.box13").show();	
					
					var length = box_no13.length;
					
					if(interval_cnt == 0){
						if(length > 1){
							$(".btm.box_no13").css("left", "-=4");
						} 		
					}else{
		        		if(past > 1){
		        			$(".btm.box_no13").css("left", "+=4");
							past = 0;
							
							if(length > 1){
			    	        	
								$(".btm.box_no13").css("left", "-=4");
							} 
						}
		        	}	
				}
				
				if(box14 == "0"){	
					$(".btm.box14").hide();
				}else if(box14 == "1"){
					$(".btm.box_no14").text(box_no14);		
					$(".btm.box14").show();
					
					var length = box_no14.length;
					
					if(interval_cnt == 0){
						if(length > 1){
							$(".btm.box_no14").css("left", "-=4");
						} 		
					}else{
		        		if(past > 1){
		        			$(".btm.box_no14").css("left", "+=4");
							past = 0;
							
							if(length > 1){
								$(".btm.box_no14").css("left", "-=4");
							} 
						}
		        	}		
				}
				
				if(box15 == "0"){	
					$(".btm.box15").hide();
				}else if(box15 == "1"){
					$(".btm.box_no15").text(box_no15);		
					$(".btm.box15").show();	
					
					var length = box_no15.length;
					
					if(interval_cnt == 0){
						if(length > 1){
							$(".btm.box_no15").css("left", "-=4");
						} 		
					}else{
		        		if(past > 1){
		        			$(".btm.box_no15").css("left", "+=4");
							past = 0;
							
							if(length > 1){
								$(".btm.box_no15").css("left", "-=4");
							} 
						}
		        	}	
				}
				
				if(box16 == "0"){	
					$(".btm.box16").hide();
				}else if(box16 == "1"){
					$(".btm.box_no16").text(box_no16);		
					$(".btm.box16").show();	
					
					var length = box_no16.length;
					
					if(interval_cnt == 0){
						if(length > 1){
							$(".btm.box_no16").css("left", "-=4");
						} 		
					}else{
		        		if(past > 1){
		        			$(".btm.box_no16").css("left", "+=4");
							past = 0;
							
							if(length > 1){
			    	        	
								$(".btm.box_no16").css("left", "-=4");
							} 
						}
		        	}	
				}
				
				if(box17 == "0"){	
					$(".btm.box17").hide();
				}else if(box17 == "1"){
					$(".btm.box_no17").text(box_no17);		
					$(".btm.box17").show();	
					
					var length = box_no17.length;
					
					if(interval_cnt == 0){
						if(length > 1){
							$(".btm.box_no17").css("left", "-=4");
						} 		
					}else{
		        		if(past > 1){
		        			$(".btm.box_no17").css("left", "+=4");
							past = 0;
							
							if(length > 1){
			    	        	
								$(".btm.box_no17").css("left", "-=4");
							} 
						}
		        	}		
				}
				
				//console.log("box18 : " + box18);
				if(box18 == "0"){	
					$(".btm.box18").hide();
				}else if(box18 == "1"){
					$(".btm.box_no18").text(box_no18);		
					$(".btm.box18").show();
					
					var length = box_no18.length;
					
					if(interval_cnt == 0){
						if(length > 1){
							$(".btm.box_no18").css("left", "-=4");
						} 		
					}else{
		        		if(past > 1){
		        			$(".btm.box_no18").css("left", "+=4");
							past = 0;
							
							if(length > 1){
			    	        	
								$(".btm.box_no18").css("left", "-=4");
							} 
						}
		        	}			
				}
				
				if(box19 == "0"){	
					$(".btm.box19").hide();
				}else if(box19 == "1"){
					$(".btm.box_no19").text(box_no19);		
					$(".btm.box19").show();	
					
					var length = box_no19.length;
					
					if(interval_cnt == 0){
						if(length > 1){
							$(".btm.box_no19").css("left", "-=4");
						} 		
					}else{
		        		if(past > 1){
		        			$(".btm.box_no19").css("left", "+=4");
							past = 0;
							
							if(length > 1){
			    	        	
								$(".btm.box_no19").css("left", "-=4");
							} 
						}
		        	}		
				}
				
				if(box20 == "0"){	
					$(".btm.box20").hide();
				}else if(box20 == "1"){
					$(".btm.box_no20").text(box_no20);		
					$(".btm.box20").show();
					
					var length = box_no20.length;
					
					if(interval_cnt == 0){
						if(length > 1){
							$(".btm.box_no20").css("left", "-=4");
						} 		
					}else{
		        		if(past > 1){
		        			$(".btm.box_no20").css("left", "+=4");
							past = 0;
							
							if(length > 1){
			    	        	
								$(".btm.box_no20").css("left", "-=4");
							} 
						}
		        	}			
				}
				
				if(box21 == "0"){	
					$(".btm.box21").hide();
				}else if(box21 == "1"){
					$(".btm.box_no21").text(box_no21);		
					$(".btm.box21").show();	
					
					var length = box_no21.length;
					
					if(interval_cnt == 0){
						if(length > 1){
							$(".btm.box_no21").css("left", "-=4");
						} 		
					}else{
		        		if(past > 1){
		        			$(".btm.box_no21").css("left", "+=4");
							past = 0;
							
							if(length > 1){
			    	        	
								$(".btm.box_no21").css("left", "-=4");
							} 
						}
		        	}	
				}
				
				if(box22 == "0"){	
					$(".btm.box22").hide();
				}else if(box22 == "1"){
					$(".btm.box_no22").text(box_no22);		
					$(".btm.box22").show();	
					
					var length = box_no22.length;
					
					if(interval_cnt == 0){
						if(length > 1){
							$(".btm.box_no22").css("left", "-=4");
						} 		
					}else{
		        		if(past > 1){
		        			$(".btm.box_no22").css("left", "+=4");
							past = 0;
							
							if(length > 1){
			    	        	
								$(".btm.box_no22").css("left", "-=4");
							} 
						}
		        	}		
				}
				
				if(box23 == "0"){	
					$(".btm.box23_dw").hide();
					$(".btm.box23_up").hide();
				}else if(box23 == "1"){
					$(".btm.box_no23").text(box_no23);
					
					if(sa_ev_state == 0){
						$(".btm.box23_dw").hide();
						$(".btm.box23_up").show();						
					}else{
						$(".btm.box23_dw").show();
						$(".btm.box23_up").hide();						
					}
					
					var length = box_no23.length;
					
					if(interval_cnt == 0){
						if(length > 1){
							$(".btm.box_no23").css("left", "-=4");
						} 		
					}else{
		        		if(past > 1){
		        			$(".btm.box_no23").css("left", "+=4");
							past = 0;
							
							if(length > 1){
			    	        	
								$(".btm.box_no23").css("left", "-=4");
							} 
						}
		        	}		
				}
				
				if(box24 == "0"){	
					$(".btm.box24").hide();
				}else if(box24 == "1"){
					$(".btm.box_no24").text(box_no24);		
					$(".btm.box24").show();	
					
					var length = box_no24.length;
					
					if(interval_cnt == 0){
						if(length > 1){
							$(".btm.box_no24").css("left", "-=4");
						} 		
					}else{
		        		if(past > 1){
		        			$(".btm.box_no24").css("left", "+=4");
							past = 0;
							
							if(length > 1){
			    	        	
								$(".btm.box_no24").css("left", "-=4");
							} 
						}
		        	}		
				}
				
				if(box25 == "0"){	
					$(".btm.box25").hide();
				}else if(box25 == "1"){
					$(".btm.box_no25").text(box_no25);		
					$(".btm.box25").show();
					
					var length = box_no25.length;
					
					if(interval_cnt == 0){
						if(length > 1){
							$(".btm.box_no25").css("left", "-=4");
						} 		
					}else{
		        		if(past > 1){
		        			$(".btm.box_no25").css("left", "+=4");
							past = 0;
							
							if(length > 1){
			    	        	
								$(".btm.box_no25").css("left", "-=4");
							} 
						}
		        	}			
				}
				
				if(box26 == "0"){	
					$(".btm.box26").hide();
				}else if(box26 == "1"){
					$(".btm.box_no26").text(box_no26);		
					$(".btm.box26").show();	
					
					var length = box_no26.length;
					
					if(interval_cnt == 0){
						if(length > 1){
							$(".btm.box_no26").css("left", "-=4");
						} 		
					}else{
		        		if(past > 1){
		        			$(".btm.box_no26").css("left", "+=4");
							past = 0;
							
							if(length > 1){
			    	        	
								$(".btm.box_no26").css("left", "-=4");
							} 
						}
		        	}		
				}
				
				if(box27 == "0"){	
					$(".btm.box27").hide();
				}else if(box27 == "1"){
					$(".btm.box_no27").text(box_no27);		
					$(".btm.box27").show();
					
					var length = box_no27.length;
					
					if(interval_cnt == 0){
						if(length > 1){
							$(".btm.box_no27").css("left", "-=4");
						} 		
					}else{
		        		if(past > 1){
		        			$(".btm.box_no27").css("left", "+=4");
							past = 0;
							
							if(length > 1){
			    	        	
								$(".btm.box_no27").css("left", "-=4");
							} 
						}
		        	}			
				}
				
				if(box28 == "0"){	
					$(".btm.box28").hide();
				}else if(box28 == "1"){
					$(".btm.box_no28").text(box_no28);		
					$(".btm.box28").show();
					
					var length = box_no28.length;
					
					if(interval_cnt == 0){
						if(length > 1){
							$(".btm.box_no28").css("left", "-=4");
						} 		
					}else{
		        		if(past > 1){
		        			$(".btm.box_no28").css("left", "+=4");
							past = 0;
							
							if(length > 1){
								$(".btm.box_no28").css("left", "-=4");
							} 
						}
		        	}		
				}
/*				
				if(box29 == "0"){
					$(".btm.box29").hide();
				}else if(box29 == "1"){
					$(".btm.box_no29").text(box_no29);		
					$(".btm.box29").show();	
					
					var length = box_no29.length;
					
					if(interval_cnt == 0){
						if(length > 1){
							$(".btm.box_no29").css("left", "-=4");
						} 		
					}else{
		        		if(past > 1){
		        			$(".btm.box_no29").css("left", "+=4");
							past = 0;
							
							if(length > 1){
			    	        	
								$(".btm.box_no29").css("left", "-=4");
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
	
	
	function getImageActive(){
		if(s_fan_state == 1){
			$("#btm_s_fan_run").toggle();
		}
		if(p_fan_state == 1){
			$("#btm_p_fan_run").toggle();
		}
		if(c_fan_state == 1){
			$("#btm_c_fan_run").toggle();
		}
		if(d_fan_state == 1){
			$("#btm_d_fan_run").toggle();
		}
		if(so1_fan_state == 1){
			$("#btm_so1_fan_run").toggle();
		}		
		if(so2_fan_state == 1){
			$("#btm_so2_fan_run").toggle();
		}			

		//아지테이터
		if(sa_agi_state == 1){
			$(".btm.sa_agi_on").toggle();
		}		
		
		//롤러 동작
		if(p_roller_state == 1){
			$("#btm_p_roller_l").toggle();
		}else if(p_roller_state == 2){
			$("#btm_p_roller_r").toggle();
		}
		
		if(c_roller_state == 1){
			$("#btm_c_roller_l").toggle();
		}else if(c_roller_state == 2){
			$("#btm_c_roller_r").toggle();
		}
		
		if(d_roller_state == 1){
			$("#btm_d_roller_l").toggle();
		}else if(d_roller_state == 2){
			$("#btm_d_roller_r").toggle();
		}
		
		if(so1_roller_state == 1){
			$("#btm_so1_roller_l").toggle();
		}else if(so1_roller_state == 2){
			$("#btm_so1_roller_r").toggle();
		}
		
		if(so2_roller_state == 1){
			$("#btm_so2_roller_l").toggle();
		}else if(so2_roller_state == 2){
			$("#btm_so2_roller_r").toggle();
		}
	}
	
	</script>
</body>
</html>