<!-- 公共头文件 -->
<%@page import="travel.bean.Customers"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" />
<title>航班预约管理</title>
<!-- 获取session 存到用户中 -->
<%
  Customers customers=(Customers)session.getAttribute("cust"); 	
  String custName="default";
  Integer custId=0;
  if(customers==null){
	  response.sendRedirect("http://localhost:8080/TravelOrder");
	  //request.getRequestDispatcher("Login.jsp").forward(request, response);	 	
  }
  else{
	  custName=customers.getCustName();
	  custId=customers.getCustId();	
  }
%>

<!-- 读取customer中的姓名 -->
<p class="font-weight-bold"><span class="glyphicon glyphicon-user"></span><%out.print("欢迎您："+custName); %></p>

<nav class="navbar navbar-default" role="navigation">
	<div class="container-fluid">
	<div class="navbar-header">
		<a class="navbar-brand" href="http://localhost:8080/TravelOrder/home/index">航班信息</a>
	</div>
	<div>
		<ul class="nav navbar-nav">
			<li><a href="http://localhost:8080/TravelOrder/hotel/index">旅店预约</a></li>
			<li><a href="http://localhost:8080/TravelOrder/car/index">车辆预约</a></li>
			<li class="dropdown">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown">
					记录查询
					<b class="caret"></b>
				</a>
				<ul class="dropdown-menu">
					<li><a href="http://localhost:8080/TravelOrder/home/record">我的航班</a></li>
					<li><a href="http://localhost:8080/TravelOrder/hotel/record">我的旅店</a></li>
					<li><a href="http://localhost:8080/TravelOrder/car/record">我的车辆</a></li>					
					<li><a href="http://localhost:8080/TravelOrder/home/pathrecord">我的行程</a></li>					
				</ul>
			</li>
		</ul>
	</div>
	</div>
</nav>