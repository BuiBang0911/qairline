<div class="container-fluid bg-primary px-5 d-none d-lg-block">
    <div class="row gx-0">
        <div class="col-lg-8 text-center text-lg-start mb-2 mb-lg-0">
            <div class="d-inline-flex align-items-center" style="height: 45px;">
                <div class="dropdown d-none me-2" id="myDropItem">
                    <a href="#" class="dropdown-toggle text-light" data-bs-toggle="dropdown" onclick = "testclick()">
                        <small><i class="fa fa-home me-2"></i> My Dashboard</small>
                    </a>
                    <div class="dropdown-menu rounded ">
                        <a href="/myprofile" class="dropdown-item"><i class="fas fa-user-alt me-2"></i> My Profile</a>
                        <a href="#" class="dropdown-item"><i class="fas fa-comment-alt me-2"></i> Inbox</a>
                        <a href="#" class="dropdown-item"><i class="fas fa-bell me-2"></i> Notifications</a>
                        <a href="#" class="dropdown-item"><i class="fas fa-cog me-2"></i> Account Settings</a>
                        <a onclick="LogOut()" class="dropdown-item"><i class="fas fa-power-off me-2"></i> Log Out</a>
                    </div>
                </div>
                <%@ include file="../user/login.jsp" %>
            </div>
        </div>
        <div class="col-lg-4 text-center text-lg-end">
            <div class="d-inline-flex align-items-center" style="height: 45px;">
                <div class="dropdown">
                    <a class="dropdown-toggle me-2 fa fa-bell text-light" href="#" role="button"
                       id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
                        Notifications
                    </a>

                    <div class="dropdown-menu dropdown-menu-lg-end p-3 stylish-box" id="notificationBox">
                        <!-- Buttons to toggle between Promotion and Announcement -->
                        <div class="d-flex flex-column" id="noti-group">
                            <button class="btn btn-primary mb-1 stylish-button"
                                    id="showPromotion">Promotion</button>
                            <div id="promotionContent" class=" stylish-content">

                            </div>

                            <button class="btn btn-primary mb-1 stylish-button"
                                    id="showAnnouncement">Announcement</button>
                            <div id="announcementContent" class=" stylish-content">
                                <p>No announcements available.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
<script>

    $(document).ready(function() {
        $.ajax({
            url: '/api/getPromotionOn', //URL của REST API
            method: 'GET',
            dataType: 'json',headers: {
                'Authorization': 'Bearer ' + localStorage.getItem('accessToken')  // Lấy token từ localStorage
            },
            success: function(data) {
                console.log("5555");
                $('#promotionContent').empty();
                // Duyệt qua danh sách và thêm mỗi model vào select
                $.each(data, function (index, promotion) {
                    $('#promotionContent').append('<div class = "promotion-box"><span class="notification-item" style="display: block;">' + promotion.title + '</span><div class = "promotion-info"><span style = "flex:2;">' + promotion.description + '</span><span style="">' + promotion.endDate + '</span></div></div>');
                });
            },
            // error: function(xhr, status, error) {
            //     if (xhr.status === 401) {
            //         alert('Failed Login');
            //         $('#loginError').show();
            //     } else {
            //         console.log('Lỗi: ', status, error);
            //     }
            // }
        });
    });

    $(document).ready(function() {
        $.ajax({
            url: '/api/getAllAnnouncement', //URL của REST API
            method: 'GET',
            dataType: 'json',headers: {
                'Authorization': 'Bearer ' + localStorage.getItem('accessToken')  // Lấy token từ localStorage
            },
            success: function(data) {
                console.log("3");
                $('#announcementContent').empty();
                // Duyệt qua danh sách và thêm mỗi model vào select
                $.each(data, function (index, announcement) {
                    $('#announcementContent').append('<div class = "announcement-box"><span class="notification-item" style="display: block;">' + announcement.title + '</span><span>' + announcement.content + '</span></div>');


                    console.log(announcement);

                });
            },
        });
    });
    // Prevent dropdown menu from closing on button click
    document.querySelectorAll('.dropdown-menu button').forEach(button => {
        button.addEventListener('click', (e) => {
            e.stopPropagation(); // Prevent dropdown from closing
        });
    });

    function toggleContent(buttonId, contentId) {
        const button = document.getElementById(buttonId);
        const content = document.getElementById(contentId);

        // Kiểm tra trạng thái hiện tại của nội dung
        if (content.style.maxHeight === "0px" || !content.style.maxHeight) {
            // Hiển thị nội dung
            content.style.maxHeight = content.scrollHeight + "px"; // Mở rộng chiều cao
            content.style.paddingBottom = "10px"; // Thêm padding dưới
            button.classList.add("active"); // Thêm màu cho nút
        } else {
            // Ẩn nội dung
            content.style.maxHeight = "0px"; // Thu gọn chiều cao
            content.style.paddingTop = "0px"; // Xóa padding trên
            content.style.paddingBottom = "0px"; // Xóa padding dưới
            button.classList.remove("active"); // Xóa màu của nút
        }
    }


    // Event listener for Promotion button
    document.getElementById("showPromotion").addEventListener("click", function () {
        toggleContent("showPromotion", "promotionContent");
    });

    // Event listener for Announcement button
    document.getElementById("showAnnouncement").addEventListener("click", function () {
        toggleContent("showAnnouncement", "announcementContent");
    });

    function closeNotificationBox() {
        document.getElementById('notificationBox').style.display = 'none';
    }

</script>
</body>
</html>
