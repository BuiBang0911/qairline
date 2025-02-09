<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html >
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Giới thiệu Qairline</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

    <!-- Libraries Stylesheet -->
    <link href="${pageContext.request.contextPath}/libs/owlcarousel/assets/owl.carousel.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/libs/lightbox/css/lightbox.min.css" rel="stylesheet">


    <!-- Customized Bootstrap Stylesheet -->
    <link href="${pageContext.request.contextPath}/libs/bootstrap/dist/css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/user/home.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/user/animation.css">

</head>
<body>
<%@ include file="../share-view/user-header.jsp" %>

<div class="container-fluid position-relative p-0">
    <nav class="navbar navbar-expand-lg navbar-light px-4 px-lg-5 py-3 py-lg-0">
        <a href="/" class="navbar-brand p-0">
            <img src = "/images/user/Brand-final.png" alt = "png" class = "me-3">
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="fa fa-bars"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto py-0">
                <a href="/" class="nav-item nav-link active">Home</a>
                <a href="/about" class="nav-item nav-link">About</a>
                <a href="/blog" class="nav-item nav-link ">Blog</a>
            </div>
            <div class="rounded-pill py-2 px-4" style="margin-left: 0px;">
                <a id = "booking-button" href="#" role="button">
                    <span>Book now</span>
                    <div class="icon">
                        <i class="fa fa-remove"> <img src = "/images/user/airplane.png"> </i>
                    </div>
                    <div id="animation-container"></div>
                </a>
            </div>
        </div>
    </nav>
</div>


