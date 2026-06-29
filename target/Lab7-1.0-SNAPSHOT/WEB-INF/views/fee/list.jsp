<%-- 
    Document   : list
    Created on : Jun 9, 2026, 2:14:42 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
request.setAttribute(
    "body",
    "/WEB-INF/views/fee/listContent.jsp"
);
%>

<jsp:include page="/WEB-INF/views/layout/main.jsp"/>
