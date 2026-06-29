<%-- 
    Document   : listContent
    Created on : Jun 9, 2026, 1:59:55 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="card shadow-sm">

    <div class="card-header d-flex justify-content-between align-items-center">

        <h4 class="mb-0">
            <i class="bi bi-people-fill"></i>
            Danh sách cư dân
        </h4>

        <a href="${pageContext.request.contextPath}/residents/add"
           class="btn btn-light">

            <i class="bi bi-plus-circle"></i>
            Thêm cư dân

        </a>

    </div>

    <div class="card-body">

        <table class="table table-hover align-middle">

            <thead>

                <tr>
                    <th>ID</th>
                    <th>Họ tên</th>
                    <th>Ngày sinh</th>
                    <th>Giới tính</th>
                    <th>Quan hệ</th>
                    <th>Hộ dân</th>
                    <th width="180">Hành động</th>
                </tr>

            </thead>

            <tbody>

                <c:forEach var="r" items="${residents}">

                    <tr>

                        <td>${r.residentID}</td>

                        <td>
                            <strong>${r.fullName}</strong>
                        </td>

                        <td>${r.dateOfBirth}</td>

                        <td>

                            <c:choose>

                                <c:when test="${r.gender=='Male'}">
                                    <span class="badge bg-primary">
                                        Nam
                                    </span>
                                </c:when>

                                <c:otherwise>
                                    <span class="badge bg-danger">
                                        Nữ
                                    </span>
                                </c:otherwise>

                            </c:choose>

                        </td>

                        <td>${r.relationship}</td>

                        <td>${r.householdID}</td>

                        <td>

                            <a href="${pageContext.request.contextPath}/residents/edit/${r.residentID}"
                               class="btn btn-primary btn-sm">

                                <i class="bi bi-pencil-square"></i>

                            </a>

                            <a href="${pageContext.request.contextPath}/residents/delete/${r.residentID}"
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