<!-- Navbar & Hero Start -->
<div class="container-fluid position-relative p-0">


    <!-- Carousel Start -->
    <div class="carousel-header">
        <div id="carouselId" class="carousel slide" data-bs-ride="carousel">
            <ol class="carousel-indicators">
                <li data-bs-target="#carouselId" data-bs-slide-to="0" class="active"></li>
                <li data-bs-target="#carouselId" data-bs-slide-to="1"></li>
                <li data-bs-target="#carouselId" data-bs-slide-to="2"></li>
            </ol>
            <div class="carousel-inner" role="listbox">
                <div class="carousel-item active">
                    <img src="${pageContext.request.contextPath}/images/user/carousel-2.jpg" class="img-fluid" alt="Image">
                    <div class="carousel-caption">
                        <div class="p-3" style="max-width: 900px;">
                            <h4 class="text-white text-uppercase fw-bold mb-4" style="letter-spacing: 3px;">Bay cùng DreamAirway</h4>
                            <h1 class="display-2 text-capitalize text-white mb-4">Cánh cửa đến với thế giới!</h1>
                            <p class="mb-5 fs-5">Khám phá niềm vui du lịch dễ dàng với DreamAirway. Bay đến hơn 100 điểm đến trên toàn thế giới với sự thoải mái và dịch vụ vượt trội.</p>
                            <div class="d-flex align-items-center justify-content-center">
                                <a class="btn-hover-bg btn btn-primary rounded-pill text-white py-3 px-5" href="#">Đặt vé ngay</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="${pageContext.request.contextPath}/images/user/carousel-1.jpg" class="img-fluid" alt="Image">
                    <div class="carousel-caption">
                        <div class="p-3" style="max-width: 900px;">
                            <h4 class="text-white text-uppercase fw-bold mb-4" style="letter-spacing: 3px;">Bay cùng DreamAirway</h4>
                            <h1 class="display-2 text-capitalize text-white mb-4">Trải nghiệm dịch vụ trên không tuyệt vời</h1>
                            <p class="mb-5 fs-5">Với DreamAirway, hành trình của bạn bắt đầu với dịch vụ đẳng cấp thế giới, tiện nghi cao cấp và cam kết vì sự thoải mái của bạn.</p>
                            <div class="d-flex align-items-center justify-content-center">
                                <a class="btn-hover-bg btn btn-primary rounded-pill text-white py-3 px-5" href="#">Khám phá chuyến bay</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="${pageContext.request.contextPath}/images/user/carousel-3.jpg" class="img-fluid" alt="Image">
                    <div class="carousel-caption">
                        <div class="p-3" style="max-width: 900px;">
                            <h4 class="text-white text-uppercase fw-bold mb-4" style="letter-spacing: 3px;">Bay cùng DreamAirway</h4>
                            <h1 class="display-2 text-capitalize text-white mb-4">Điểm đến tiếp theo của bạn là gì?</h1>
                            <p class="mb-5 fs-5">Lên kế hoạch cho kỳ nghỉ mơ ước cùng DreamAirway và tận hưởng các ưu đãi đặc biệt trên chuyến bay và gói du lịch.</p>
                            <div class="d-flex align-items-center justify-content-center">
                                <a class="btn-hover-bg btn btn-primary rounded-pill text-white py-3 px-5" href="#">Lên kế hoạch ngay</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselId" data-bs-slide="prev">
                <span class="carousel-control-prev-icon btn bg-primary" aria-hidden="false"></span>
                <span class="visually-hidden">Trước</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselId" data-bs-slide="next">
                <span class="carousel-control-next-icon btn bg-primary" aria-hidden="false"></span>
                <span class="visually-hidden">Tiếp</span>
            </button>
        </div>
    </div>
    <!-- Carousel End -->

    <%@ include file="../user/search.jsp" %>

    <!-- Navbar & Hero End -->



    <!-- Services Start -->
    <div class="container-fluid bg-light service py-5">
        <div class="container py-5">
            <div class="mx-auto text-center mb-5" style="max-width: 900px;">
                <h5 class="section-title px-3">Searvices</h5>
                <h1 class="mb-0">Our Services</h1>
            </div>
            <div class="row g-4">
                <div class="col-lg-6">
                    <div class="row g-4">
                        <div class="col-12">
                            <div
                                    class="service-content-inner d-flex align-items-center bg-white border border-primary rounded p-4 pe-0">
                                <div class="service-content text-end">
                                    <h5 class="mb-4">Đặt vé trên khắp thế giới</h5>
                                    <p class="mb-0">Dịch vụ đặt vé trên toàn cầu của DreamAirway mang đến sự thuận tiện với số lượng chuyến bay đa dạng, giúp người dùng dễ dàng lựa chọn hành trình phù hợp nhất.
                                    </p>
                                </div>
                                <div class="service-icon p-4">
                                    <i class="fa fa-globe fa-4x text-primary"></i>
                                </div>
                            </div>
                        </div>
                        <div class="col-12">
                            <div
                                    class="service-content-inner d-flex align-items-center  bg-white border border-primary rounded p-4 pe-0">
                                <div class="service-content text-end">
                                    <h5 class="mb-4">Cơ sở vật chất hiện đại</h5>
                                    <p class="mb-0">Cơ sở vật chất hiện đại được thiết kế để mang lại sự thoải mái và tiện nghi tối đa, đáp ứng mọi nhu cầu của khách hàng với chất lượng dịch vụ hàng đầu.
                                    </p>
                                </div>
                                <div class="service-icon p-4">
                                    <i class="fa fa-hotel fa-4x text-primary"></i>
                                </div>
                            </div>
                        </div>
                        <div class="col-12">
                            <div
                                    class="service-content-inner d-flex align-items-center bg-white border border-primary rounded p-4 pe-0">
                                <div class="service-content text-end">
                                    <h5 class="mb-4">Dịch Vụ Cung Cấp</h5>
                                    <p class="mb-0">Chúng tôi mang đến các dịch vụ hàng không toàn diện, từ đặt vé máy bay nhanh chóng, hỗ trợ hành lý, đến các tiện ích bổ sung nhằm nâng cao trải nghiệm của bạn trong mỗi chuyến bay.
                                    </p>
                                </div>
                                <div class="service-icon p-4">
                                    <i class="fa fa-user fa-4x text-primary"></i>
                                </div>
                            </div>
                        </div>
                        <div class="col-12">
                            <div
                                    class="service-content-inner d-flex align-items-center bg-white border border-primary rounded p-4 pe-0">
                                <div class="service-content text-end">
                                    <h5 class="mb-4">An Toàn Là Ưu Tiên Hàng Đầu</h5>
                                    <p class="mb-0">Chúng tôi cam kết tuân thủ các tiêu chuẩn an toàn quốc tế khắt khe nhất để bảo vệ bạn trên mọi chuyến bay
                                    </p>
                                </div>
                                <div class="service-icon p-4">
                                    <i class="fa fa-cog fa-4x text-primary"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="row g-4">
                        <div class="col-12">
                            <div
                                    class="service-content-inner d-flex align-items-center bg-white border border-primary rounded p-4 ps-0">
                                <div class="service-icon p-4">
                                    <i class="fa fa-globe fa-4x text-primary"></i>
                                </div>
                                <div class="service-content">
                                    <h5 class="mb-4">Đặt vé trên khắp thế giới</h5>
                                    <p class="mb-0">Dịch vụ đặt vé trên toàn cầu của DreamAirway mang đến sự thuận tiện với số lượng chuyến bay đa dạng, giúp người dùng dễ dàng lựa chọn hành trình phù hợp nhất.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-12">
                            <div
                                    class="service-content-inner d-flex align-items-center bg-white border border-primary rounded p-4 ps-0">
                                <div class="service-icon p-4">
                                    <i class="fa fa-hotel fa-4x text-primary"></i>
                                </div>
                                <div class="service-content">
                                    <h5 class="mb-4">Cơ sở vật chất hiện đại</h5>
                                    <p class="mb-0">Cơ sở vật chất hiện đại được thiết kế để mang lại sự thoải mái và tiện nghi tối đa, đáp ứng mọi nhu cầu của khách hàng với chất lượng dịch vụ hàng đầu.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-12">
                            <div
                                    class="service-content-inner d-flex align-items-center bg-white border border-primary rounded p-4 ps-0">
                                <div class="service-icon p-4">
                                    <i class="fa fa-user fa-4x text-primary"></i>
                                </div>
                                <div class="service-content">
                                    <h5 class="mb-4">Dịch Vụ Cung Cấp</h5>
                                    <p class="mb-0">Chúng tôi mang đến các dịch vụ hàng không toàn diện, từ đặt vé máy bay nhanh chóng, hỗ trợ hành lý, đến các tiện ích bổ sung nhằm nâng cao trải nghiệm của bạn trong mỗi chuyến bay.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-12">
                            <div
                                    class="service-content-inner d-flex align-items-center bg-white border border-primary rounded p-4 ps-0">
                                <div class="service-icon p-4">
                                    <i class="fa fa-cog fa-4x text-primary"></i>
                                </div>
                                <div class="service-content">
                                    <h5 class="mb-4">An Toàn Là Ưu Tiên Hàng Đầu</h5>
                                    <p class="mb-0">Chúng tôi cam kết tuân thủ các tiêu chuẩn an toàn quốc tế khắt khe nhất để bảo vệ bạn trên mọi chuyến bay
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <!-- Services End -->

    <!-- Destination Start -->
    <div class="container-fluid destination py-5">
        <div class="container py-5">
            <div class="mx-auto text-center mb-5" style="max-width: 900px;">
                <h5 class="section-title px-3">Destination</h5>
                <h1 class="mb-0">Popular Destination</h1>
            </div>
            <div class="tab-class text-center">
                <ul class="nav nav-pills d-inline-flex justify-content-center mb-5">
                    <li class="nav-item">
                        <a class="d-flex mx-3 py-2 border border-primary bg-light rounded-pill active"
                           data-bs-toggle="pill" href="#tab-1">
                            <span class="text-dark" style="width: 150px;">All</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="d-flex py-2 mx-3 border border-primary bg-light rounded-pill"
                           data-bs-toggle="pill" href="#tab-2">
                            <span class="text-dark" style="width: 150px;">USA</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="d-flex mx-3 py-2 border border-primary bg-light rounded-pill"
                           data-bs-toggle="pill" href="#tab-3">
                            <span class="text-dark" style="width: 150px;">Canada</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="d-flex mx-3 py-2 border border-primary bg-light rounded-pill"
                           data-bs-toggle="pill" href="#tab-4">
                            <span class="text-dark" style="width: 150px;">Europe</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="d-flex mx-3 py-2 border border-primary bg-light rounded-pill"
                           data-bs-toggle="pill" href="#tab-5">
                            <span class="text-dark" style="width: 150px;">China</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="d-flex mx-3 py-2 border border-primary bg-light rounded-pill"
                           data-bs-toggle="pill" href="#tab-6">
                            <span class="text-dark" style="width: 150px;">Singapore</span>
                        </a>
                    </li>
                </ul>
                <div class="tab-content">
                    <div id="tab-1" class="tab-pane fade show p-0 active">
                        <div class="row g-4">
                            <div class="col-xl-8">
                                <div class="row g-4">
                                    <div class="col-lg-6">
                                        <div class="destination-img">
                                            <img class="img-fluid rounded w-100" src="${pageContext.request.contextPath}/images/user/usa.png" alt="">
                                            <div class="destination-overlay p-4">

                                                <h4 class="text-white mb-2 mt-3">New York City</h4>

                                            </div>

                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="destination-img">
                                            <img class="img-fluid rounded w-100" src="${pageContext.request.contextPath}/images/user/usa2.png" alt="">
                                            <div class="destination-overlay p-4">

                                                <h4 class="text-white mb-2 mt-3">Las vegas</h4>

                                            </div>

                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="destination-img">
                                            <img class="img-fluid rounded w-100" src="${pageContext.request.contextPath}/images/user/destination-7.jpg" alt="">
                                            <div class="destination-overlay p-4">
                                                <h4 class="text-white mb-2 mt-3">Los angeles</h4>

                                            </div>

                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="destination-img">
                                            <img class="img-fluid rounded w-100" src="${pageContext.request.contextPath}/images/user/destination-8.jpg" alt="">
                                            <div class="destination-overlay p-4">
                                                <h4 class="text-white mb-2 mt-3">Los angeles</h4>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-4">
                                <div class="destination-img h-100">
                                    <img class="img-fluid rounded w-100 h-100" src="${pageContext.request.contextPath}/images/user/destination-9.jpg"
                                         style="object-fit: cover; min-height: 300px;" alt="">
                                    <div class="destination-overlay p-4">
                                        <h4 class="text-white mb-2 mt-3">San francisco</h4>

                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="destination-img">
                                    <img class="img-fluid rounded w-100" src="${pageContext.request.contextPath}/images/user/destination-4.jpg" alt="">
                                    <div class="destination-overlay p-4">
                                        <h4 class="text-white mb-2 mt-3">Miami</h4>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="destination-img">
                                    <img class="img-fluid rounded w-100" src="${pageContext.request.contextPath}/images/user/destination-5.jpg" alt="">
                                    <div class="destination-overlay p-4">

                                        <h4 class="text-white mb-2 mt-3">Los angelas</h4>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="destination-img">
                                    <img class="img-fluid rounded w-100" src="${pageContext.request.contextPath}/images/user/destination-6.jpg" alt="">
                                    <div class="destination-overlay p-4">
                                        <h4 class="text-white mb-2 mt-3">California</h4>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="tab-2" class="tab-pane fade show p-0">
                        <div class="row g-4">
                            <div class="col-xl-8">
                                <div class="row g-4">
                                    <div class="col-lg-6">
                                        <div class="destination-img">
                                            <img class="img-fluid rounded w-100" src="${pageContext.request.contextPath}/images/user/usa.png" alt="">
                                            <div class="destination-overlay p-4">

                                                <h4 class="text-white mb-2 mt-3">New York City</h4>

                                            </div>

                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="destination-img">
                                            <img class="img-fluid rounded w-100" src="${pageContext.request.contextPath}/images/user/usa2.png" alt="">
                                            <div class="destination-overlay p-4">

                                                <h4 class="text-white mb-2 mt-3">Las vegas</h4>

                                            </div>

                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="destination-img">
                                            <img class="img-fluid rounded w-100" src="${pageContext.request.contextPath}/images/user/usa3.png" alt="">
                                            <div class="destination-overlay p-4">
                                                <h4 class="text-white mb-2 mt-3">Los angeles</h4>

                                            </div>

                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="destination-img">
                                            <img class="img-fluid rounded w-100" src="${pageContext.request.contextPath}/images/user/usa4.png" alt="">
                                            <div class="destination-overlay p-4">
                                                <h4 class="text-white mb-2 mt-3">Los angeles</h4>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-4">
                                <div class="destination-img h-100">
                                    <img class="img-fluid rounded w-100 h-100" src="${pageContext.request.contextPath}/images/user/usa5.png"
                                         style="object-fit: cover; min-height: 300px;" alt="">
                                    <div class="destination-overlay p-4">
                                        <h4 class="text-white mb-2 mt-3">San francisco</h4>

                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="destination-img">
                                    <img class="img-fluid rounded w-100" src="${pageContext.request.contextPath}/images/user/usa6.png" alt="">
                                    <div class="destination-overlay p-4">
                                        <h4 class="text-white mb-2 mt-3">Miami</h4>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="destination-img">
                                    <img class="img-fluid rounded w-100" src="${pageContext.request.contextPath}/images/user/usa7.png" alt="">
                                    <div class="destination-overlay p-4">

                                        <h4 class="text-white mb-2 mt-3">Los angelas</h4>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="destination-img">
                                    <img class="img-fluid rounded w-100" src="${pageContext.request.contextPath}/images/user/destination-6.jpg" alt="">
                                    <div class="destination-overlay p-4">
                                        <h4 class="text-white mb-2 mt-3">California</h4>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="tab-3" class="tab-pane fade show p-0">
                        <div class="row g-4">
                            <div class="col-xl-8">
                                <div class="row g-4">
                                    <div class="col-lg-6">
                                        <div class="destination-img">
                                            <img class="img-fluid rounded w-100" src="${pageContext.request.contextPath}/images/user/canada1.avif" alt="">
                                            <div class="destination-overlay p-4">

                                                <h4 class="text-white mb-2 mt-3">Jasper</h4>

                                            </div>

                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="destination-img">
                                            <img class="img-fluid rounded w-100" src="${pageContext.request.contextPath}/images/user/canada2.avif" alt="">
                                            <div class="destination-overlay p-4">

                                                <h4 class="text-white mb-2 mt-3">Vancouver</h4>

                                            </div>

                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="destination-img">
                                            <img class="img-fluid rounded w-100" src="${pageContext.request.contextPath}/images/user/canada3.avif" alt="">
                                            <div class="destination-overlay p-4">
                                                <h4 class="text-white mb-2 mt-3">Toronto</h4>

                                            </div>

                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="destination-img">
                                            <img class="img-fluid rounded w-100" src="${pageContext.request.contextPath}/images/user/canada4.avif" alt="">
                                            <div class="destination-overlay p-4">
                                                <h4 class="text-white mb-2 mt-3">Toronto</h4>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-4">
                                <div class="destination-img h-100">
                                    <img class="img-fluid rounded w-100 h-100" src="${pageContext.request.contextPath}/images/user/canada5.avif"
                                         style="object-fit: cover; min-height: 300px;" alt="">
                                    <div class="destination-overlay p-4">
                                        <h4 class="text-white mb-2 mt-3">Toronto</h4>

                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="destination-img">
                                    <img class="img-fluid rounded w-100" src="${pageContext.request.contextPath}/images/user/canada6.avif" alt="">
                                    <div class="destination-overlay p-4">
                                        <h4 class="text-white mb-2 mt-3">Vancouver</h4>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="destination-img">
                                    <img class="img-fluid rounded w-100" src="${pageContext.request.contextPath}/images/user/canada7.avif" alt="">
                                    <div class="destination-overlay p-4">

                                        <h4 class="text-white mb-2 mt-3">Vancouver</h4>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="destination-img">
                                    <img class="img-fluid rounded w-100" src="${pageContext.request.contextPath}/images/user/destination-6.jpg" alt="">
                                    <div class="destination-overlay p-4">
                                        <h4 class="text-white mb-2 mt-3">Vancouver</h4>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="tab-4" class="tab-pane fade show p-0">
                        <div class="row g-4">
                            <div class="col-xl-8">
                                <div class="row g-4">
                                    <div class="col-lg-6">
                                        <div class="destination-img">
                                            <img class="img-fluid rounded w-100" src="${pageContext.request.contextPath}/images/user/europe1.jpg" alt="">
                                            <div class="destination-overlay p-4">

                                                <h4 class="text-white mb-2 mt-3">Paris</h4>

                                            </div>

                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="destination-img">
                                            <img class="img-fluid rounded w-100" src="${pageContext.request.contextPath}/images/user/europe2.jpg" alt="">
                                            <div class="destination-overlay p-4">

                                                <h4 class="text-white mb-2 mt-3">Italy</h4>

                                            </div>

                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="destination-img">
                                            <img class="img-fluid rounded w-100" src="${pageContext.request.contextPath}/images/user/europe3.jpg" alt="">
                                            <div class="destination-overlay p-4">
                                                <h4 class="text-white mb-2 mt-3">Greece</h4>

                                            </div>

                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="destination-img">
                                            <img class="img-fluid rounded w-100" src="${pageContext.request.contextPath}/images/user/europe4.jpg" alt="">
                                            <div class="destination-overlay p-4">
                                                <h4 class="text-white mb-2 mt-3">England</h4>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-4">
                                <div class="destination-img h-100">
                                    <img class="img-fluid rounded w-100 h-100" src="${pageContext.request.contextPath}/images/user/europe5.jpg"
                                         style="object-fit: cover; min-height: 300px;" alt="">
                                    <div class="destination-overlay p-4">
                                        <h4 class="text-white mb-2 mt-3">France</h4>

                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="destination-img">
                                    <img class="img-fluid rounded w-100" src="${pageContext.request.contextPath}/images/user/europe6.jpg" alt="">
                                    <div class="destination-overlay p-4">
                                        <h4 class="text-white mb-2 mt-3">Czech Republic</h4>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="destination-img">
                                    <img class="img-fluid rounded w-100" src="${pageContext.request.contextPath}/images/user/europe7.jpg" alt="">
                                    <div class="destination-overlay p-4">

                                        <h4 class="text-white mb-2 mt-3">Italy</h4>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="destination-img">
                                    <img class="img-fluid rounded w-100" src="${pageContext.request.contextPath}/images/user/europe8.jpg" alt="">
                                    <div class="destination-overlay p-4">
                                        <h4 class="text-white mb-2 mt-3">Italy</h4>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="tab-5" class="tab-pane fade show p-0">
                        <div class="row g-4">
                            <div class="col-xl-8">
                                <div class="row g-4">
                                    <div class="col-lg-6">
                                        <div class="destination-img">
                                            <img class="img-fluid rounded w-100" src="${pageContext.request.contextPath}/images/user/china1.jpg" alt="">
                                            <div class="destination-overlay p-4">

                                                <h4 class="text-white mb-2 mt-3">China</h4>

                                            </div>

                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="destination-img">
                                            <img class="img-fluid rounded w-100" src="${pageContext.request.contextPath}/images/user/china2.jpg" alt="">
                                            <div class="destination-overlay p-4">

                                                <h4 class="text-white mb-2 mt-3">China</h4>

                                            </div>

                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="destination-img">
                                            <img class="img-fluid rounded w-100" src="${pageContext.request.contextPath}/images/user/china3.jpg" alt="">
                                            <div class="destination-overlay p-4">
                                                <h4 class="text-white mb-2 mt-3">China</h4>

                                            </div>

                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="destination-img">
                                            <img class="img-fluid rounded w-100" src="${pageContext.request.contextPath}/images/user/china4.jpg" alt="">
                                            <div class="destination-overlay p-4">
                                                <h4 class="text-white mb-2 mt-3">China</h4>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-4">
                                <div class="destination-img h-100">
                                    <img class="img-fluid rounded w-100 h-100" src="${pageContext.request.contextPath}/images/user/china5.jpg"
                                         style="object-fit: cover; min-height: 300px;" alt="">
                                    <div class="destination-overlay p-4">
                                        <h4 class="text-white mb-2 mt-3">China</h4>

                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="destination-img">
                                    <img class="img-fluid rounded w-100" src="${pageContext.request.contextPath}/images/user/china6.jpg" alt="">
                                    <div class="destination-overlay p-4">
                                        <h4 class="text-white mb-2 mt-3">China</h4>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="destination-img">
                                    <img class="img-fluid rounded w-100" src="${pageContext.request.contextPath}/images/user/china1.jpg" alt="">
                                    <div class="destination-overlay p-4">

                                        <h4 class="text-white mb-2 mt-3">China</h4>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="destination-img">
                                    <img class="img-fluid rounded w-100" src="${pageContext.request.contextPath}/images/user/china2.jpg" alt="">
                                    <div class="destination-overlay p-4">
                                        <h4 class="text-white mb-2 mt-3">China</h4>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="tab-6" class="tab-pane fade show p-0">
                        <div class="row g-4">
                            <div class="col-xl-8">
                                <div class="row g-4">
                                    <div class="col-lg-6">
                                        <div class="destination-img">
                                            <img class="img-fluid rounded w-100" src="${pageContext.request.contextPath}/images/user/usa.png" alt="">
                                            <div class="destination-overlay p-4">

                                                <h4 class="text-white mb-2 mt-3">Singapore</h4>

                                            </div>

                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="destination-img">
                                            <img class="img-fluid rounded w-100" src="${pageContext.request.contextPath}/images/user/usa2.png" alt="">
                                            <div class="destination-overlay p-4">

                                                <h4 class="text-white mb-2 mt-3">Singapore</h4>

                                            </div>

                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="destination-img">
                                            <img class="img-fluid rounded w-100" src="${pageContext.request.contextPath}/images/user/destination-7.jpg" alt="">
                                            <div class="destination-overlay p-4">
                                                <h4 class="text-white mb-2 mt-3">Singapore</h4>

                                            </div>

                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="destination-img">
                                            <img class="img-fluid rounded w-100" src="${pageContext.request.contextPath}/images/user/destination-8.jpg" alt="">
                                            <div class="destination-overlay p-4">
                                                <h4 class="text-white mb-2 mt-3">Singapore</h4>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-4">
                                <div class="destination-img h-100">
                                    <img class="img-fluid rounded w-100 h-100" src="${pageContext.request.contextPath}/images/user/destination-9.jpg"
                                         style="object-fit: cover; min-height: 300px;" alt="">
                                    <div class="destination-overlay p-4">
                                        <h4 class="text-white mb-2 mt-3">Singapore</h4>

                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="destination-img">
                                    <img class="img-fluid rounded w-100" src="${pageContext.request.contextPath}/images/user/destination-4.jpg" alt="">
                                    <div class="destination-overlay p-4">
                                        <h4 class="text-white mb-2 mt-3">Singapore</h4>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="destination-img">
                                    <img class="img-fluid rounded w-100" src="${pageContext.request.contextPath}/images/user/destination-5.jpg" alt="">
                                    <div class="destination-overlay p-4">

                                        <h4 class="text-white mb-2 mt-3">Singapore</h4>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="destination-img">
                                    <img class="img-fluid rounded w-100" src="${pageContext.request.contextPath}/images/user/destination-6.jpg" alt="">
                                    <div class="destination-overlay p-4">
                                        <h4 class="text-white mb-2 mt-3">Singapore</h4>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Destination End -->


    <!-- Blog Start -->
    <div class="container-fluid blog py-5">
        <div class="container py-5">
            <div class="mx-auto text-center mb-5" style="max-width: 900px;">
                <h5 class="section-title px-3">Our Blog</h5>
                <h1 class="mb-4">Popular Travel Blogs</h1>
                <p class="mb-0">Lorem ipsum dolor sit amet consectetur adipisicing elit. Deleniti deserunt tenetur
                    sapiente atque. Magni non explicabo beatae sit, vel reiciendis consectetur numquam id similique
                    sunt error obcaecati ducimus officia maiores.
                </p>
            </div>
            <div class="row g-4 justify-content-center">
                <div class="col-lg-4 col-md-6">
                    <div class="blog-item">
                        <div class="blog-img">
                            <div class="blog-img-inner">
                                <img class="img-fluid w-100 rounded-top" src="${pageContext.request.contextPath}/images/user/blog-1.jpg" alt="Image">
                                <div class="blog-icon">
                                    <a href="/blog" class="my-auto"><i class="fas fa-link fa-2x text-white"></i></a>
                                </div>
                            </div>

                        </div>
                        <div class="blog-content border border-top-0 rounded-bottom p-4">
                            <p class="mb-3">Posted By: Royal Hamblin </p>
                            <a href="#" class="h4">Adventures Trip</a>
                            <a href="/blog" class="btn btn-primary rounded-pill py-2 px-4">Read More</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="blog-item">
                        <div class="blog-img">
                            <div class="blog-img-inner">
                                <img class="img-fluid w-100 rounded-top" src="${pageContext.request.contextPath}/images/user/blog-2.jpg" alt="Image">
                                <div class="blog-icon">
                                    <a href="#" class="my-auto"><i class="fas fa-link fa-2x text-white"></i></a>
                                </div>
                            </div>

                        </div>
                        <div class="blog-content border border-top-0 rounded-bottom p-4">
                            <p class="mb-3">Posted By: Royal Hamblin </p>
                            <a href="#" class="h4">Adventures Trip</a>
                            <a href="/blog" class="btn btn-primary rounded-pill py-2 px-4">Read More</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="blog-item">
                        <div class="blog-img">
                            <div class="blog-img-inner">
                                <img class="img-fluid w-100 rounded-top" src="${pageContext.request.contextPath}/images/user/blog-3.jpg" alt="Image">
                                <div class="blog-icon">
                                    <a href="#" class="my-auto"><i class="fas fa-link fa-2x text-white"></i></a>
                                </div>
                            </div>

                        </div>
                        <div class="blog-content border border-top-0 rounded-bottom p-4">
                            <p class="mb-3">Posted By: Royal Hamblin </p>
                            <a href="#" class="h4">Adventures Trip</a>
                            <a href="/blog" class="btn btn-primary rounded-pill py-2 px-4">Read More</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Blog End -->


    <%@ include file="../share-view/user-footer.jsp" %>





    <a href="#" class="btn btn-primary btn-primary-outline-0 btn-md-square back-to-top"><i
            class="fa fa-arrow-up"></i></a>


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="/libs/bootstrap/dist/js/bootstrap.bundle.js"></script>
    <script src="/libs/easing/easing.min.js"></script>
    <script src="/libs/waypoints/waypoints.min.js"></script>
    <script src="/libs/owlcarousel/owl.carousel.min.js"></script>
    <script src="/libs/lightbox/js/lightbox.min.js"></script>
    <script src="/js/user/logout.js"></script>
    <script src="/js/user/home.js"></script>
</div>
</body>
</html>
