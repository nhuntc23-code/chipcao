<%-- 
    Document   : list
    Created on : Jun 9, 2026, 1:58:58 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
request.setAttribute(
    "body",
    "/WEB-INF/views/resident/listContent.jsp"
);
%>

<jsp:include page="/WEB-INF/views/layout/main.jsp"/>
