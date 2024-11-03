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
	
	#to_date{
		width: 120px;
		height: 25px;
	}
	
	#from_date{
		width: 120px;
		height: 25px;
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
        <div style="color: black; font-size: 14px; padding-top: 1%; margin-left: 2.5%; text-align: left;">
            <b style="font-size:15pt;">경보</b> / <label style="font-size:15pt;">발생경보조회</label> 
        </div>
        <hr>

        <fieldset class="list_input">
            <legend>검색조건</legend>
            <div class="input_d">
                <label> 설비명 : 
                    <select name="placename" id="placename">
                        <option value="ALARM_CCF">ALARM_CCF</option>
                        <option value="ALARM_CM">ALARM_CM</option>
                    </select> 
                </label>
                <label style="margin-left: 50px;">조회기간 : </label>
                <input type="text" class="input-sm datepicker" id="to_date" name="to_date" style="height: 25px; width: 150px; font-size: 14pt; text-align: center;" placeholder=""/>  ~
                <input type="text" class="input-sm datepicker" id="from_date" name="from_date" style="height: 25px; width: 150px; font-size: 14pt; text-align: center;" placeholder="2000-01-01"/>
                <button id="searchbtn" style="margin-left: 50px;">조회</button>
            </div>
        </fieldset>

        <div id="table_file">
            <div class="countDATA">발생된 경보 수 : </div>
            <div id="cate_list" style="width: 80%;"></div>
        </div>
    </div>

    <script>
    // 페이지 로드 시 기본 Tabulator 테이블 설정
    $(document).ready(function() {
        var table = new Tabulator("#cate_list", {
            layout: "fitColumns",
            columns: [
                {title: "NO", field: "no", width: 150, hozAlign: "center"},
                {title: "설비명", field: "machine", width: 150, hozAlign: "center"},
                {title: "PLC ADDR", field: "addr", width: 150, hozAlign: "center"},
                {title: "경보내용", field: "warndesc", width: 200, hozAlign: "center"},
                {title: "발생시각", field: "atime", width: 200, hozAlign: "center"},
                {title: "해제시각", field: "etime", width: 200, hozAlign: "center"}
            ],
            placeholder: "검색 결과가 없습니다.", // 기본적으로 빈 테이블로 시작
            data: [] // 처음엔 빈 데이터로 설정
        });
    });

    // 검색 버튼 클릭 시 getProduct 함수 호출
    $("#searchbtn").click(function() {
        getProduct();
    });

    function getProduct() {
        $.ajax({
            type: "POST",
            url: "../DB/02_alarm_01.jsp",
            cache: false,
            dataType: "json",
            data: {
                'alarmgroup': $("#placename").val(),
                'sDate': $("#to_date").val(),
                'eDate': $("#from_date").val()
            },
            success: function(rsJson) {
                if (rsJson && rsJson.status === "ok") {
                    var rsAr = rsJson.rows;
                    var n_cnt = rsAr.length;

                    $(".countDATA").text("발생된 경보 수 : " + n_cnt);

                    var table = new Tabulator("#cate_list", {
                        layout: "fitColumns",
                        columns: [
                            {title: "NO", field: "no", width: 150, hozAlign: "center"},
                            {title: "설비명", field: "machine", width: 150, hozAlign: "center"},
                            {title: "PLC ADDR", field: "addr", width: 250, hozAlign: "center"},
                            {title: "경보내용", field: "warndesc", width: 200, hozAlign: "center"},
                            {title: "발생시각", field: "atime", width: 200, hozAlign: "center"},
                            {title: "해제시각", field: "etime", width: 200, hozAlign: "center"}
                        ],
                        data: rsAr.map(function(item, index) {
                            return {
                                no: index + 1,
                                machine: item.machine,
                                addr: item.addr,
                                warndesc: item.warndesc,
                                atime: item.atime,
                                etime: item.etime
                            };
                        }),
                        placeholder: "검색 결과가 없습니다."
                    });
                } else {
                    // 데이터가 없을 경우 빈 테이블과 메시지 표시
                    var table = new Tabulator("#cate_list", {
                        layout: "fitColumns",
                        columns: [
                            {title: "NO", field: "no", width: 50, hozAlign: "center"},
                            {title: "설비명", field: "machine", width: 150, hozAlign: "center"},
                            {title: "PLC ADDR", field: "addr", width: 150, hozAlign: "center"},
                            {title: "경보내용", field: "warndesc", width: 300, hozAlign: "center"},
                            {title: "발생시각", field: "atime", width: 200, hozAlign: "center"},
                            {title: "해제시각", field: "etime", width: 200, hozAlign: "center"}
                        ],
                        placeholder: "검색 결과가 없습니다.",
                        data: []
                    });
                    $(".countDATA").text("발생된 경보 수 : 0");
                }
            },
            error: function(req, status) {
                if (req.status == 0 || status === "timeout") {
                    alert("네트워크 연결 확인 후 다시 시도해주세요.");
                } else {
                    alert("처리중 예외가 발생하였습니다. 브라우저를 완전히 종료 후 다시 시도해 보시기 바랍니다.");
                }
            },
        });
    }
    </script>
</body>



</html>
