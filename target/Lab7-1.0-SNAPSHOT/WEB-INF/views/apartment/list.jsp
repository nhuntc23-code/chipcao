<%-- 
    Document   : list
    Created on : Jun 8, 2026, 9:50:48 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
request.setAttribute(
    "body",
    "/WEB-INF/views/apartment/listContent.jsp"
);
%>

<jsp:include page="/WEB-INF/views/layout/main.jsp"/>