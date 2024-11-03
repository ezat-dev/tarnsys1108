<%@ page session="true" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Utility</title>
<jsp:include page="../include/pluginpage.jsp"/>

<style>

	body {
			text-align: center;
		}

	hr{
		width: 95%;
		margin: 10px 2.5% 2% 2.5%;
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
		font-size: 15px;
		margin-bottom: 0px;
		padding-left: 2%;
		text-align: left;
	}
	
	.input_d{
		font-size: 14px;
		font-weight: 600;
		color: black;
	}
	
	#placename{
		/* 설비명 셀렉트 박스 */
		font-size: 14px;
		text-align: center;
	}
	
	.btn_work{
		/* 작업일보 버튼 */
		margin-top: 10px;
	}

	/* 작업일보 버튼 */
	div > button{
		width: 100px;
		height: 30px;
		border: 1px solid black; 
		color: #123478;
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
	}
	
	#table_file{
		width: 90%;
		text-align: center;
		margin: auto;
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
	
	#year{
		width: 120px;
		height: 25px;
		text-align: center;
	}
	
	/* 테이블 스크롤 없애기 */
	#table_file{
		-ms-overflow-style:none;
		height: 550px;
	}
	
	#table_file::-webkit-scrollbar { display:none; }
	/* 테이블 스크롤 없애기 끝 */
	/* alert창 */

</style>




</head>

<body data-offset="60" data-target=".navbar">

    <div id="menu_bar">
        <jsp:include page="../include/managePopup.jsp"/>
    </div>
    
    <div style="color: black; font-size: 14px; padding-top: 1%; margin-left: 2.5%; text-align: left;">
        <b>Utility</b> / 월별 LNG 소요량 집계
    </div>
    <hr>
    
    <fieldset class="list_input">
        <legend>검색조건</legend>
        <div class="input_d">
            <label style="margin-left: 15px;"> 조회설정(년) : 
                <input type="text" id="year" name="year" placeholder="2022"/>
            </label>
            <button id="searchbtn" style="margin-left: 100px;">조회</button>
        </div>
    </fieldset>

    <div id="table_file" style="margin: 2%;"></div>

<script> 
    $(document).ready(function () {
        $("#year").datepicker({
            changeYear: true,
            showButtonPanel: true,
            dateFormat: 'yy',
            closeText: '선택',
            currentText: '현재',
            stepMonths: 12,
            showMonthAfterYear: true,
            yearRange: "c-10:c+10",
            onClose: function(dateText, inst) {
                var year = $("#ui-datepicker-div .ui-datepicker-year :selected").val();
                $(this).val(year);
            }
        });

        $("#year").focus(function () {
            $(".ui-datepicker-month").hide();
            $(".ui-datepicker-calendar").hide();
        });

        var table = new Tabulator("#table_file", {
            layout: "fitColumns",
            placeholder: "검색 결과가 없습니다.",
            columns: [
                { title: "설비명", field: "deviceCode", headerSort: false, hozAlign: "center", width: 250 },
                { title: "1월", field: "m01", headerSort: false, hozAlign: "center", width: 100 },
                { title: "2월", field: "m02", headerSort: false, hozAlign: "center", width: 100 },
                { title: "3월", field: "m03", headerSort: false, hozAlign: "center", width: 100 },
                { title: "4월", field: "m04", headerSort: false, hozAlign: "center", width: 100 },
                { title: "5월", field: "m05", headerSort: false, hozAlign: "center", width: 100 },
                { title: "6월", field: "m06", headerSort: false, hozAlign: "center", width: 100 },
                { title: "7월", field: "m07", headerSort: false, hozAlign: "center", width: 100 },
                { title: "8월", field: "m08", headerSort: false, hozAlign: "center", width: 100 },
                { title: "9월", field: "m09", headerSort: false, hozAlign: "center", width: 100 },
                { title: "10월", field: "m10", headerSort: false, hozAlign: "center", width: 100 },
                { title: "11월", field: "m11", headerSort: false, hozAlign: "center", width: 100 },
                { title: "12월", field: "m12", headerSort: false, hozAlign: "center", width: 100 },
                { title: "합계", field: "total", headerSort: false, hozAlign: "center", width: 120 }
            ],
        });
        console.log("현재 테이블 데이터:", table.getData());

        $('#searchbtn').click(function () {
            var year = $("#year").val();
            
            if (!year) {
                var currentYear = new Date().getFullYear();
                year = currentYear; 
                $("#year").val(year);
            }

            var electricYear = parseInt(year, 10); 
            
            console.log("전송할 데이터:", {
                'electricYear': electricYear
            });
          
            $.ajax({
                type: "POST",
                url: "/transys/util/lngYear/list",
                cache: false,
                dataType: "json",
                data: {
                    'electricYear': year
                },
                success: function (rsJson) {
                    console.log("Received request:", {'electricYear': year});
                    console.log("Response JSON:", rsJson);
                    
                    if (rsJson && rsJson.status == "ok") {
                        var rsAr = rsJson.data;

                        rsAr.forEach(function (row) {
                            row.total = row.m01 + row.m02 + row.m03 + row.m04 + row.m05 + row.m06 + row.m07 + row.m08 + row.m09 + row.m10 + row.m11 + row.m12;
                        });

                        table.setData(rsAr);
                        console.log("Table data set:", rsAr);
                    } else if (rsJson && rsJson.status == "fail") {
                        alert("데이터 불러오는 중 예외가 발생했습니다.");
                    } else {
                        alert("에러 발생!");
                    }
                },

                error: function (req, status) {
                    console.error("Error occurred:", req, status);
                    if (req.status == 0 || status == "timeout") {
                        alert("네트워크 연결 확인 후 다시 시도해 주세요.");
                    } else {
                        alert("처리 중 예외가 발생했습니다.");
                    }
                }
            });
        }); 
    });
</script>


</body>
</html>
