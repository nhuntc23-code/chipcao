<%-- 
    Document   : form
    Created on : Jun 9, 2026, 2:28:34 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div class="row justify-content-center">

    <div class="col-lg-8">

        <div class="card shadow-lg">

            <div class="card-header d-flex align-items-center">

                <i class="bi bi-car-front-fill me-2 fs-4"></i>

                <h4 class="mb-0">

                    <c:choose>

                        <c:when test="${parking.parkingID != 0}">
                            Cập nhật bãi đỗ xe
                        </c:when>

                        <c:otherwise>
                            Thêm bãi đỗ xe
                        </c:otherwise>

                    </c:choose>

                </h4>

            </div>

            <div class="card-body p-4">

                <form:form
                    modelAttribute="parking"
                    action="${pageContext.request.contextPath}/parking/${mt}"
                    method="post">

                    <form:hidden path="parkingID"/>

                    <div class="row">

                        <div class="col-md-6 mb-3">

                            <form:label path="parkingNumber"
                                        cssClass="form-label fw-semibold">

                                <i class="bi bi-p-square-fill me-1"></i>
                                Mã vị trí

                            </form:label>

                            <form:input
                                path="parkingNumber"
                                cssClass="form-control"
                                placeholder="VD: P001"/>

                        </div>

                        <div class="col-md-6 mb-3">

                            <form:label path="householdID"
                                        cssClass="form-label fw-semibold">

                                <i class="bi bi-house-fill me-1"></i>
                                Hộ dân

                            </form:label>

                            <form:select path="householdID" cssClass="form-select">

                                <form:option value="0">
                                    -- Chọn hộ dân --
                                </form:option>

                                <c:forEach var="h" items="${households}">
                                    <form:option value="${h.householdID}">
                                        ${h.headOfHousehold}
                                    </form:option>
                                </c:forEach>

                            </form:select>

                        </div>

                    </div>

                    <div class="row">

                        <div class="col-md-6 mb-3">

                            <form:label path="vehicleType"
                                        cssClass="form-label fw-semibold">

                                <i class="bi bi-car-front-fill me-1"></i>
                                Loại xe

                            </form:label>

                            <form:select
                                path="vehicleType"
                                cssClass="form-select">

                                <form:option value="Car">
                                    Ô tô
                                </form:option>

                                <form:option value="Motorbike">
                                    Xe máy
                                </form:option>

                            </form:select>

                        </div>

                        <div class="col-md-6 mb-3">

                            <form:label path="status"
                                        cssClass="form-label fw-semibold">

                                <i class="bi bi-check-circle-fill me-1"></i>
                                Trạng thái

                            </form:label>

                            <form:select
                                path="status"
                                cssClass="form-select">

                                <form:option value="Occupied">
                                    Đã sử dụng
                                </form:option>

                                <form:option value="Vacant">
                                    Còn trống
                                </form:option>

                            </form:select>

                        </div>

                    </div>

                    <hr>

                    <div class="d-flex gap-2">

                        <button type="submit"
                                class="btn btn-primary">

                            <i class="bi bi-check-circle-fill"></i>

                            <c:choose>

                                <c:when test="${parking.parkingID != 0}">
                                    Cập nhật
                                </c:when>

                                <c:otherwise>
                                    Lưu bãi xe
                                </c:otherwise>

                            </c:choose>

                        </button>

                        <a href="${pageContext.request.contextPath}/parking"
                           class="btn btn-outline-secondary">

                            <i class="bi bi-arrow-left"></i>
                            Quay lại

                        </a>

                    </div>

                </form:form>

            </div>

        </div>

    </div>

</div>
