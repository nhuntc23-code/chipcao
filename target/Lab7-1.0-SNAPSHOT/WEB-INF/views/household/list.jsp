<%-- 
    Document   : list
    Created on : Jun 9, 2026, 1:22:15 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
request.setAttribute(
    "body",
    "/WEB-INF/views/household/listContent.jsp"
);
%>

<jsp:include page="/WEB-INF/views/layout/main.jsp"/>
