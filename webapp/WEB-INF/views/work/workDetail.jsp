<%@ page session="true" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>작업실적</title>
<jsp:include page="../include/pluginpage.jsp"/>
<style>

	body {
			text-align: center;
		}

	hr{
		width: 95%;
		margin: 10px 2.5% 2% 2.5%;
	}
	
	label{
		font-size:14pt;
	}
	
	label > select{
		width: 120px;
		height: 25px;
		font-size:14pt;
	}
	
	
	label > input{
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
		font-size: 14pt;
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
		font-weight:700;
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
		max-height: 70%;
		overflow:auto;
	}
	
	/*수정 테이블*/
	#edit_table{
		width: 90%;
		text-align: center;
		margin: auto;
		margin-top: 1.5%;
		max-height: 40%;
		overflow:auto;
	}
	
	#qr_memo{
		width: 60%;
		text-align: center;
	}
	
	.del_btn{
		background: transparent;
		border: 0px;
		color: #123478;
		font-size: 20px;
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
		
	td > input[type=text]{
		width: 100%;
		background: transparent;
		text-align: center;
		border: 0px;
	}
	
	input[type="text"]:disabled {
	  color: #c3c3c3;
	}
	
	/* 테이블 스크롤 없애기 */
	#table_file{
		-ms-overflow-style:none;
		height: 950px;
	}
	
	#table_file::-webkit-scrollbar { display:none; }
	/* 테이블 스크롤 없애기 끝 */
	/* alert창 */

</style>


<script>
var check_pr = "";

function checkTime(i) {
if (i<10) {i = "0" + i};  // add zero in front of numbers < 10 
	return i;
}

function checkDate(i) {
	if (i<10) {
		i = "0" + i;
	}  // add zero in front of numbers < 10 
	
	return i;
}

// 실시간 날짜 end

function writeCheck(){
	
   var form = document.writeform;
   
   if(cl_name == null || cl_name == ''){
	   if(check != 1){ // 공통 QR을 선택하지 않았을 때
		   alert("거래처를 선택해주세요.");
		   return;
	   }
   }
   
   if(pr_code == null || pr_code == ''){
	   if(check != 1){ // 공통 QR을 선택하지 않았을 때    
		   //console.log("큐알 구분 : " + check_pr.indexOf('P'));
		   if(check_pr.indexOf('P') == 0){
			   // 제품코드 P일 경우
			   alert("품목코드를 선택해주세요.");
		   }else{
			   form.submit(); // i003007.jsp로 이동
			   alert("저장되었습니다.");
		   }
		   return;
	   }
   }
  
   form.submit(); // i003007.jsp로 이동
   alert("저장되었습니다.");
   
  }
</script>


</head>

<body data-offset="60" data-target=".navbar">


