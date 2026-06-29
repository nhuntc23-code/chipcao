<%-- 
    Document   : listContent
    Created on : Jun 9, 2026, 2:14:55 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="card shadow-sm">

    <div class="card-header d-flex justify-content-between align-items-center">

        <h4 class="mb-0">
            <i class="bi bi-cash-stack"></i>
            Danh sách khoản phí
        </h4>

        <a href="${pageContext.request.contextPath}/fees/add"
           class="btn btn-light">

            <i class="bi bi-plus-circle"></i>
            Thêm khoản phí

        </a>

    </div>

    <div class="card-body">

        <table class="table table-hover align-middle">

            <thead>
                <tr>
                    <th>ID</th>
                    <th>Hộ dân</th>
                    <th>Loại phí</th>
                    <th>Số tiền</th>
                    <th>Hạn đóng</th>
                    <th>Trạng thái</th>
                    <th width="180">Hành động</th>
                </tr>
            </thead>

            <tbody>

                <c:forEach var="f" items="${fees}">

                    <tr>

                        <td>${f.feeID}</td>

                        <td>${f.householdID}</td>

                        <td>${f.feeType}</td>

                        <td>
                            ${f.amount}
                        </td>

                        <td>${f.dueDate}</td>

                        <td>

                            <c:choose>

                                <c:when test="${f.status=='Paid'}">

                                    <span class="badge bg-success">
                                        Đã đóng
                                    </span>

                                </c:when>

                                <c:otherwise>

                                    <span class="badge bg-danger">
                                        Chưa đóng
                                    </span>

                                </c:otherwise>

                            </c:choose>

                        </td>

                        <td>

                            <a href="${pageContext.request.contextPath}/fees/edit/${f.feeID}"
                               class="btn btn-primary btn-sm">

                                <i class="bi bi-pencil-square"></i>

                            </a>

                            <a href="${pageContext.request.contextPath}/fees/delete/${f.feeID}"
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
