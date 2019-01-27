<%@ include file = "Head.jsp" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    


<div id="app">
<form class="form-inline" role="form">
  <div class="form-group">    
    <input type="text" class="form-control" id="start" placeholder="请输入始发站">
  </div>
  <div class="form-group">    
    <input type="text" class="form-control" id="end" placeholder="请输入终点站">
  </div>
  <button class="btn btn-default navbar-btn" v-on:click="search" type="button">查询</button>
  <button class="btn btn-default navbar-btn" data-toggle="modal" data-target="#createModel" type="button">添加</button>
  <button class="btn btn-default navbar-btn" data-toggle="modal" data-target="#updateModel" type="button">更新</button>

</form>
	<table class="table">		
		<thead>
			<tr>
				<th>航班号</th>
				<th>始发站</th>
				<th>终点站</th>
				<th>出发时间</th>
				<th>总量</th>		
				<th>余量</th>		
				<th>价格</th>	
				<th>操作</th>			
			</tr>
		</thead>
		<tbody>			
			<tr v-for="flight in info.data">					
				<td v-text="flight.flightNum"/>
				<td v-text="flight.fromCity"/>
				<td v-text="flight.arivCity"/>
				<td v-text="flight.startDate"/>
				<td v-text="flight.seatNum"/>
				<td v-text="flight.availNum"/>
				<td v-text="flight.price"/>
				<td><a :href="'http://localhost:8080/TravelOrder/home/orderFlight?flight_id='+flight.flightId">购买</a></td>
				<td><a :href="'http://localhost:8080/TravelOrder/home/delete?flight_id='+flight.flightId">删除</a></td>
			</tr>
		</tbody>
	</table>

<!-- 添加模态 -->
<div class="modal fade" id="createModel" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel">
					添加航班信息
				</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" role="form" method="post" action="http://localhost:8080/TravelOrder/home/create">
				  <div class="form-group">
				    <label for="fn" class="col-sm-2 control-label">航班号</label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" id="fn" name="flightNum" placeholder="请输入航班号">
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="sn" class="col-sm-2 control-label">总量</label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" id="cn" name="seatNum" placeholder="请输入总量">
				    </div>
				  </div>
				    <div class="form-group">
				    <label for="an" class="col-sm-2 control-label">余量</label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" id="an" name="availNum" placeholder="请输入余量">
				    </div>
				  </div>
				    <div class="form-group">
				    <label for="fc" class="col-sm-2 control-label">始发站</label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" id="fc" name="fromCity" placeholder="请输入始发站">
				    </div>
				  </div>
				    
				    <div class="form-group">
				    <label for="ac" class="col-sm-2 control-label">终点站</label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" id="ac" name="arivCity" placeholder="请输入终点站">
				    </div>
				  </div>
			      <div class="form-group">
				    <label for="bt" class="col-sm-2 control-label">出发时间</label>
				    <div class="col-sm-10">
				      <input type="text" id="bt" class="form-control" name="startTime" placeholder="请输入出发时间">
				    </div>
				  </div>
			      <div class="form-group">
				    <label for="p" class="col-sm-2 control-label">价格</label>
				    <div class="col-sm-10">
				      <input type="text" id="p" class="form-control" name="price" placeholder="请输入价格">
				    </div>
				  </div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭
				</button>
				<button type="button" class="btn btn-primary" onclick="document.forms[1].submit()">
					添加
				</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div>
<!-- modal end -->

<!-- 修改模态 -->
<div class="modal fade" id="updateModel" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel">
					更新航班信息
				</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" role="form" method="post" action="http://localhost:8080/TravelOrder/home/update">
				  
				  <div class="form-group">
				    <label for="fn" class="col-sm-2 control-label">航班号</label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" id="fn" name="flightNum" placeholder="请输入航班号">
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="sn" class="col-sm-2 control-label">总量</label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" id="cn" name="seatNum" placeholder="请输入总量">
				    </div>
				  </div>
				    <div class="form-group">
				    <label for="an" class="col-sm-2 control-label">余量</label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" id="an" name="availNum" placeholder="请输入余量">
				    </div>
				  </div>
				    <div class="form-group">
				    <label for="fc" class="col-sm-2 control-label">始发站</label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" id="fc" name="fromCity" placeholder="请输入始发站">
				    </div>
				  </div>
				    
				    <div class="form-group">
				    <label for="ac" class="col-sm-2 control-label">终点站</label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" id="ac" name="arivCity" placeholder="请输入终点站">
				    </div>
				  </div>
			      <div class="form-group">
				    <label for="bt" class="col-sm-2 control-label">出发时间</label>
				    <div class="col-sm-10">
				      <input type="text" id="bt" class="form-control" name="startTime" placeholder="请输入出发时间">
				    </div>
				  </div>
			      <div class="form-group">
				    <label for="p" class="col-sm-2 control-label">价格</label>
				    <div class="col-sm-10">
				      <input type="text" id="p" class="form-control" name="price" placeholder="请输入价格">
				    </div>
				  </div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭
				</button>
				<button type="button" class="btn btn-primary" onclick="document.forms[2].submit()">
					更新
				</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div>
<!-- modal end -->
</div>
<script>
var id=<%=custId%>

new Vue({
  el: '#app',
  data () {
    return {
      info: null
    }
  },
  mounted () {
    axios
      .get('http://localhost:8080/TravelOrder/home/flight.json')
      .then(response => (this.info = response))
  },
  methods:{
	  //根据起点 终点 查询
	  search: function (event) {
		  var start=$('#start').val();
		  var end=$('#end').val();	      
	      
	      url='http://localhost:8080/TravelOrder/home/searchflight.json?start='+start+'&&end='+end;
	      url=encodeURI(url);
	      axios
	      .get(url)
	      .then(response => (this.info = response));
	    }
   }

})
	

</script>
<script>
   $(function () { $('#myModal').on('shown.bs.modal', function () {
      alert('嘿，我听说您喜欢模态框...');})
   });
</script>