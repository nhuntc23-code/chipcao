<%-- 
    Document   : form
    Created on : Jun 9, 2026, 1:20:16 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div class="row justify-content-center">

    <div class="col-lg-8">

        <div class="card shadow-lg">

            <div class="card-header d-flex align-items-center">

                <i class="bi bi-house-door-fill me-2 fs-4"></i>

                <h4 class="mb-0">

                    <c:choose>
                        <c:when test="${household.householdID != null}">
                            Cập nhật hộ dân
                        </c:when>
                        <c:otherwise>
                            Thêm hộ dân mới
                        </c:otherwise>
                    </c:choose>

                </h4>

            </div>

            <div class="card-body p-4">

                <form:form
                    modelAttribute="household"
                    action="${pageContext.request.contextPath}/households/${mt}"
                    method="post">

                    <form:hidden path="householdID"/>

                    <div class="row">

                        <div class="col-md-6 mb-3">

                            <form:label path="headOfHousehold"
                                        cssClass="form-label fw-semibold">

                                <i class="bi bi-person-fill me-1"></i>
                                Chủ hộ

                            </form:label>

                            <form:input
                                path="headOfHousehold"
                                cssClass="form-control"
                                placeholder="Nhập tên chủ hộ"/>

                        </div>

                        <div class="col-md-6 mb-3">

                            <form:label path="contactNumber"
                                        cssClass="form-label fw-semibold">

                                <i class="bi bi-telephone-fill me-1"></i>
                                Số điện thoại

                            </form:label>

                            <form:input
                                path="contactNumber"
                                cssClass="form-control"
                                placeholder="Nhập số điện thoại"/>

                        </div>

                    </div>
                    <div class="col-md-12 mb-3">

                        <form:label path="email"
                                    cssClass="form-label fw-semibold">

                            <i class="bi bi-envelope-fill me-1"></i>
                            Email

                        </form:label>

                        <form:input
                            path="email"
                            type="email"
                            cssClass="form-control"
                            placeholder="example@gmail.com"/>

                    </div>

                    <div class="row">

                        <div class="col-md-12 mb-3">

                            <form:label path="apartmentID"
                                        cssClass="form-label fw-semibold">

                                <i class="bi bi-building-fill me-1"></i>
                                Căn hộ

                            </form:label>

                            <form:select
                                path="apartmentID"
                                cssClass="form-select">

                                <form:option value="0">
                                    -- Chọn căn hộ --
                                </form:option>

                                <c:forEach var="a" items="${apartments}">

                                    <form:option value="${a.apartmentID}">
                                        ${a.apartmentNumber}
                                        - Tầng ${a.floor}
                                    </form:option>

                                </c:forEach>

                            </form:select>

                        </div>

                    </div>

                    <hr>

                    <div class="d-flex gap-2">

                        <button type="submit"
                                class="btn btn-primary">

                            <i class="bi bi-check-circle-fill"></i>

                            <c:choose>

                                <c:when test="${household.householdID != null}">
                                    Cập nhật
                                </c:when>

                                <c:otherwise>
                                    Lưu hộ dân
                                </c:otherwise>

                            </c:choose>

                        </button>

                        <a href="${pageContext.request.contextPath}/households"
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