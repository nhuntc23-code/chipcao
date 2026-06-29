<%-- 
    Document   : listContent
    Created on : Jun 9, 2026, 1:21:02 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="card shadow-sm">

    <div class="card-header d-flex justify-content-between align-items-center">

        <div>

            <h4 class="mb-0">

                <i class="bi bi-house-door-fill"></i>
                Danh sách hộ dân

            </h4>

        </div>

        <a href="${pageContext.request.contextPath}/households/add"
           class="btn btn-light">

            <i class="bi bi-plus-circle"></i>
            Thêm hộ dân

        </a>

    </div>

    <div class="card-body">

        <table class="table table-hover align-middle">

            <thead>

                <tr>
                    <th>ID</th>
                    <th>Chủ hộ</th>
                    <th>Số điện thoại</th>
                    <th>Căn hộ</th>
                    <th width="180">Hành động</th>
                </tr>

            </thead>

            <tbody>

                <c:forEach var="h" items="${households}">

                    <tr>

                        <td>${h.householdID}</td>

                        <td>
                            <strong>${h.headOfHousehold}</strong>
                        </td>

                        <td>${h.contactNumber}</td>

                        <td>

                            <span class="badge bg-primary">
                                ${h.apartmentID}
                            </span>

                        </td>

                        <td>

                            <a href="${pageContext.request.contextPath}/households/edit/${h.householdID}"
                               class="btn btn-primary btn-sm">

                                <i class="bi bi-pencil-square"></i>

                            </a>

                            <a href="${pageContext.request.contextPath}/households/delete/${h.householdID}"
                               class="btn btn-danger btn-sm"
                               onclick="return confirm('Xóa hộ dân này?')">

                                <i class="bi bi-trash"></i>

                            </a>

                        </td>

                    </tr>

                </c:forEach>

            </tbody>

        </table>

    </div>

</div>
