package com.example.qairline.controller;

import com.example.qairline.service.AircraftService;
import com.example.qairline.service.FlightService;
import com.example.qairline.service.TicketService;
import com.example.qairline.service.UserService;
import com.example.qairline.util.SecurityUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class DashboardController {
    @Autowired
    private SecurityUtil securityUtil;
    @Autowired
    private TicketService ticketService;

    @Autowired
    private FlightService flightService;

    @Autowired
    private UserService userService;
    @Autowired
    private AircraftService aircraftService;

    @GetMapping("admin/dashboard")
    public String viewDashboard(Model model) {
        model.addAttribute("totalTickets", ticketService.getTotalTickets());
        model.addAttribute("ticketsSold", ticketService.getTicketsSoldInLastMonth());
        model.addAttribute("totalUsers", userService.getTotalUsers());
        model.addAttribute("revenueLastMonth", ticketService.getRevenueInLastMonth());
        model.addAttribute("totalFlights", flightService.getTotalFlights());
        model.addAttribute("totalAircraft", aircraftService.getTotalAircraft());
        return "admin/dashboard";
    }

    @GetMapping("api/dashboard")
    @ResponseBody
    public String viewApiDashboard() {
        String userName = securityUtil.getCurrentUserLogin().orElse(null);
        System.out.println(userName);
        // Kiểm tra role và trả về kết quả
        if (userName != null && userName.equals("admin")) {
            return "success";
        }
        return null;
    }
}