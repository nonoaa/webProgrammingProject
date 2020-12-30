<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="http://fonts.googleapis.com/css?family=Varela" rel="stylesheet" />
<link href="resources/css/default.css" rel="stylesheet" type="text/css" media="all" />
<link href="resources/css/fonts.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" type="text/css" href="vendors/styles/core.css">
<link rel="stylesheet" type="text/css" href="vendors/styles/icon-font.min.css">
<link rel="stylesheet" type="text/css" href="src/plugins/fullcalendar/fullcalendar.css">
<link rel="stylesheet" type="text/css" href="vendors/styles/style.css">

<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>여행일기 - 추억 돌아보기</title>
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<div id="wrapper">
		<div id="extra" class="container">
		<div class="title">
			<h2>여행지 둘러보기</h2>
			<span class="byline">가보고싶은 장소를 입력하세요.</span> </div>
			<jsp:include page="map.jsp"/>
		</div>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>