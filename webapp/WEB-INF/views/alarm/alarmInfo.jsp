<%@ page session="true" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>경보</title>
<jsp:include page="../include/pluginpage.jsp"/>
<style>

	body {
			text-align: center;
		}

	hr{
		width: 95%;
		margin: 10px 2.5% 2% 2.5%;
	}
	
	label > select{
		width: 120px;
		height: 25px;
		font-size:14pt;
	}
	
	#menu_bar{
		padding-top: 3%;
		background: #123478;
	}
	
	.list_input{
		text-align: center;
		margin: 1% 5%;
		padding: 10px 0%;
		width: 90%;
		border: 3px solid #F4EFEA;
	}
	
	legend{
		border: 0px;
		width: 7%;
		font-size: 15pt;
		margin-bottom: 0px;
		padding-left: 2%;
		text-align: left;
	}
	
	.input_d{
		font-size: 14pt;
		font-weight: 600;
		color: black;
	}
	
	#placename{
		/* 설비명 셀렉트 박스 */
		font-size: 14pt;
		text-align: center;
	}
	
	.btn_work{
		/* 작업일보 버튼 */
		margin-top: 10px;
	}

	/* 작업일보 버튼 */
	div > button{
		width: 120px;
		height: 30px;
		border: 1px solid black; 
		color: #123478;
		font-size:14pt;
	}
		
	div > button:hover {     
		background: #798cb3;
		border: 1px solid #798cb3;
		color: white; 
	}

	.text-center{
		font-size: 16px;
	}
	
	.countDATA{
		/* 조회된 데이터 수 */
		width: 90%;
		text-align: right;
		color: black;
		margin: 0 auto;
		margin-bottom: 3px;
		font-size:15pt;
	}
	
	#table_file{
		width: 90%;
		text-align: center;
		margin: auto;
		max-height: 40%;
		overflow:auto;
	}

	.NO_list{
		text-align: center;
	}
	
	#back_div{
		text-align: right;
		padding-right: 2%;
		padding-top: 2%;
	}
	
	#back_btn{
		float: right;
		background-color: transparent;
		border : 0px;
		color : #123478;
	}
	
	/* 테이블 스크롤 없애기 */
	#table_file{
		-ms-overflow-style:none;
		height: 900px;
	}
	
	#table_file::-webkit-scrollbar { display:none; }
	/* 테이블 스크롤 없애기 끝 */
	/* alert창 */

</style>




</head>

