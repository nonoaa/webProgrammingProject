<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<style>
.center {
    margin: auto;
    width: 90%;
    padding: 10px;
}
</style>
<head>
<title></title>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC6pArHH7tkmJ7p3HZ99dY-TFQXGuVVT9Y&sensor=false"></script>
<script>
	function initialize(){
		geocoder = new google.maps.Geocoder();
		var X_point = 127.035831
		var Y_point = 37.300475
		var zoomLevel = 16;
		var myLatlng = new google.maps.LatLng(Y_point, X_point);
		var mapOptions = {
			zoom: zoomLevel,
			center: myLatlng,
			mapTypeId: google.maps.MapTypeId.Roadmap
		}
		map = new google.maps.Map(document.getElementById('map_view'), mapOptions);
	}
	function input(){
		var address = document.getElementById('address').value;
		geocoder.geocode( { 'address': address}, function(results, status){
			if (status == google.maps.GeocoderStatus.OK){
				map.setCenter(results[0].geometry.location);
			}
			else{
				alert(status);
			}
		});
	}
	</script>
</head>
<body onload='initialize()'>
	<div class="center">
		<input id='address' type='text'/>
		<button onclick = "input()">위치입력</button>
		<div id='map_view' style="width:1000px; height:600px;"></div>
	</div>
</body>
</html>
