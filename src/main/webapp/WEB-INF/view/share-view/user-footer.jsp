<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Footer and Copyright</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Libraries Stylesheet -->
    <link href="${pageContext.request.contextPath}/libs/owlcarousel/assets/owl.carousel.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/libs/lightbox/css/lightbox.min.css" rel="stylesheet">
    <!-- Customized Bootstrap Stylesheet -->
    <link href="${pageContext.request.contextPath}/libs/bootstrap/dist/css/bootstrap.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
    <style>
    </style>
</head>
<body>
<!-- Footer Start -->
<div class="container-fluid footer py-5">
    <div class="container py-5">
        <div class="row g-5">
            <div class="col-md-6 col-lg-6 col-xl-3">
                <div class="footer-item d-flex flex-column">
                    <h4 class="mb-4 text-white">Get In Touch</h4>
                    <a href="#"><i class="fas fa-home me-2"></i> 144 Xuân Thuỷ, Cầu Giấy, Hà Nội</a>
                    <a href="#"><i class="fas fa-envelope me-2"></i> DreamAirwayxinchao@gmail.com</a>
                    <a href="#"><i class="fas fa-phone me-2"></i> 1800 1977</a>
                    <a href="#" class="mb-3"><i class="fas fa-print me-2"></i> 0914726861</a>
                    <div class="d-flex align-items-center">
                        <i class="fas fa-share fa-2x text-white me-2"></i>
                        <a class="btn-square btn btn-primary rounded-circle mx-1" href="#"><i class="fab fa-facebook-f"></i></a>
                        <a class="btn-square btn btn-primary rounded-circle mx-1" href="#"><i class="fab fa-twitter"></i></a>
                        <a class="btn-square btn btn-primary rounded-circle mx-1" href="#"><i class="fab fa-instagram"></i></a>
                        <a class="btn-square btn btn-primary rounded-circle mx-1" href="#"><i class="fab fa-linkedin-in"></i></a>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-lg-6 col-xl-3">
                <div class="footer-item d-flex flex-column">
                    <h4 class="mb-4 text-white">Company</h4>
                    <a href="/about"><i class="fas fa-angle-right me-2"></i> About</a>
                    <a href="#"><i class="fas fa-angle-right me-2"></i> Careers</a>
                    <a href="/blog"><i class="fas fa-angle-right me-2"></i> Blog</a>
                    <a href="#"><i class="fas fa-angle-right me-2"></i> Press</a>
                </div>
            </div>
            <div class="col-md-6 col-lg-6 col-xl-3">
                <div class="footer-item d-flex flex-column">
                    <h4 class="mb-4 text-white">Support</h4>
                    <a href="#"><i class="fas fa-angle-right me-2"></i> Contact</a>
                    <a href="#"><i class="fas fa-angle-right me-2"></i> Legal Notice</a>
                    <a href="#"><i class="fas fa-angle-right me-2"></i> Privacy Policy</a>
                    <a href="#"><i class="fas fa-angle-right me-2"></i> Terms and Conditions</a>
                    <a href="#"><i class="fas fa-angle-right me-2"></i> Sitemap</a>
                    <a href="#"><i class="fas fa-angle-right me-2"></i> Cookie policy</a>
                </div>
            </div>

        </div>
    </div>
</div>
<!-- Footer End -->

<!-- Back to Top -->
<a href="#" class="btn btn-primary btn-primary-outline-0 btn-md-square back-to-top"><i
        class="fa fa-arrow-up"></i></a>
</body>
</html>
