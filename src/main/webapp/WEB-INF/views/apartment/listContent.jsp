<%-- 
    Document   : listContent
    Created on : Jun 8, 2026, 9:51:10 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="card shadow-sm">

    <div class="card-header d-flex justify-content-between align-items-center">

        <div>
            <h4 class="mb-0">
                <i class="bi bi-building"></i>
                Danh sách căn hộ
            </h4>
        </div>

        <a href="${pageContext.request.contextPath}/apartments/add"
           class="btn btn-light">

            <i class="bi bi-plus-circle"></i>
            Thêm căn hộ

        </a>

    </div>

    <div class="card-body">

        <table class="table table-hover align-middle">

            <thead>

            <tr>
                <th>ID</th>
                <th>Số căn</th>
                <th>Tầng</th>
                <th>Diện tích</th>
                <th>Trạng thái</th>
                <th width="180">Hành động</th>
            </tr>

            </thead>

            <tbody>

            <c:forEach var="a" items="${apartments}">

                <tr>

                    <td>${a.apartmentID}</td>

                    <td>
                        <strong>${a.apartmentNumber}</strong>
                    </td>

                    <td>${a.floor}</td>

                    <td>${a.area} m²</td>

                    <td>

                        <c:choose>

                            <c:when test="${a.status=='Sold'}">
                                <span class="badge bg-danger">
                                    Đã bán
                                </span>
                            </c:when>

                            <c:when test="${a.status=='Rented'}">
                                <span class="badge bg-warning text-dark">
                                    Đang thuê
                                </span>
                            </c:when>

                            <c:otherwise>
                                <span class="badge bg-success">
                                    Còn trống
                                </span>
                            </c:otherwise>

                        </c:choose>

                    </td>

                    <td>

                        <a href="${pageContext.request.contextPath}/apartments/edit/${a.apartmentID}"
                           class="btn btn-primary btn-sm">

                            <i class="bi bi-pencil-square"></i>

                        </a>

                        <a href="${pageContext.request.contextPath}/apartments/delete/${a.apartmentID}"
                           class="btn btn-danger btn-sm">

                            <i class="bi bi-trash"></i>

                        </a>

                    </td>

                </tr>

            </c:forEach>

            </tbody>

        </table>

    </div>

</div>
