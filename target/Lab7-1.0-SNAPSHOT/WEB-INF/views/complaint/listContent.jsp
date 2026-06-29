<%-- 
    Document   : listContent
    Created on : Jun 9, 2026, 4:29:32 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="card shadow">

    <div class="card-header d-flex justify-content-between align-items-center">

        <h4 class="mb-0">
            <i class="bi bi-chat-left-text-fill"></i>
            Complaint Management
        </h4>

        <a href="${pageContext.request.contextPath}/complaints/add"
           class="btn btn-primary">

            <i class="bi bi-plus-circle"></i>
            Add Complaint

        </a>

    </div>

    <div class="card-body">

        <table class="table table-hover table-bordered">

            <thead class="table-dark">

                <tr>
                    <th>ID</th>
                    <th>Household</th>
                    <th>Description</th>
                    <th>Submission Date</th>
                    <th>Status</th>
                    <th width="180">Actions</th>
                </tr>

            </thead>

            <tbody>

                <c:forEach var="c" items="${complaints}">

                    <tr>

                        <td>${c.complaintID}</td>

                        <td>${c.householdID}</td>

                        <td>${c.description}</td>

                        <td>${c.submissionDate}</td>

                        <td>

                            <span class="badge bg-info">
                                ${c.status}
                            </span>

                        </td>

                        <td>

                            <a href="${pageContext.request.contextPath}/complaints/edit/${c.complaintID}"
                               class="btn btn-warning btn-sm">

                                <i class="bi bi-pencil-square"></i>

                            </a>

                            <a href="${pageContext.request.contextPath}/complaints/delete/${c.complaintID}"
                               class="btn btn-danger btn-sm"
                               onclick="return confirm('Delete this complaint?')">

                                <i class="bi bi-trash"></i>

                            </a>

                        </td>

                    </tr>

                </c:forEach>

            </tbody>

        </table>

    </div>

</div>
