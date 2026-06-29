<%-- 
    Document   : form
    Created on : Jun 9, 2026, 2:00:24 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div class="row justify-content-center">

    <div class="col-lg-8">

        <div class="card shadow-lg">

            <div class="card-header d-flex align-items-center">

                <i class="bi bi-person-vcard-fill me-2 fs-4"></i>

                <h4 class="mb-0">

                    <c:choose>

                        <c:when test="${resident.residentID != null}">
                            Cập nhật cư dân
                        </c:when>

                        <c:otherwise>
                            Thêm cư dân mới
                        </c:otherwise>

                    </c:choose>

                </h4>

            </div>

            <div class="card-body p-4">

                <form:form
                    modelAttribute="resident"
                    action="${pageContext.request.contextPath}/residents/${mt}"
                    method="post">

                    <form:hidden path="residentID"/>

                    <div class="row">

                        <div class="col-md-6 mb-3">

                            <form:label path="fullName"
                                        cssClass="form-label fw-semibold">

                                <i class="bi bi-person-fill me-1"></i>
                                Họ và tên

                            </form:label>

                            <form:input
                                path="fullName"
                                cssClass="form-control"
                                placeholder="Nhập họ tên"/>

                        </div>

                        <div class="col-md-6 mb-3">

                            <form:label path="dateOfBirth"
                                        cssClass="form-label fw-semibold">

                                <i class="bi bi-calendar-event-fill me-1"></i>
                                Ngày sinh

                            </form:label>

                            <form:input
                                path="dateOfBirth"
                                type="date"
                                cssClass="form-control"/>

                        </div>

                    </div>

                    <div class="row">

                        <div class="col-md-6 mb-3">

                            <form:label path="gender"
                                        cssClass="form-label fw-semibold">

                                <i class="bi bi-gender-ambiguous me-1"></i>
                                Giới tính

                            </form:label>

                            <form:select
                                path="gender"
                                cssClass="form-select">

                                <form:option value="Male">
                                    Nam
                                </form:option>

                                <form:option value="Female">
                                    Nữ
                                </form:option>

                            </form:select>

                        </div>

                        <div class="col-md-6 mb-3">

                            <form:label path="relationship"
                                        cssClass="form-label fw-semibold">

                                <i class="bi bi-diagram-3-fill me-1"></i>
                                Quan hệ với chủ hộ

                            </form:label>

                            <form:input
                                path="relationship"
                                cssClass="form-control"
                                placeholder="Vợ, Chồng, Con..."/>

                        </div>

                    </div>

                    <div class="row">

                        <div class="col-md-12 mb-3">

                            <form:label path="householdID"
                                        cssClass="form-label fw-semibold">

                                <i class="bi bi-house-fill me-1"></i>
                                Hộ dân

                            </form:label>

                            <form:select
                                path="householdID"
                                cssClass="form-select">

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

                    <hr>

                    <div class="d-flex gap-2">

                        <button type="submit"
                                class="btn btn-primary">

                            <i class="bi bi-check-circle-fill"></i>

                            <c:choose>

                                <c:when test="${resident.residentID != null}">
                                    Cập nhật
                                </c:when>

                                <c:otherwise>
                                    Lưu cư dân
                                </c:otherwise>

                            </c:choose>

                        </button>

                        <a href="${pageContext.request.contextPath}/residents"
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
