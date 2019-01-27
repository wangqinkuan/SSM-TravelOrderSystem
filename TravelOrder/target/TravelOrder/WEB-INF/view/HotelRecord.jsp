<%@ include file = "Head.jsp" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<div id="app">
	<table class="table">		
		<thead>
			<tr>
				<th>旅店名称</th>
				<th>地点</th>				
				<th>价格</th>		
			    <th>状态</th>	
			    <th>状态更新时间</th>		
			    <th>操作</th>		
			</tr>
		</thead>
		<tbody>			
			<tr v-for="hotelrecord in info.data">					
				<td v-text="hotelrecord.hotels.name"/>
				<td v-text="hotelrecord.hotels.location"/>				
				<td v-text="hotelrecord.hotels.price"/>	
				<td v-text="hotelrecord.status"/>
				<td v-text="hotelrecord.updateDate"/>	
				<td v-if="hotelrecord.status==='未出行'"><a :href="'http://localhost:8080/TravelOrder/hotel/cancelHotel?id='+hotelrecord.id+'&&hotelId='+hotelrecord.hotelId">取消预约</a></td>					
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
      .get('http://localhost:8080/TravelOrder/hotel/record.json?custId='+custId)
      .then(response => (this.info = response))
  }
})
	

</script>