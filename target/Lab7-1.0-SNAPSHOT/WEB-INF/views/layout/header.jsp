<%-- 
    Document   : header
    Created on : Jun 8, 2026, 9:32:37 PM
    Author     : ASUS
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Apartment Management System</title>

        <!-- Bootstrap -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
              rel="stylesheet">

        <!-- Bootstrap Icons -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css"
              rel="stylesheet">

        <style>

            :root{
                --primary:#0f4c81;
                --secondary:#1f6fb2;
                --light-bg:#f5f7fa;
            }

            body{
                background:var(--light-bg);
                font-family:'Segoe UI',sans-serif;
            }

            /* Navbar */

            .navbar{
                background:linear-gradient(
                    90deg,
                    var(--primary),
                    var(--secondary)
                    ) !important;

                box-shadow:0 3px 12px rgba(0,0,0,.15);
            }

            .navbar-brand{
                font-size:1.4rem;
                font-weight:700;
                letter-spacing:.5px;
            }

            .nav-link{
                color:white !important;
                border-radius:8px;
                padding:8px 14px !important;
                transition:.3s;
            }

            .nav-link:hover{
                background:rgba(255,255,255,.18);
            }

            .nav-link i{
                margin-right:6px;
            }

            /* Content */

            .main-content{
                min-height:75vh;
                margin-top:25px;
            }

            /* Card */

            .card{
                border:none;
                border-radius:15px;
                box-shadow:0 3px 12px rgba(0,0,0,.08);
            }

            .card-header{
                background:var(--primary);
                color:white;
                border:none;
            }

            /* Table */

            .table thead{
                background:var(--primary);
                color:white;
            }

            /* Button */

            .btn-primary{
                background:var(--primary);
                border-color:var(--primary);
            }

            .btn-primary:hover{
                background:#0b3b63;
                border-color:#0b3b63;
            }

        </style>
    </head>

    <body>

        <nav class="navbar navbar-expand-lg navbar-dark">

            <div class="container-fluid">

                <a class="navbar-brand"
                   href="${pageContext.request.contextPath}/">
                    <i class="bi bi-buildings-fill"></i>
                    Apartment Management
                </a>

                <button class="navbar-toggler"
                        type="button"
                        data-bs-toggle="collapse"
                        data-bs-target="#navbarNav">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse"
                     id="navbarNav">

                    <ul class="navbar-nav me-auto">

                        <li class="nav-item">
                            <a class="nav-link"
                               href="${pageContext.request.contextPath}/apartments">
                                <i class="bi bi-building"></i>
                                Căn hộ
                            </a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link"
                               href="${pageContext.request.contextPath}/households">
                                <i class="bi bi-house-door-fill"></i>
                                Hộ dân
                            </a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link"
                               href="${pageContext.request.contextPath}/residents">
                                <i class="bi bi-people-fill"></i>
                                Thành viên
                            </a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link"
                               href="${pageContext.request.contextPath}/parking">
                                <i class="bi bi-car-front-fill"></i>
                                Bãi đỗ xe
                            </a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link"
                               href="${pageContext.request.contextPath}/complaints">
                                <i class="bi bi-chat-left-text-fill"></i>
                                Khiếu nại
                            </a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link"
                               href="${pageContext.request.contextPath}/fees">
                                <i class="bi bi-cash-coin"></i>
                                Phí dịch vụ
                            </a>
                        </li>

                    </ul>

                </div>

            </div>

        </nav>

        <div class="container main-content">