<body data-offset="60" data-target=".navbar">



	

		<div id="menu_bar">
		<jsp:include page="../include/AheaderPopup.jsp"/>
		</div>
	
	<div id="contents">
		<!-- <div style="color: black; font-size: 20px; padding-top: 2%;"> &lt;경보정보&gt; </div> -->
		<div style="color: black; font-size: 14px; padding-top: 1%; margin-left: 2.5%; text-align: left;"> <b style="font-size:15pt;">경보</b> / <label style="font-size:14pt;">경보정보</label> </div>
		<hr>
		
		<fieldset class="list_input">
			<legend>검색조건</legend>
			<div class="input_d">
				<label> 설비명 : <select name="placename" id="placename" ></select> </label>
				<!-- <button id="edit_name" hidden><i class="fa fa-pencil" aria-hidden="true"></i></button> -->

				<button id="searchbtn" style="margin-left: 50px;">조회</button>
				<!-- <button id="printbtn" style="margin-left: 10px;">인쇄</button> -->
			</div>
			
		</fieldset>
			
		<div id="table_file" >
			<div class="countDATA">등록된 경보 수 :  </div>
		    <table id="cate_list" class="table table-bordered table-hover table-responsive scrolltbody table_font_size">
				<thead>
					<tr>
						<th class="text-center NO_list" 
						style="background-color:#F4EFEA; color:#123478; border: 1px solid black; border-right: 1px solid black; width: 5%; height: 20px; font-size:14pt;">NO</th>
						<th class="text-center cell" 
						style="background-color:#F4EFEA; color:#123478; border: 1px solid black; border-right: 1px solid black; width: 10%; height: 20px; font-size:14pt;">설비명</th>
						<th class="text-center cell"
						style="background-color:#F4EFEA; color:#123478; border: 1px solid black; border-right: 1px solid black; width: 10%; height: 20px; font-size:14pt;">PLC ADDR</th>
						<th class="text-center cell"
						style="background-color:#F4EFEA; color:#123478; border: 1px solid black; border-right: 1px solid black; width: 55%; height: 20px; font-size:14pt;">경보내용</th>
						<th class="text-center cell"
						style="background-color:#F4EFEA; color:#123478; border: 1px solid black; width: 15%; height: 20px; font-size:14pt;">비고</th>
					</tr>
				</thead>
				
				<tbody id="cate_contents">
					<tr> 
						<td  class="text-center" style="vertical-align: middle; height: 20px; color: black;" colspan="11">검색 결과가 없습니다.</td>
					</tr>
				</tbody>
			</table>
		</div>	
	</div>	
	<script>
	var check = 0; // 체크박스 변수
	var temp = 0; // 중앙 테이블 클릭 했는지 체크
	var place = ""; // devicecode
	var type = ""; // devicetype
	var n_cnt = 0;
	
	var name_cl =0, name_eng = 0; 
	//로드
	$(function () {
	
		//2021-10-20 날짜수정
		var d_now = new Date();
		
//		console.log(d_now);
		var month = d_now.getMonth();
		var d_year = d_now.getFullYear();
		var d_month = checkDate(month+1);
		var d_date = checkDate(d_now.getDate());
		
		$("#from_date").val(d_year+"-"+d_month+"-"+d_date);
//		$("#to_date").val((d_year+"").substring(2,4)+d_month+d_date);
		
		
		var d_before = new Date();
		d_before.setFullYear(d_before.getFullYear(), d_before.getMonth()-1);

		var d_b_year = d_before.getFullYear();
		var d_b_month = checkDate(d_before.getMonth()+1);
		var d_b_date = checkDate(d_before.getDate());
		$("#to_date").val(d_b_year+"-"+d_b_month+"-"+d_b_date);
		

		$(".datepicker").datepicker({
			dateFormat: "yy-mm-dd",
			dayNamesMin: [ "일", "월", "화", "수", "목", "금", "토" ],
			monthNames: [ "1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월" ],
			monthNamesShort: [ "1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월" ]
			
		});			

		$(".countDATA").text("조회된 데이터 수 : " + n_cnt);

		getSelectPlace();		
		getProduct();
	});
	// 로드 끝
	
	//이벤트
	$('#searchbtn').click(function(){
/*
		var select = $("#placename option:selected").val();
		
		array_p = select.split("^");
		
		place = array_p[0]; // devicecode
		type = array_p[1]; // devicetype
*/	
		getProduct();
	});

	// 위치 셀렉트 박스
	function getSelectPlace(){
		$.ajax({
			type : "POST",
			url : "place_list2.jsp",
			cache : false,
			dataType : "json",
			data : {'time':new Date().getTime()},
			success : function(rsJson) {
				if (rsJson && rsJson.status == "ok") {
					
			 		var cli = "";

			   		$.each(rsJson.rows, function(i, cl_s){	
				 		/* if(company_temp != cl_s.qr_place){ */
				   			cli = cli + "<option value='"+ cl_s.devicecode+"'>"+cl_s.devicename+"</option>";	
				 		/* } */
			   		});
			   		
			   		$("#placename").empty().append(cli);							

				} else if (rsJson && rsJson.status == "fail") {
					alert("데이터 불러오는중 예외가 발생하였습니다.\n다시 시도하시기 바랍니다.");
				} else {
					alert("에러발생!");
				}
			},	// success 끝
			error: function(req, status) {
				if (req.status == 0 || status == "timeout") {
					alert("네트워크 연결 확인 후 다시 시도해주세요.");
				} else {
					alert("처리중 예외가 발생하였습니다. 브라우저를 완전히 종료 후 다시 시도해 보시기 바랍니다.");
				}
			},						
		});
	}
		
		function getProduct() {
		/* 경보 정보 */
			$.ajax({
				type : "POST",
				url : "../DB/02_alarm_04.jsp",
				cache : false,
				dataType : "json",
				data : {'time':new Date().getTime(),
					'hogi': $("#placename").val()},						
				success : function(rsJson) {
					if (rsJson && rsJson.status == "ok") {
						n_cnt = 0;
						var rsAr = rsJson.rows;
			   			var listHtml = "";
			   			
			   			if ($.isArray(rsAr)) {
			   				for (var i = 0; i < rsAr.length; i++) {
				   				listHtml += '<tr>';
				   				//listHtml += '<td class="nr" style="text-align: center; vertical-align: middle; height: 20px; width: 70px; word-break:break-all; font-size: 16px; color:black;">' + rsAr[i].p_code + '</td>';
				   				listHtml +=	'<td class="nr1" style="text-align: center; vertical-align: middle; height: 20px; width: 5%; word-break:break-all; font-size: 14pt; font-weight:700; color:black;">' + (i+1) + '</td>';
				   				listHtml +=	'<td class="nr2" style="text-align: center; vertical-align: middle; height: 20px; width: 10%; word-break:break-all; font-size: 14pt; font-weight:700; color:black;">' + rsAr[i].DEVICENAME + '</td>';
				   				listHtml +=	'<td class="nr3" style="text-align: center; vertical-align: middle; height: 20px; width: 10%; word-break:break-all; font-size: 14pt; font-weight:700; color:black;">' + rsAr[i].PLCADDR + '</td>';
								listHtml +=	'<td class="nr4" style="text-align: center; vertical-align: middle; height: 20px; width: 55%; word-break:break-all; font-size: 14pt; font-weight:700; color:black;">' + rsAr[i].WARNDESC + '</td>';
								listHtml +=	'<td class="nr5" style="text-align: center; vertical-align: middle; height: 20px; width: 15%; word-break:break-all; font-size: 14pt; font-weight:700; color:black;">' + rsAr[i].REMARK + '</td>';
								listHtml +=	'</tr>';

			   				}			   				

			   				$(".countDATA").text("발생된 경보 수 : " + rsAr.length);
			   				
			   			} else {
			   				listHtml += '<tr>' +
							'<td class="text-center" style="vertical-align: middle; height: 55px;" colspan="6">검색 결과가 없습니다.</td>' +
							'</tr>';
			   			}
			   			
			   			$("#cate_list tbody").html(listHtml);
			   			
					} else if (rsJson && rsJson.status == "fail") {
						alert("데이터 불러오는중 예외가 발생하였습니다.\n다시 시도하시기 바랍니다.");
					} else {
						alert("에러발생!");
					}
					
//					timer = setTimeout(function(){ o.run(); }, o.pollInterval);
					
				},	// success 끝
				error: function(req, status) {
					if (req.status == 0 || status == "timeout") {
						alert("네트워크 연결 확인 후 다시 시도해주세요.");
					} else {
						alert("처리중 예외가 발생하였습니다. 브라우저를 완전히 종료 후 다시 시도해 보시기 바랍니다.");
					}
				},
				
			});
		};

	</script>
	


</body>
</html>
