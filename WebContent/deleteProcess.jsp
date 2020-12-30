<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.Place" %>
<%@ page import="dao.PlaceRepository" %>
<%
	PlaceRepository dao = PlaceRepository.getInstance(); 
	
	dao.deleteByPlaceId(request.getParameter("placeId"));
	response.sendRedirect("visited.jsp");
%>