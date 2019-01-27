<%@ include file = "Head.jsp" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<div id="app">
<form class="form-inline" role="form">
  <div class="form-group">    
    <input type="text" class="form-control" id="location" placeholder="请输入地点查询">
  </div> 
  <button class="btn btn-default navbar-btn" v-on:click="search" type="button">查询</button>
</form>
	<table class="table">		
		<thead>
			<tr>
				<th>车牌号</th>
				<th>车辆类型</th>
				<th>地点</th>
				<th>总量</th>		
				<th>余量</th>		
				<th>价格</th>	
			    <th>操作</th>			
			</tr>
		</thead>
		<tbody>			
			<tr v-for="car in info.data">					
			<td v-text="car.carNum"/>
				<td v-text="car.carTpye"/>
				<td v-text="car.location"/>
				<td v-text="car.numCars"/>
				<td v-text="car.numAvail"/>		
				<td v-text="car.price"/>			
				<td><a :href="'http://localhost:8080/TravelOrder/car/orderCar?car_id='+car.carId">预约</a></td>
			</tr>
		</tbody>
	</table>

  
</div>
<script>

new Vue({
  el: '#app',
  data () {
    return {
      info: null
    }
  },
  mounted () {
    axios
      .get('http://localhost:8080/TravelOrder/car/cars.json')
      .then(response => (this.info = response))
  },
  methods:{
	  search: function (event) {
		  var location=$('#location').val();      
	      url='http://localhost:8080/TravelOrder/car/searchcar.json?location='+location;
	      url=encodeURI(url);
	      axios
	      .get(url)
	      .then(response => (this.info = response));
	    }
   }
})
	

</script>