<div id="wrap">

 <%--    <div class="header">
		<jsp:include page="header-menu.jsp"/>
	</div> --%>
	
	<div id="body2">
		<div id="menu_bar">
			<jsp:include page="../include/headerPopup.jsp"/>
		</div>
	
	<div id="contents">
		<!-- <div style="color: black; font-size: 20px; padding-top: 2%;"> &lt;작업일보 상세&gt; </div> -->
		<div style="color: black; font-size: 14px; padding-top: 1%; margin-left: 2.5%; text-align: left;"> <b style="font-size:15pt;">작업실적</b> / <label style="font-size:14pt;">작업일보 상세</label> </div>
		<hr>
		
		<fieldset class="list_input">
			<legend style="font-size:15pt;">검색조건</legend>
			<div class="input_d">
				<label> 설비명 : <select name="placename" id="placename" ></select> </label>
				<!-- <button id="edit_name" hidden><i class="fa fa-pencil" aria-hidden="true"></i></button> -->
	
				<label style="margin-left: 15px;"> 작업일자 : <input type="text" class="input-sm datepicker" id="to_date" name="to_date" style="font-size: 14pt; text-align: center; width:130px;" placeholder=""/> </label>
				<!-- <button id="edit_name" hidden><i class="fa fa-pencil" aria-hidden="true"></i></button> -->

				<button style="margin-left: 5%;" id="detailbtn">상세조회</button>
				<button id="searchbtn">조회</button>
				<button id="editbtn">편집</button>
				<button id="delbtn">삭제</button>
				<button onclick="getPopupEndTime();" style="width: 140px;">생산실적 처리</button>
				<!-- <button id="printbtn">인쇄</button> -->
			</div>
			
		</fieldset>
	
		<div id="workDetailList"></div>
		
		
		<div id="edit_table" style="display:none;">
		    <table id="editlist" class="table table-bordered table-hover table-responsive scrolltbody table_font_size">
				<thead>
					<tr>
						<th class="text-center cell" 
						style="background-color:darkslateblue; color:white; border: 1px solid black; border-right: 1px solid black; width: 5%; height: 20px;">호기</th>
						<th class="text-center cell"
						style="background-color:darkslateblue; color:white; border: 1px solid black; border-right: 1px solid black; width: 12%; height: 20px;">Lot No.</th>
						<th class="text-center cell"
						style="background-color:darkslateblue; color:white; border: 1px solid black; border-right: 1px solid black; width: 6%; height: 20px;">품번</th>
						<th class="text-center cell"
						style="background-color:darkslateblue; color:white; border: 1px solid black; border-right: 1px solid black; width: 10%; height: 20px;">품명코드</th>
						<th class="text-center cell"
						style="background-color:darkslateblue; color:white; border: 1px solid black; border-right: 1px solid black; width: 19%; height: 20px;">품명</th>
						<th class="text-center cell"
						style="background-color:darkslateblue; color:white; border: 1px solid black; border-right: 1px solid black; width: 6%; height: 20px;">기종</th>
						<th class="text-center cell"
						style="background-color:darkslateblue; color:white; border: 1px solid black; border-right: 1px solid black; width: 6%; height: 20px;">적재량</th>
						<th class="text-center cell"
						style="background-color:darkslateblue; color:white; border: 1px solid black; border-right: 1px solid black; width: 8%; height: 20px;">투입시간</th>
						<th class="text-center cell"
						style="background-color:darkslateblue; color:white; border: 1px solid black; border-right: 1px solid black; width: 8%; height: 20px;">SALT추출</th>
						<th class="text-center cell"
						style="background-color:darkslateblue; color:white; border: 1px solid black; border-right: 1px solid black; width: 8%; height: 20px;">추출완료</th>
						<th class="text-center cell"
						style="background-color:darkslateblue; color:white; border: 1px solid black; width: 12%; height: 20px;">Mes Lot</th>
					</tr>
				</thead>
				
				<form name="editForm" id="editForm" method="post" >
					<tbody id="edit_contents">
						<tr> 
							<td class="text-center cell" 
							style="color:black; border: 1px solid black; border-right: 1px solid black; width: 5%; height: 20px;"><input type="text" class="intext" id="editdev" name="editdev" value="" readonly/></td>
							<td class="text-center cell"
							style="color:black; border: 1px solid black; border-right: 1px solid black; width: 12%; height: 20px;"><input type="text" class="intext" id="editlotno" name="editlotno" value="" readonly/></td>
							<td class="text-center cell"
							style="color:black; border: 1px solid black; border-right: 1px solid black; width: 6%; height: 20px;"><input type="text" class="intext" id="editpumbun" name="editpumbun" value="" readonly/></td>
							<td class="text-center cell"
							style="color:black; border: 1px solid black; border-right: 1px solid black; width: 10%; height: 20px;"><input type="text" class="intext" id="editpumcode" name="editpumcode" value="" readonly/></td>
							<td class="text-center cell"
							style="color:black; border: 1px solid black; border-right: 1px solid black; width: 19%; height: 20px;"><input type="text" class="intext" id="editpumname" name="editpumname" value="" readonly/></td>
							<td class="text-center cell"
							style="color:black; border: 1px solid black; border-right: 1px solid black; width: 6%; height: 20px;"><input type="text" class="intext" id="editgijong" name="editgijong" value="" readonly/></td>
							<td class="text-center cell"
							style="color:black; border: 1px solid black; border-right: 1px solid black; width: 6%; height: 20px;"><input type="text" class="intext" id="editcnt" name="editcnt" value=""/></td>
							<td class="text-center cell"
							style="color:black; border: 1px solid black; border-right: 1px solid black; width: 8%; height: 20px;"><input type="text" class="intext" id="editstime" name="editstime" value=""/></td>
							<td class="text-center cell"
							style="color:black; border: 1px solid black; border-right: 1px solid black; width: 8%; height: 20px;"><input type="text" class="intext" id="editendsalt" name="editendsalt" value=""/></td>
							<td class="text-center cell"
							style="color:black; border: 1px solid black; border-right: 1px solid black; width: 8%; height: 20px;"><input type="text" class="intext" id="editetime" name="editetime" value=""/></td>
							<td class="text-center cell"
							style="color:black; border: 1px solid black; width: 12%; height: 20px;"><input type="text" class="intext" id="editmeslot" name="editmeslot" value=""/></td>
						</tr>
					</tbody>
				</form>
			</table>
			
			<button id="savebtn" style="float:right;">저장</button>
		</div>	
	</div>
