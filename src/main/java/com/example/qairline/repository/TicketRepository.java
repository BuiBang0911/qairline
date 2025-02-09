package com.example.qairline.repository;

import com.example.qairline.model.Flight;
import com.example.qairline.model.Promotion;
import com.example.qairline.model.Ticket;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;


import java.time.LocalDateTime;
import java.util.List;

public interface TicketRepository extends JpaRepository<Ticket, Long> {
    List<Ticket> findAll();
    List<Ticket> findByFlightAndUserIsNull(Flight flight);
    Page<Ticket> findAll(Pageable pageable);
    List<Ticket> findAllByStatus(String status);
    void deleteById(Long id);
    Ticket findById(long id);
    Page<Ticket> findByUserIsNull(Pageable pageable);
    List<Ticket> findByPromotion(Promotion promotion);

    @Query("SELECT t FROM Ticket t WHERE t.user.username = :username")
    Page<Ticket> findByUsername(@Param("username") String username, Pageable pageable);
    @Query("SELECT t FROM Ticket t WHERE " +
            "t.status LIKE %:keyword% OR " +
            "t.seatNumber LIKE %:keyword%")
    Page<Ticket> searchByKeyword(String keyword, Pageable pageable);

    @Query("SELECT COUNT(t) FROM Ticket t")
    Long countTotalTickets();

    @Query("SELECT COUNT(t) FROM Ticket t WHERE t.status = 'PAID'")
    Long countTicketsSold();

    @Query("SELECT COUNT(t) FROM Ticket t WHERE t.status = 'PAID' AND t.flight.departureTime BETWEEN :startDate AND :endDate")
    Long countTicketsSoldInLastMonth(@Param("startDate") LocalDateTime startDate, @Param("endDate") LocalDateTime endDate);

    @Query("SELECT t FROM Ticket t WHERE t.status = 'PAID' AND t.flight.departureTime BETWEEN :startDate AND :endDate")
    List<Ticket> RevenueInLastMonth(@Param("startDate") LocalDateTime startDate, @Param("endDate") LocalDateTime endDate);


}
