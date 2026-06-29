<%-- 
    Document   : listContent
    Created on : Jun 9, 2026, 2:28:09 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="card shadow-sm">

    <div class="card-header d-flex justify-content-between align-items-center">

        <h4 class="mb-0">
            <i class="bi bi-car-front-fill"></i>
            Danh sách bãi đỗ xe
        </h4>

        <a href="${pageContext.request.contextPath}/parking/add"
           class="btn btn-light">

            <i class="bi bi-plus-circle"></i>
            Thêm vị trí đỗ xe

        </a>

    </div>

    <div class="card-body">

        <table class="table table-hover align-middle">

            <thead>

                <tr>
                    <th>ID</th>
                    <th>Mã bãi xe</th>
                    <th>Hộ dân</th>
                    <th>Loại xe</th>
                    <th>Trạng thái</th>
                    <th width="180">Hành động</th>
                </tr>

            </thead>

            <tbody>

                <c:forEach var="p" items="${parkings}">

                    <tr>

                        <td>${p.parkingID}</td>

                        <td>
                            <strong>${p.parkingNumber}</strong>
                        </td>

                        <td>${p.householdID}</td>

                        <td>

                            <c:choose>

                                <c:when test="${p.vehicleType=='Car'}">

                                    <span class="badge bg-primary">
                                        Ô tô
                                    </span>

                                </c:when>

                                <c:otherwise>

                                    <span class="badge bg-info">
                                        Xe máy
                                    </span>

                                </c:otherwise>

                            </c:choose>

                        </td>

                        <td>

                            <c:choose>

                                <c:when test="${p.status=='Occupied'}">

                                    <span class="badge bg-danger">
                                        Đã sử dụng
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

                            <a href="${pageContext.request.contextPath}/parking/edit/${p.parkingID}"
                               class="btn btn-primary btn-sm">

                                <i class="bi bi-pencil-square"></i>

                            </a>

                            <a href="${pageContext.request.contextPath}/parking/delete/${p.parkingID}"
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
