<%-- 
    Document   : form
    Created on : Jun 9, 2026, 4:29:21 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="row justify-content-center">

    <div class="col-lg-8">

        <div class="card shadow-lg">

            <div class="card-header">

                <h4>

                    <c:choose>

                        <c:when test="${complaint.complaintID != 0}">
                            Update Complaint
                        </c:when>

                        <c:otherwise>
                            Add Complaint
                        </c:otherwise>

                    </c:choose>

                </h4>

            </div>

            <div class="card-body">

                <form:form
                    modelAttribute="complaint"
                    action="${pageContext.request.contextPath}/complaints/${mt}"
                    method="post">

                    <form:hidden path="complaintID"/>

                    <div class="mb-3">

                        <form:label path="householdID"
                                    cssClass="form-label">
                            Household
                        </form:label>

                        <form:select path="householdID"
                                     cssClass="form-select">

                            <form:option value="0">
                                -- Select Household --
                            </form:option>

                            <c:forEach var="h" items="${households}">

                                <form:option value="${h.householdID}">
                                    ${h.headOfHousehold}
                                </form:option>

                            </c:forEach>

                        </form:select>

                    </div>

                    <div class="mb-3">

                        <form:label path="description"
                                    cssClass="form-label">
                            Description
                        </form:label>

                        <form:textarea path="description"
                                       rows="5"
                                       cssClass="form-control"/>

                    </div>

                    <div class="mb-3">

                        <form:label path="submissionDate"
                                    cssClass="form-label">
                            Submission Date
                        </form:label>

                        <form:input path="submissionDate"
                                    type="date"
                                    cssClass="form-control"/>

                    </div>

                    <div class="mb-3">

                        <form:label path="status"
                                    cssClass="form-label">
                            Status
                        </form:label>

                        <form:select path="status"
                                     cssClass="form-select">

                            <form:option value="Pending">
                                Pending
                            </form:option>

                            <form:option value="Processing">
                                Processing
                            </form:option>

                            <form:option value="Resolved">
                                Resolved
                            </form:option>

                        </form:select>

                    </div>

                    <button type="submit"
                            class="btn btn-primary">

                        <i class="bi bi-save"></i>

                        <c:choose>

                            <c:when test="${complaint.complaintID != 0}">
                                Update
                            </c:when>

                            <c:otherwise>
                                Save
                            </c:otherwise>

                        </c:choose>

                    </button>

                    <a href="${pageContext.request.contextPath}/complaints"
                       class="btn btn-secondary">

                        Back

                    </a>

                </form:form>

            </div>

        </div>

    </div>

</div>
