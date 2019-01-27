<%@ include file = "Head.jsp" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<div id="app">
	<table class="table">		
		<thead>
			<tr>
				<th>车牌号</th>
				<th>车辆类型</th>
				<th>地点</th>				
			    <th>状态</th>	
			    <th>价格</th>		
			    <th>状态更新时间</th>
			    <th>操作</th>	
			</tr>
		</thead>
		<tbody>			
			<tr v-for="carrecord in info.data">					
				<td v-text="carrecord.car.carNum"/>
				<td v-text="carrecord.car.carTpye"/>
				<td v-text="carrecord.car.location"/>
				<td v-text="carrecord.status"/>
				<td v-text="carrecord.car.price"/>
				<td v-text="carrecord.updateDate"/>	
				<td v-if="carrecord.status==='未出行'"><a :href="'http://localhost:8080/TravelOrder/car/cancelCar?id='+carrecord.id+'&&carId='+carrecord.carId ">取消预约</a></td>					
					
			</tr>
		</tbody>
	</table>

  
</div>
<script>
var custId=<%=custId%>

new Vue({
  el: '#app',
  data () {
    return {
      info: null
    }
  },
  mounted () {
    axios
      .get('http://localhost:8080/TravelOrder/car/record.json?custId='+custId)
      .then(response => (this.info = response))
  }
})
	

</script>