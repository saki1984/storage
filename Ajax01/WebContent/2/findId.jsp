<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//findId.jsp
	String email=request.getParameter("email");
	String id=null;
	if(email!=null && email.equals("test@daum.net")){
		id="abcd***";
	}
	//응답을 xml로 하기
	response.setContentType("text/xml;charset=utf-8");
	PrintWriter pw = response.getWriter();
	pw.print("<?xml version='1.0' encoding='UTF-8'?>");
	pw.print("<result>");
	if(id==null){
		pw.print("<find>fail</find>");
	}else{
		pw.print("<find>success</find>");
		pw.print("<id>"+id+"</id>");
	}
	pw.print("</result>");
	//http://localhost:8081/Ajax01/2/findId.jsp?email=test@daum.net
%>