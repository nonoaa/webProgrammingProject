<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>여행일기 - 추억 돌아보기</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h3 class="display-4">여행지 등록하기</h3>
		</div>
	</div>
	<div class="container">
		<form name="newPlace" action="./processAddPlace.jsp" class="form-horizontal" 
		method="post" enctype="multipart/form-data">
			<div class="form-group row">
				<label class="col-sm-2">여행지 코드</label>
				<div class="col-sm-3">
					<input type="text" id="placeId" name="placeId" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">여행지 이름</label>
				<div class="col-sm-3">
					<input type="text" id="name" name="name" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">국가</label>
				<div class="col-sm-3">
					<input type="text" id="country" name="country" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">설명</label>
				<div class="col-sm-5">
					<textarea name="description" cols="50" rows="2" class="form-control"></textarea>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">날짜</label>
				<div class="col-sm-3">
					<input type="text" id="date" name="date" class="form-control">
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2">사진(.png파일)</label>
				<div class="col-sm-5">
					<input type="file" name="placeImage" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10">
					<input type="submit" class="btn btn-primary" value="등록하기">
				</div>
			</div>
			
		</form>
	</div>
	<jsp:include page="footer.jsp"/>
	<script src="vendors/scripts/core.js"></script>
	<script src="vendors/scripts/script.min.js"></script>
	<script src="vendors/scripts/process.js"></script>
</body>
</html>