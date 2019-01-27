<%@ include file = "Head.jsp" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<div id="app">
	<table class="table">		
		<thead>
			<tr>
				<th>航班号</th>
				<th>始发站</th>
				<th>终点站</th>
				<th>出发时间</th>			
				<th>价格</th>	
				<th>状态</th>	
				<th>状态更新时间</th>
				<th>操作</th>				
			</tr>
		</thead>
		<tbody>			
			<tr v-for="flightrecord in info.data">					
				<td v-text="flightrecord.flight.flightNum"/>
				<td v-text="flightrecord.flight.fromCity"/>
				<td v-text="flightrecord.flight.arivCity"/>	
				<td v-text="flightrecord.flight.startDate"/>			
				<td v-text="flightrecord.flight.price"/>
				<td v-text="flightrecord.status"/>
				<td v-text="flightrecord.updateDate"/>	
				<td v-if="flightrecord.status==='未出行'"><a :href="'http://localhost:8080/TravelOrder/home/cancelFlight?id='+flightrecord.id+'&&flightId='+flightrecord.flight.flightId">取消预约</a></td>					
				
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
      .get('http://localhost:8080/TravelOrder/home/record.json?custId='+custId)
      .then(response => (this.info = response))
  }
})
	

</script>