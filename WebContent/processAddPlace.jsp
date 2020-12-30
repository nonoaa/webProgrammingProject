<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.util.*" %>
<%@ page import="dto.Place" %>
<%@ page import="dao.PlaceRepository" %>

<% 
	request.setCharacterEncoding("UTF-8");
	
	String filename = "";
	String realFolder = "C:\\upload";
	int maxSize = 5 * 1024 * 1024;
	String encType = "utf-8";
	
	MultipartRequest multi = new MultipartRequest(request, realFolder ,maxSize, 
			encType, new DefaultFileRenamePolicy());

	String placeId = multi.getParameter("placeId");
	String name = multi.getParameter("name");
	String country = multi.getParameter("country");
	String description = multi.getParameter("description");
	String date = multi.getParameter("date");
	
	Enumeration files = multi.getFileNames();
	String fname = (String)files.nextElement();
	String fileName = multi.getFilesystemName(fname);
	
	PlaceRepository dao = PlaceRepository.getInstance();
	
	Place newPlace = new Place();
	newPlace.setPlaceId(placeId);
	newPlace.setName(name);
	newPlace.setCountry(country);
	newPlace.setDescription(description);
	newPlace.setDate(date);
	
	dao.addPlace(newPlace);
	
	response.sendRedirect("visited.jsp");
	
%>