<%-- 
    Document   : form
    Created on : Jun 8, 2026, 9:51:29 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<div class="row justify-content-center">

    <div class="col-lg-8">

        <div class="card shadow-lg">

            <div class="card-header d-flex align-items-center">

                <i class="bi bi-building-fill me-2 fs-4"></i>

                <h4 class="mb-0">

                    <c:choose>
                        <c:when test="${apartment.apartmentID != null}">
                            Cập nhật căn hộ
                        </c:when>
                        <c:otherwise>
                            Thêm căn hộ mới
                        </c:otherwise>
                    </c:choose>

                </h4>

            </div>

            <div class="card-body p-4">

                <form:form
                    modelAttribute="apartment"
                    action="${pageContext.request.contextPath}/apartments/${mt}"
                    method="post">

                    <form:hidden path="apartmentID"/>

                    <div class="row">

                        <div class="col-md-6 mb-3">

                            <form:label path="apartmentNumber"
                                        cssClass="form-label fw-semibold">

                                <i class="bi bi-door-open-fill me-1"></i>
                                Số căn hộ

                            </form:label>

                            <form:input
                                path="apartmentNumber"
                                cssClass="form-control"
                                placeholder="VD: A1205"/>

                        </div>

                        <div class="col-md-6 mb-3">

                            <form:label path="floor"
                                        cssClass="form-label fw-semibold">

                                <i class="bi bi-layers-fill me-1"></i>
                                Tầng

                            </form:label>

                            <form:input
                                path="floor"
                                type="number"
                                cssClass="form-control"
                                placeholder="Nhập số tầng"/>

                        </div>

                    </div>

                    <div class="row">

                        <div class="col-md-6 mb-3">

                            <form:label path="area"
                                        cssClass="form-label fw-semibold">

                                <i class="bi bi-rulers me-1"></i>
                                Diện tích (m²)

                            </form:label>

                            <form:input
                                path="area"
                                type="number"
                                step="0.01"
                                cssClass="form-control"
                                placeholder="VD: 75"/>

                        </div>

                        <div class="col-md-6 mb-3">

                            <form:label path="status"
                                        cssClass="form-label fw-semibold">

                                <i class="bi bi-house-check-fill me-1"></i>
                                Trạng thái

                            </form:label>

                            <form:select
                                path="status"
                                cssClass="form-select">

                                <form:option value="Vacant">
                                    Còn trống
                                </form:option>

                                <form:option value="Rented">
                                    Đang cho thuê
                                </form:option>

                                <form:option value="Sold">
                                    Đã bán
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
                                <c:when test="${apartment.apartmentID != null}">
                                    Cập nhật
                                </c:when>
                                <c:otherwise>
                                    Lưu căn hộ
                                </c:otherwise>
                            </c:choose>

                        </button>

                        <a href="${pageContext.request.contextPath}/apartments"
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
