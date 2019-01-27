<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" />
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>login</title>

</head>
<body>
<form method="post" role="form" action="/TravelOrder/Cust/Login">

	
			<div class="form-group">			
			<label for="u">用户名</label>
			<!-- 输入框 -->
							
				<input type="text" id="u" class="col-sm-2 form-control" name="username"
					placeholder="输入用户名" />
			</div>
			<div class="form-group">	
			 <label for="p">密码</label>
						
				<input type="text" class="col-sm-2 form-control" id="p" name="password"
					placeholder="输入用户密码" />
			</div>
			
			  <button class="btn btn-default" data-toggle="modal" data-target="#registModel" type="button">注册</button>
			
			
				<button class="btn btn-default" type="button" onclick="document.forms[0].submit()"  >登录</button>
			
		

</form>

<div class="modal fade" id="registModel" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel">
					注册
				</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" role="form" method="post" action="http://localhost:8080/TravelOrder/Cust/Regist">
				  
				  <div class="form-group">
				    <label for="fn" class="col-sm-2 control-label">用户名</label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" id="un" name="username" placeholder="请输入用户名">
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="sn" class="col-sm-2 control-label">密码</label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" id="pw" name="password" placeholder="请输入密码">
				    </div>
				  </div>
				    <div class="form-group">
				    <label for="an" class="col-sm-2 control-label">名称</label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" id="n" name="custname" placeholder="请输入姓名">
				    </div>		     
			     	</div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭
				</button>
				<button type="button" class="btn btn-primary" onclick="document.forms[1].submit()">
					注册
				</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div>
<!-- modal end -->	
	
</body>
</html>
