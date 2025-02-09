<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>

<aside class="left-sidebar">
    <!-- Sidebar scroll-->
    <div class="d-flex flex-column h-100">
        <div class="brand-logo d-flex align-items-center justify-content-between">
            <a class="text-nowrap logo-text">
                <img src = "/images/admin/logos/Brand-final.png">
            </a>
            <div class="close-btn d-xl-none d-block sidebartoggler cursor-pointer" id="sidebarCollapse">
                <i class="bi bi-x fs-3"></i>
            </div>
        </div>
        <!-- Sidebar navigation-->
        <nav class="sidebar-nav d-flex flex-column h-100" data-simplebar="">
            <ul id="sidebarnav">
                <li class="nav-small-cap">
                    <span class="hide-menu">Home</span>
                </li>
                <li class="sidebar-item">
                    <a class="sidebar-link" href="/admin/dashboard" aria-expanded="false">
                        <span>
                          <i class="bi bi-speedometer2"></i>
                        </span>
                        <span class="hide-menu">Dashboard</span>
                    </a>
                </li>
                <li class="sidebar-item">
                    <a class="sidebar-link" href="/admin/aircrafts" aria-expanded="false">
                        <span>
                          <i class="bi bi-airplane"></i>
                        </span>
                        <span class="hide-menu">Aircraft</span>
                    </a>
                </li>
                <li class="sidebar-item">
                    <a class="sidebar-link" href="/admin/users" aria-expanded="false">
                        <span>
                          <i class="bi bi-people"></i>
                        </span>
                        <span class="hide-menu">Customer</span>
                    </a>
                </li>
                <li class="sidebar-item">
                    <a class="sidebar-link" href="/admin/tickets" aria-expanded="false">
                        <span>
                          <i class="bi bi-ticket-perforated"></i>
                        </span>
                        <span class="hide-menu">Ticket</span>
                    </a>
                </li>
                <li class="sidebar-item">
                    <a class="sidebar-link" href="/admin/announcements" aria-expanded="false">
                        <span>
                          <i class="bi bi-megaphone"></i>
                        </span>
                        <span class="hide-menu">Content</span>
                    </a>
                </li>
                <li class="sidebar-item">
                    <a class="sidebar-link" href="/admin/promotions" aria-expanded="false">
                        <span>
                          <i class="bi bi-tag"></i>
                        </span>
                        <span class="hide-menu">Promotion</span>
                    </a>
                </li>
                <li class="sidebar-item">
                    <a class="sidebar-link" href="/admin/flights" aria-expanded="false">
                        <span>
                          <i class="bi bi-airplane-engines"></i>
                        </span>
                        <span class="hide-menu">Flight</span>
                    </a>
                </li>
            </ul>

        </nav>
        <!-- End Sidebar navigation -->

        <li class="mt-auto mb-3">
            <div class="d-flex justify-content-center">
                <button type="button" id="btn-logout" class="btn btn-outline-primary mx-3 mt-2 d-block">Logout</button>
            </div>
        </li>
    </div>
    <!-- End Sidebar scroll-->
</aside>

<script>
    $('#btn-logout').click(function() {
        $.ajax({
            url: '/admin/logout',
            method: 'POST',
            headers: {
                'Authorization': 'Bearer ' + localStorage.getItem('accessToken')  // Lấy token từ localStorage
            },
            success: function(response) {
                console.log(response);
                window.location.href='/admin/login';
            },
        })
        localStorage.clear();
    })
</script>