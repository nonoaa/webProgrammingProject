<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%
	session.invalidate();
	response.sendRedirect("main.jsp");
%>