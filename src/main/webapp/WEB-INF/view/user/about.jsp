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
                <a href="/" class="nav-item nav-link">Home</a>
                <a href="/about" class="nav-item nav-link active">About</a>
                <a href="/blog" class="nav-item nav-link ">Blog</a>
            </div>
            <div class="rounded-pill py-2 px-4" style="margin-left: 0px;">
                <a id = "booking-button" href="/" role="button">
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

    <!-- Navbar & Hero End -->

    <!-- About Start -->
    <div class="container-fluid about py-5">
        <div class="container py-5">
            <div class="row g-5 align-items-center">
                <div class="col-lg-5">
                    <div class="h-100"
                         style="border: 50px solid; border-color: transparent #13357B transparent #13357B;">
                        <img src="${pageContext.request.contextPath}/images/user/about-img.jpg" class="img-fluid w-100 h-100" alt="">
                    </div>
                </div>
                <div class="col-lg-7"
                     style="background: linear-gradient(rgba(255, 255, 255, .8), rgba(255, 255, 255, .8)), url(${pageContext.request.contextPath}/images/user/airplane.jpg);">
                    <h5 class="section-about-title pe-3">About Us</h5>
                    <h1 class="mb-4">Welcome to <span class="text-primary">DreamAirway</span></h1>
                    <p class="mb-4">DreamAirway là một dự án đầy tâm huyết được thực hiện bởi nhóm sinh viên tài năng đến từ trường Đại học Công nghệ - Đại học Quốc gia Hà Nội (UET). Với tinh thần sáng tạo và khát vọng đóng góp vào ngành hàng không, nhóm gồm các thành viên:</p>
                    <ul class="mb-4">
                        <li>Sinh viên A (MSV: 12345678)</li>
                        <li>Sinh viên B (MSV: 87654321)</li>
                        <li>Sinh viên C (MSV: 11223344)</li>
                    </ul>
                    <p class="mb-4">Dự án được thiết kế để mang đến trải nghiệm đặt vé và dịch vụ hàng không hiện đại, tiện lợi, với sự tập trung vào chất lượng và sự hài lòng của khách hàng. Chúng tôi tự hào là một nhóm trẻ năng động, với mong muốn không ngừng học hỏi và sáng tạo.</p>
                    <div class="row gy-2 gx-4 mb-4">
                        <div class="col-sm-6">
                            <p class="mb-0"><i class="fa fa-arrow-right text-primary me-2"></i>First Class Flights</p>
                        </div>
                        <div class="col-sm-6">
                            <p class="mb-0"><i class="fa fa-arrow-right text-primary me-2"></i>Handpicked Hotels</p>
                        </div>
                        <div class="col-sm-6">
                            <p class="mb-0"><i class="fa fa-arrow-right text-primary me-2"></i>5 Star Accommodations</p>
                        </div>
                        <div class="col-sm-6">
                            <p class="mb-0"><i class="fa fa-arrow-right text-primary me-2"></i>Latest Model Vehicles</p>
                        </div>
                        <div class="col-sm-6">
                            <p class="mb-0"><i class="fa fa-arrow-right text-primary me-2"></i>150 Premium City Tours</p>
                        </div>
                        <div class="col-sm-6">
                            <p class="mb-0"><i class="fa fa-arrow-right text-primary me-2"></i>24/7 Service</p>
                        </div>
                    </div>
                    <a class="btn btn-primary rounded-pill py-3 px-5 mt-2" href="">Read More</a>
                </div>

            </div>
        </div>
    </div>
    <!-- About End -->


    <!-- Travel Guide Start -->
    <div class="container-fluid guide py-5">
        <div class="container py-5">
            <div class="mx-auto text-center mb-5" style="max-width: 900px;">
                <h5 class="section-title px-3">Travel Guide</h5>
                <h1 class="mb-0">Meet Our Guide</h1>
            </div>
            <div class="row g-4">
                <div class="col-md-6 col-lg-4">
                    <div class="guide-item">
                        <div class="guide-img">
                            <div class="guide-img-efects">
                                <img src="${pageContext.request.contextPath}/images/user/messi1.jpg" class="img-fluid w-100 rounded-top" alt="Image">
                            </div>
                            <div class="guide-icon rounded-pill p-2">
                                <a target = "_blank" class="btn btn-square btn-primary rounded-circle mx-1" href="https://www.facebook.com/profile.php?id=100009740852753"><i
                                        class="fab fa-facebook-f"></i></a>
                                <a target = "_blank" class="btn btn-square btn-primary rounded-circle mx-1" href="https://github.com/Kyanlul"><i
                                        class="fab fa-github"></i></a>
                            </div>
                        </div>
                        <div class="guide-title text-center rounded-bottom p-4">
                            <div class="guide-title-inner">
                                <h4 class="mt-3">Trần Lê Quý Đan</h4>
                                <p class="mb-0">22021177</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4">
                    <div class="guide-item">
                        <div class="guide-img">
                            <div class="guide-img-efects">
                                <img src="${pageContext.request.contextPath}/images/user/ronaldo1.jpg" class="img-fluid w-100 rounded-top" alt="Image">
                            </div>
                            <div class="guide-icon rounded-pill p-2">
                                <a target = "_blank" class="btn btn-square btn-primary rounded-circle mx-1" href="https://www.facebook.com/equal.bui"><i
                                        class="fab fa-facebook-f"></i></a>
                                <a target = "_blank" class="btn btn-square btn-primary rounded-circle mx-1" href="https://github.com/BuiBang0911"><i
                                        class="fab fa-github"></i></a>
                            </div>
                        </div>
                        <div class="guide-title text-center rounded-bottom p-4">
                            <div class="guide-title-inner">
                                <h4 class="mt-3">Bùi Nguyễn Công Bằng</h4>
                                <p class="mb-0">MSV</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4">
                    <div class="guide-item">
                        <div class="guide-img">
                            <div class="guide-img-efects">
                                <img src="${pageContext.request.contextPath}/images/user/neymar1.jpg" class="img-fluid w-100 rounded-top" alt="Image">
                            </div>
                            <div class="guide-icon rounded-pill p-2">
                                <a target = "_blank" class="btn btn-square btn-primary rounded-circle mx-1" href="https://www.facebook.com/napplee07"><i
                                        class="fab fa-facebook-f"></i></a>
                                <a target = "_blank" class="btn btn-square btn-primary rounded-circle mx-1" href="https://github.com/Nappleee"><i
                                        class="fab fa-github"></i></a>
                            </div>
                        </div>
                        <div class="guide-title text-center rounded-bottom p-4">
                            <div class="guide-title-inner">
                                <h4 class="mt-3">Nguyễn Hồ Bắc</h4>
                                <p class="mb-0">MSV</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Travel Guide End -->


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
