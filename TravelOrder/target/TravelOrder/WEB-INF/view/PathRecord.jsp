<%@ include file = "Head.jsp" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
	 <style type="text/css">
		body, html,#allmap {width: 100%;height: 100%;overflow: hidden;margin:0;}
	</style>
	<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=qtPQhZPEjO7LyUOSeF3qXDbdK8EXAZLi"></script>

<div id="allmap"></div>
<script>
var custId=<%=custId%>;

var map = new BMap.Map("allmap");
map.centerAndZoom(new BMap.Point(116.403765, 39.914850), 5);
map.enableScrollWheelZoom();

var vue=new Vue({
  el: '#app',
  data () {
    return {
      info: null
    }
  },
  mounted () {
    axios
      .get('http://localhost:8080/TravelOrder/home/pathrecord.json?custId='+custId)
      .then(response => {
    	  this.info = response;  
    	  for(var i=0;i<this.info.data.length;i++){
        	  console.log(this.info.data[i].flight.arivCity);
              showPath(this.info.data[i].flight.arivCity);  
          }
      });
      
     
      
  	
  }
});

function showPath(location){
	var bdary = new BMap.Boundary();
	bdary.get(location, function(rs){    
		            
		var count = rs.boundaries.length; 
		if (count === 0) {
			alert('找不到对应的行政区');
			return ;
		}
      	var pointArray = [];
		for (var i = 0; i < count; i++) {
			var ply = new BMap.Polygon(rs.boundaries[i], {strokeWeight: 2, strokeColor: "#ff0000"}); 
			map.addOverlay(ply);  
			pointArray = pointArray.concat(ply.getPath());
		}    
		map.setViewport(pointArray);   
		addlabel();               
	});   
}

</script>