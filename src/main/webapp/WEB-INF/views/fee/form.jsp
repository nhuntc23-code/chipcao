<%-- 
    Document   : form
    Created on : Jun 9, 2026, 2:15:45 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div class="row justify-content-center">

    <div class="col-lg-8">

        <div class="card shadow-lg">

            <div class="card-header d-flex align-items-center">

                <i class="bi bi-cash-stack me-2 fs-4"></i>

                <h4 class="mb-0">

                    <c:choose>

                        <c:when test="${fee.feeID != 0}">
                            Cập nhật khoản phí
                        </c:when>

                        <c:otherwise>
                            Thêm khoản phí mới
                        </c:otherwise>

                    </c:choose>

                </h4>

            </div>

            <div class="card-body p-4">

                <form:form
                    modelAttribute="fee"
                    action="${pageContext.request.contextPath}/fees/${mt}"
                    method="post">

                    <form:hidden path="feeID"/>

                    <div class="row">

                        <div class="col-md-6 mb-3">

                            <form:label path="householdID"
                                        cssClass="form-label fw-semibold">

                                <i class="bi bi-house-fill"></i>
                                Hộ dân

                            </form:label>

                            <form:select
                                path="householdID"
                                cssClass="form-select">

                                <c:forEach var="h" items="${households}">

                                    <form:option value="${h.householdID}">
                                        ${h.headOfHousehold}
                                    </form:option>

                                </c:forEach>

                            </form:select>

                        </div>

                        <div class="col-md-6 mb-3">

                            <form:label path="feeType"
                                        cssClass="form-label fw-semibold">

                                <i class="bi bi-receipt"></i>
                                Loại phí

                            </form:label>

                            <form:input
                                path="feeType"
                                cssClass="form-control"
                                placeholder="VD: Phí quản lý"/>

                        </div>

                    </div>

                    <div class="row">

                        <div class="col-md-4 mb-3">

                            <form:label path="amount"
                                        cssClass="form-label fw-semibold">

                                Số tiền

                            </form:label>

                            <form:input
                                path="amount"
                                type="number"
                                step="0.01"
                                cssClass="form-control"/>

                        </div>

                        <div class="col-md-4 mb-3">

                            <form:label path="dueDate"
                                        cssClass="form-label fw-semibold">

                                Hạn đóng

                            </form:label>

                            <form:input
                                path="dueDate"
                                type="date"
                                cssClass="form-control"/>

                        </div>

                        <div class="col-md-4 mb-3">

                            <form:label path="status"
                                        cssClass="form-label fw-semibold">

                                Trạng thái

                            </form:label>

                            <form:select
                                path="status"
                                cssClass="form-select">

                                <form:option value="Paid">
                                    Đã đóng
                                </form:option>

                                <form:option value="Unpaid">
                                    Chưa đóng
                                </form:option>

                            </form:select>

                        </div>

                    </div>

                    <hr>

                    <div class="d-flex gap-2">

                        <button class="btn btn-primary">

                            <i class="bi bi-check-circle-fill"></i>

                            <c:choose>

                                <c:when test="${fee.feeID != 0}">
                                    Cập nhật
                                </c:when>

                                <c:otherwise>
                                    Lưu khoản phí
                                </c:otherwise>

                            </c:choose>

                        </button>

                        <a href="${pageContext.request.contextPath}/fees"
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
