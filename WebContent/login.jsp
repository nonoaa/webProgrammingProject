<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link href="http://fonts.googleapis.com/css?family=Varela" rel="stylesheet" />
<link href="resources/css/default.css" rel="stylesheet" type="text/css" media="all" />
<link href="resources/css/fonts.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />

<!-- Google Font -->
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
<!-- CSS -->
<link rel="stylesheet" type="text/css" href="vendors/styles/core.css">
<link rel="stylesheet" type="text/css" href="vendors/styles/icon-font.min.css">
<link rel="stylesheet" type="text/css" href="vendors/styles/style.css">

<meta charset="EUC-KR">
<title>여행일기 - 추억 돌아보기</title>
</head>
<body>
	<div class="login-wrap d-flex align-items-center flex-wrap justify-content-center">
		<div class="container">
			<div class="row align-items-center">
					<div class="login-box bg-white box-shadow border-radius-10">
						<div class="login-title">
							<h2 class="text-center text-primary">로그인</h2>
							<p><%
									String error = request.getParameter("error");
									if(error != null){
									out.println("<div class='alert alert-danger'>");
									out.println("아이디와 비밀번호를 확인해주세요.");
									out.println("</div>");
									}
								%></p>
						</div>
						<form class="form-signin" action="j_security_check" method="post">
							<div class="input-group custom">
								<input type="text" class="form-control form-control-lg" placeholder="Username" name='j_username'>
								<div class="input-group-append custom">
									<span class="input-group-text"><i class="icon-copy dw dw-user1"></i></span>
								</div>
							</div>
							<div class="input-group custom">
								<input type="password" class="form-control form-control-lg" placeholder="**********" name='j_password'>
								<div class="input-group-append custom">
									<span class="input-group-text"><i class="dw dw-padlock1"></i></span>
								</div>
							</div>
							<div class="row pb-30">
								<div class="col-6">
									<div class="custom-control custom-checkbox">
										<input type="checkbox" class="custom-control-input" id="customCheck1">
										<label class="custom-control-label" for="customCheck1">Remember</label>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-12">
									<div class="input-group mb-0">
											<button class="btn btn-primary btn-lg btn-block" type="submit">Sign in</button>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>

	<jsp:include page="footer.jsp"/>
</body>
</html>