</div>
</div>
	<script>
	var check = 0; // 체크박스 변수
	var temp = 0; // 중앙 테이블 클릭 했는지 체크
	var date = "";
	var place = ""; // devicecode
	var type = ""; // devicetype
	var list = [];
	var n_cnt = 0;
	

	//로드
	$(function () {
		getProduct();
/*
		
		//2021-10-20 날짜수정
		var d_now = new Date();
		
//		console.log(d_now);
		var month = d_now.getMonth();
		var d_year = d_now.getFullYear();
		var d_month = checkDate(month+1);
		var d_date = checkDate(d_now.getDate());

		$("#searchEdate").val(d_year+"-"+d_month+"-"+d_date);
		$("#to_date").val(d_year+"-"+d_month+"-"+d_date);
		
		date = $("#to_date").val(); // 당일 날짜 변수에 넣기

		var d_before = new Date();
		d_before.setFullYear(d_before.getFullYear(), d_before.getMonth()-1);

		var d_b_year = d_before.getFullYear();
		var d_b_month = checkDate(d_before.getMonth()+1);
		var d_b_date = checkDate(d_before.getDate());

		$("#tdate1").val(d_year+d_month+d_date);
		

		$(".datepicker").datepicker({
			dateFormat: "yy-mm-dd",
			dayNamesMin: [ "일", "월", "화", "수", "목", "금", "토" ],
			monthNames: [ "1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월" ],
			monthNamesShort: [ "1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월" ]
			
		});			

		$(".countDATA").text("조회된 데이터 수 : " + n_cnt);

		 getSelectPlace();
		 getProduct();
*/
	});
	// 로드 끝

	// 조회 버튼 클릭 시	
	$('#searchbtn').click(function(){
		var select = $("#placename option:selected").val();
		date = $(".datepicker[name=to_date]").val();
		
		array_p = select.split("^");
		
		place = array_p[0]; // devicecode
		type = array_p[1]; // devicetype
		
		
		getProduct();
	});

	// 삭제 버튼 클릭 시	
	$('#delbtn').click(function(){
/*		
		var chkb = 'chk_box_';
		
		var j = 0;

		for(i = 0; i < n_cnt; i++){
			
			if( $('#'+ chkb + i).is(":checked") ){
				list[j] = $('#lotno'+i).text();
				//memo[j] = document.getElementById('chk_memo'+i).value;
				j++;
            }
		}
*/


		delProduct();
	});

	// 편집 버튼 클릭 시	
	$('#editbtn').click(function(){
/*		
		if($('#edit_table').css('display') == 'block'){
			$('#edit_table').css('display', 'none');
		}else {
			$('#edit_table').css('display', 'block');
		}
*/
		var lotno = $("#editlotno").val();
		var pumbun = $("#editpumbun").val();
		var pumcode = $("#editpumcode").val();
		var pumname = $("#editpumname").val();
		var loadcnt = $("#editcnt").val();
		var meslot = $("#editmeslot").val();
		
		
		getPopupDetailEdit();


	});
	
	//상세조회 클릭 시
	$("#detailbtn").on("click", function(){
		var device = $("#editdev").val();
		var lotno = $("#editlotno").val();
		
		getPopupDetail(device, lotno);
	});

	//상세조회 팝업창
	function getPopupDetail(dev, lot){
		/*큰화면
		var width = (window.screen.width)-620;
		var height = (window.screen.height)-630;
		*/
		var width = (window.screen.width)-300;
		var height = (window.screen.height)-630;
		
		var popupx = width-(width/2)-400;
		var popupy = height-(height/2);
		
		openWin = window.open('01work_01detail_desc.jsp?dev='+dev+'&lot='+lot, '', 'status=no, width='+width+', height='+height+', menubar=1, left='+popupx+',top='+ popupy+', screenX='+popupx+', screenY='+popupy);
	}

	//작업일보 편집
	function getPopupDetailEdit(){
		/*큰화면
		var width = (window.screen.width)-620;
		var height = (window.screen.height)-630;
		*/
		var width = (window.screen.width)-300;
		var height = (window.screen.height)-500;
		
		var popupx = width-(width/2)-400;
		var popupy = height-(height/2);
		
		openWin = window.open('01work_01detail_edit.jsp', 'detail_edit', 'status=no, width='+width+', height='+height+', menubar=1, left='+popupx+',top='+ popupy+', screenX='+popupx+', screenY='+popupy);
		
		var form = document.editForm;
		
		form.action = "01work_01detail_edit.jsp";
		form.target = "detail_edit";
		form.submit();
	}	

	//생산실적 처리
	function getPopupEndTime(){
		var width = (window.screen.width)-300;
		var height = (window.screen.height)-500;
		
		var popupx = width-(width/2)-400;
		var popupy = height-(height/2);
		
		openWin = window.open('01work_01detail_endtime.jsp', 'detail_edit', 'status=no, width='+width+', height='+height+', menubar=1, left='+popupx+',top='+ popupy+', screenX='+popupx+', screenY='+popupy);
	}	
	
	var workArray = new Array();
	
    $("#cate_contents").delegate('tr','click', function() {
    	//console.log(check + "테이블 클릭1");
		var $row = $(this).closest("tr"),
			$text2 = $row.find(".nr2").text();		// 호기
			$text3 = $row.find(".nr3").text();		// 로트 번호
			$text4 = $row.find(".nr4").text();		// 품번
			$text5 = $row.find(".nr5").text();		// 품명코드
			$text6 = $row.find(".nr6").text();		// 품명
			$text7 = $row.find(".nr7").text();		// 기종
			$text8 = $row.find(".nr8").text();		// 적재량
			$text9 = $row.find(".nr9").text();		// 투입시간
			$text10 = $row.find(".nr10").text();	// salt추출
			$text11 = $row.find(".nr11").text();	// 추출완료
			$text12 = $row.find(".nr12").text();	// mes lot
			
			var p_code;
			
//			$("input:checkbox[id='comm_box']").prop("checked", false).attr("checked", false).removeAttr("checked");
			$('#editdev').val($text2);				// 호기
			$('#editlotno').val($text3);			// 로트 번호
			$('#editpumbun').val($text4);			// 품번
			$('#editpumcode').val($text5);			// 품명코드
			$('#editpumname').val($text6);			// 품명
			$('#editgijong').val($text7);			// 기종
			$('#editcnt').val($text8);				// 적재량
			$('#editstime').val($text9);			// 투입시간
			$('#editendsalt').val($text10);			// salt추출
			$('#editetime').val($text11);			// 추출완료
			$('#editmeslot').val($text12);			// mes lot
			
			var index = 0;
			$("#cate_contents >tr").each(function(){
				if($text3 == workArray[index]){
//					console.log("반복분 : "+purClientArray[index]);
					$("#work"+$text3).css("background-color","#B2CCFF");						
				}else{						
					$("#work"+workArray[index]).css("background-color","#fff");
				}						
				
				index++;
			});			
			
	});
	
	

	// 편집 후 저장 버튼 클릭 시	
	$('#savebtn').click(function(){		
		EditSend();
	});
	
	function EditSend(){
		
		var form = document.editForm;
		form.submit();
		
	    console.log("저장 클릭");
	    var temp = $('#editcnt').val();
	    console.log("temp : " + temp);
	   
	    $('#edit_table').css('display', 'none');
	}
			
	// 위치 셀렉트 박스
	function getSelectPlace(){
		$.ajax({
			type : "POST",
			url : "place_list.jsp",
			cache : false,
			dataType : "json",
			data : {'time':new Date().getTime(),
					},
			success : function(rsJson) {
				if (rsJson && rsJson.status == "ok") {
					
			 		var cli = "";
				 	cli = cli + "<option value=''>All</option>";

			   		$.each(rsJson.rows, function(i, cl_s){	
				 		/* if(company_temp != cl_s.qr_place){ */
				   		cli = cli + "<option value='"+ cl_s.devicecode + "^" + cl_s.devicetype +"'>"+cl_s.devicename+"</option>";	
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
			
			var p_devicecode = "";
			var p_date = "2021-02-21";
			
		/* 작업일보 상세 */
			alarmHistory = new Tabulator("#workDetailList", {
			    height:"550px",
			    layout:"fitColumns",
			    selectable:true,	//로우 선택설정
			    tooltips:true,
			    selectableRangeMode:"click",
			    reactiveData:true,
			    headerHozAlign:"center",
			    ajaxConfig:"POST",
			    ajaxLoader:false,
			    ajaxURL:"/transys/work/workDetail/list",
			    ajaxProgressiveLoad:"scroll",			    			    
			    ajaxParams:{
			    	"p_devicecode":p_devicecode,
			    	"p_date":p_date
			    },
			    placeholder:"조회된 데이터가 없습니다.",
			    paginationSize:20,
			    ajaxResponse:function(url, params, response){
			        //url - the URL of the request
			        //params - the parameters passed with the request
			        //response - the JSON object returned in the body of the response.
					$("#workDetailList .tabulator-col.tabulator-sortable").css("height","29px");
			        return response; //return the response data to tabulator
			    },
			    columns:[
//				    {title:"고유번호", field:"idx"},
			        {title:"태그명", field:"devicecode", sorter:"string", width:160,
			        	hozAlign:"center"},
			        {title:"알람명", field:"lotno", sorter:"string", width:500,
			        	hozAlign:"center"},
			        {title:"발생시간", field:"pumbun", sorter:"string", width:210,
			        	hozAlign:"center"},
			        {title:"해제시간", field:"pumcode", sorter:"string", width:200,
			        	hozAlign:"center"}
			    ],
			    rowFormatter:function(row){
				    var data = row.getData();
				    
				    row.getElement().style.fontWeight = "700";
				    if(data.success_chk == "N" || data.success_chk == "" || data.success_chk == null){
					 	row.getElement().style.backgroundColor = "#F6F6F6";
					}else{
						row.getElement().style.backgroundColor = "#E4F7BA";
					}
				},
				rowClick:function(e, row){

					$("#workDetailList .tabulator-tableHolder > .tabulator-table > .tabulator-row").each(function(index, item){
						
						if($(this).hasClass("row_select")){							
							$(this).removeClass('row_select');
							row.getElement().className += " row_select";
						}else{
							$("#workDetailList div.row_select").removeClass("row_select");
							row.getElement().className += " row_select";	


						}
					});
				}
			});
		}

		function delProduct() {
			var lotno = $("#editlotno").val();
			var pumcode = $("#editpumcode").val();
			var loadcnt = $("#editcnt").val();
			var endtime = $("#editetime").val();
			
			if(lotno == "" || pumcode == ""){
				alert("삭제할 행을 선택해 주십시오!!");
				return;
			}
			
			if(confirm("데이터 삭제\n LOTNO : "+lotno+"\n"+"처리품코드 : "+pumcode+"\n데이터를 삭제하시겠습니까?")){
				var siljuk_gb = 0;
				
				if(endtime != ""){
					siljuk_gb = 1;
				}
				
				$.ajax({
			 		url:"../DB/01work_01del.jsp",
			 		type:"post",
			 		dataType:"json",
			 		data:{
			 			"lotno" : $("#editlotno").val(),
			 			"pumcode" : $("#editpumcode").val(),
			 			"loadcnt" : $("#editcnt").val(),
			 			"siljuk_gb":siljuk_gb
			 		},success: function(data){
			 			
			 		}
			 	});
				getProduct();				
			}

		}
	</script>
	
	<!-- <form name="parmForm" method="post">
		<input type="hidden" id="DEVICECODE" name="DEVICECODE"/>
		<input type="hidden" id="LOTNO" name="LOTNO" />
		<input type="hidden" id="PUMBUN" name="PUMBUN"/>
		<input type="hidden" id="PUMCODE" name="PUMCODE"/>
		<input type="hidden" id="PUMNAME" name="PUMNAME"/>
		<input type="hidden" id="GIJONG" name="GIJONG"/>
		<input type="hidden" id="LOADCNT" name="LOADCNT"/>
		<input type="hidden" id="STARTTIME" name="STARTTIME"/>
		<input type="hidden" id="ENDSALT" name="ENDSALT"/>
		<input type="hidden" id="ENDTIME" name="ENDTIME"/>
		<input type="hidden" id="MESLOT" name="MESLOT"/>
	</form> -->

</body>
</html>
