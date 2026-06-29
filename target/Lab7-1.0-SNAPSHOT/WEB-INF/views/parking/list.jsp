<%-- 
    Document   : list
    Created on : Jun 9, 2026, 2:27:40 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
request.setAttribute(
    "body",
    "/WEB-INF/views/parking/listContent.jsp"
);
%>

<jsp:include page="/WEB-INF/views/layout/main.jsp"/>
