<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Place" %>
<%@ page import="dao.WishRepository" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>여행일기 - 추억 돌아보기</title>
<link href="http://fonts.googleapis.com/css?family=Varela" rel="stylesheet" />
<link href="resources/css/default.css" rel="stylesheet" type="text/css" media="all" />
<link href="resources/css/fonts.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div id="wrapper">
		<div id="extra" class="container">
		<div class="title">
			<h2>찜한 여행지</h2>
			<span class="byline"><%=request.getRemoteUser() %>님이 찜한 여행지들 목록입니다.</span> </div>
		
			<%
				WishRepository dao = WishRepository.getInstance();
				ArrayList<Place> listOfPlaces = dao.getAllPlaces();
			%>
			
		<div class="container">
		<div class="row" align="center">
			<%
				for(int i = 0; i < listOfPlaces.size(); i++){
					Place place = listOfPlaces.get(i);
			%>
			<div class="col-md-4">
				<img src="./resources/image/<%=place.getCountry()%>.png"
				style="width: 50%">
				<img src="./resources/image/<%=place.getPlaceId()%>.png"
				style="width: 100%">
				<h3><%="[" + place.getCountry() + "] " + place.getName()%></h3>
				<p><%=place.getDescription()%>
				<p><%=place.getDate()%>
				<p> <a href=""
					class="btn btn-secondary" role="button"> 삭제 &raquo;</a>
			</div>
			<%
				}
			%>
		</div>
	</div>
		<ul class="actions">
				<p>
				<p>
				<a href="addPlace.jsp"
					class="btn-lg btn-primary" role="button"> 등록하기</a>
		</ul>
		</div>
	</div>
		<hr>
	<jsp:include page="footer.jsp"/>
	<script src="vendors/scripts/core.js"></script>
	<script src="vendors/scripts/script.min.js"></script>
	<script src="vendors/scripts/process.js"></script>
</body>
</html>