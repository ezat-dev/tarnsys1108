<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"/>
    <title>Document</title>
<style>

.menuLink{
width: 300px;

}

#topMenu {            
		height: 40px; 
		width: 100%;
		margin: 0 auto;
		justify-content: center;
		text-align: center;
		font-size: 12px;
		list-style-type: none;
}

#topMenu li {    
	list-style: none;          
       color: white;             
       background-color: #123478;              
       line-height: 30px;        
       vertical-align: middle;   
       text-align: center;               
	   display: inline-block;
	    display: inline-block;
}

#topMenu .menuLink {          
        text-decoration:none;         
        color: white;                 
        display: block;                            
        width: 220px;                             
        font-size: 13pt;                           
        font-weight: bold;    
              
}

#topMenu .menuLink:hover {     
	background: lightslategray; 
}

ul{
	padding-top: 0px;
}


</style>
</head>
<body>
	<nav id="topMenu" >
		<ul>
			<li><a class="menuLink" href="/transys/alarm/alarmList">발생경보조회</a></li>
			
			<li><a class="menuLink" href="/transys/alarm/alarmSum">발생경보누계</a></li>
			
			<li><a class="menuLink" href="/transys/alarm/alarmInfo">경보정보</a></li>
			
			
			<li><a class="menuLink" href="/transys/ccf/ccf01_02">MENU</a></li>
		</ul>
	</nav>
			
</body>
</html>