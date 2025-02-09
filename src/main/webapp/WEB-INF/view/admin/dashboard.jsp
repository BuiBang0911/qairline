<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<!DOCTYPE html>
<html>
<head>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <title>dashboard</title>
    <link rel="shortcut icon" type="image/png" href="/images/logos/favicon.png" />
    <link rel="stylesheet" href="/css/admin/styles.min.css" />
    <link rel="stylesheet" href="/css/admin/main.css">
    <link rel="stylesheet" href="/css/admin/announcement.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
    <link rel="stylesheet" href="/libs/simplebar/dist/simplebar.css">
    <link rel="stylesheet" href="/css/admin/icons/tabler-icons/tabler-icons.css">
</head>
<body>
<div class="page-wrapper" id="main-wrapper" data-layout="vertical" data-navbarbg="skin6" data-sidebartype="full" data-sidebar-position="fixed" data-header-position="fixed">

    <%@ include file="../share-view/admin_left_sidebar.jsp" %>


    <div class="body-wrapper">
        <%@ include file="../share-view/admin_header.jsp" %>

        <div class="container-fluid announcement-container">
            <div class="container-fluid">
                <h1>Dashboard</h1>
                <div class="container mt-5">
                    <div class="row g-5">
                        <!-- Card: Total Tickets -->
                        <div class="col-lg-4 col-md-6">
                            <div class="card border-primary shadow-lg h-100">
                                <div class="card-body text-center">
                                    <div class="text-primary mb-4">
                                        <i class="bi bi-ticket-perforated display-1"></i>
                                    </div>
                                    <h5 class="card-title fw-semibold">Total Tickets</h5>
                                    <p class="card-text fs-4 fw-bold">${totalTickets}</p>
                                </div>
                            </div>
                        </div>
                        <!-- Card: Tickets Sold -->
                        <div class="col-lg-4 col-md-6">
                            <div class="card border-success shadow-lg h-100">
                                <div class="card-body text-center">
                                    <div class="text-success mb-4">
                                        <i class="bi bi-check-circle display-1"></i>
                                    </div>
                                    <h5 class="card-title fw-semibold">Tickets Sold (Last Month)</h5>
                                    <p class="card-text fs-4 fw-bold">${ticketsSold}</p>
                                </div>
                            </div>
                        </div>
                        <!-- Card: Total Users -->
                        <div class="col-lg-4 col-md-6">
                            <div class="card border-info shadow-lg h-100">
                                <div class="card-body text-center">
                                    <div class="text-info mb-4">
                                        <i class="bi bi-people display-1"></i>
                                    </div>
                                    <h5 class="card-title fw-semibold">Total Users</h5>
                                    <p class="card-text fs-4 fw-bold">${totalUsers}</p>
                                </div>
                            </div>
                        </div>
                        <!-- Card: Revenue -->
                        <div class="col-lg-4 col-md-6">
                            <div class="card border-warning shadow-lg h-100">
                                <div class="card-body text-center">
                                    <div class="text-warning mb-4">
                                        <i class="bi bi-cash-coin display-1"></i>
                                    </div>
                                    <h5 class="card-title fw-semibold">Revenue (Last Month)</h5>
                                    <p class="card-text fs-4 fw-bold">${revenueLastMonth}</p>
                                </div>
                            </div>
                        </div>
                        <!-- Card: Total Flights -->
                        <div class="col-lg-4 col-md-6">
                            <div class="card border-danger shadow-lg h-100">
                                <div class="card-body text-center">
                                    <div class="text-danger mb-4">
                                        <i class="bi bi-airplane display-1"></i>
                                    </div>
                                    <h5 class="card-title fw-semibold">Total Flights</h5>
                                    <p class="card-text fs-4 fw-bold">${totalFlights}</p>
                                </div>
                            </div>
                        </div>
                        <!-- Card: Total Aircraft -->
                        <div class="col-lg-4 col-md-6">
                            <div class="card border-secondary shadow-lg h-100">
                                <div class="card-body text-center">
                                    <div class="text-secondary mb-4">
                                        <i class="bi bi-box-seam display-1"></i>
                                    </div>
                                    <h5 class="card-title fw-semibold">Total Aircraft</h5>
                                    <p class="card-text fs-4 fw-bold">${totalAircraft}</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


            </div>
        </div>
    </div>
</div>

<script>
    var token = localStorage.getItem('accessToken');
    $(document).ready(function() {
        $.ajax({
            url: '/api/dashboard',
            type: 'GET',
            headers: {
                'Authorization': 'Bearer ' + token
            },
            success: function(response) {
                console.log(response);
                if(response != "success") {
                    window.location.href = '/admin/deny';
                }
            },
            error: function(xhr, status, error) {
                // Xử lý khi có lỗi
                if (xhr.status === 401) {
                    // Nếu bị trả về 401, tức là người dùng chưa đăng nhập hoặc không có quyền
                    console.log('Unauthorized: Redirecting to login...');
                    //window.location.href = '/login';  // Chuyển hướng đến trang login
                    window.location.href = '/admin/deny';

                } else {
                    console.log('Lỗi: ', status, error);
                }
            }
        });
    });
</script>


<script src="/libs/jquery/dist/jquery.min.js"></script>
<script src="/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
<script src="/js/sidebarmenu.js"></script>
<script src="/js/app.min.js"></script>
<script src="/libs/apexcharts/dist/apexcharts.min.js"></script>
<script src="/libs/simplebar/dist/simplebar.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>