package com.example.qairline.service;

import com.example.qairline.dto.request.PromotionRequest;
import com.example.qairline.dto.response.PromotionResponse;
import com.example.qairline.model.Promotion;
import com.example.qairline.model.Ticket;
import com.example.qairline.repository.PromotionRepository;
import com.example.qairline.repository.TicketRepository;
import jakarta.validation.constraints.NotEmpty;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import java.time.LocalDateTime;
import java.util.List;

@Service
public class PromotionService {
    @Autowired
    PromotionRepository promotionRepository;
    @Autowired
    private TicketRepository ticketRepository;

    public PromotionResponse getPromotionById(long id) {
        return convertToDTO(promotionRepository.findById(id));
    }

    public List<PromotionResponse> getAllPromotions() {
        List<PromotionResponse> promotions = promotionRepository.findAll().stream().map(this::convertToDTO).toList();
        return promotions;
    }


    public Page<PromotionResponse> getAllPromotionsPaging(int page, int size) {
        Pageable pageable = PageRequest.of(page, size);
        Page<Promotion> promotions = promotionRepository.findAll(pageable);
        return promotions.map(this::convertToDTO);
    }

    public List<PromotionResponse> getPromotionOn() {
        return promotionRepository.findByStartDateBeforeAndEndDateAfter(LocalDateTime.now(), LocalDateTime.now()).stream().map(this::convertToDTO).toList();
    }


    public void deletePromotion(@RequestParam Long Id) {
        List<Ticket> tickets = ticketRepository.findByPromotion(promotionRepository.findById(Id).get());
        for (Ticket ticket : tickets) {
            ticket.setPromotion(null); // Đặt promotionId thành null
            ticketRepository.save(ticket); // Lưu lại các thay đổi
        }
        promotionRepository.deleteById(Id);
    }

    public PromotionResponse addPromotion(PromotionRequest request) {
        Promotion promotion = new Promotion();

        promotion.setTitle(request.getTitle());
        promotion.setDescription(request.getDescription());
        promotion.setDiscountPercent(request.getDiscountPercent());
        promotion.setStartDate(request.getStartDate());
        promotion.setEndDate(request.getEndDate());

        try {
            promotion = promotionRepository.save(promotion);
        } catch (DataIntegrityViolationException exception) {
//            throw new AppException(ErrorCode.USER_EXISTED);
        }
        return convertToDTO(promotion);
    }

    public PromotionResponse updatePromotion(Long Id, PromotionRequest request) {
        Promotion promotion = promotionRepository.findById(Id).get();

        promotion.setDescription(request.getDescription());
        promotion.setDiscountPercent(request.getDiscountPercent());
        promotion.setStartDate(request.getStartDate());
        promotion.setEndDate(request.getEndDate());
        try {
            promotion = promotionRepository.save(promotion);
        } catch (DataIntegrityViolationException exception) {
//            throw new AppException(ErrorCode.USER_EXISTED);
        }

        return convertToDTO(promotion);
    }

    public Page<PromotionResponse> searchPromotions(String keyword, int page, int size) {
        PageRequest pageRequest = PageRequest.of(page, size);
        return promotionRepository.searchByKeyword(keyword, pageRequest).map(this::convertToDTO);
    }

    public List<PromotionResponse> getActivePromotions() {
        LocalDateTime now = LocalDateTime.now();
        return promotionRepository.findByStartDateBeforeAndEndDateAfter(now, now).stream().map(promotion -> convertToDTO(promotion)).toList();
    }

    public PromotionResponse convertToDTO(Promotion promotion) {
        return new PromotionResponse(promotion.getPromotionId(),promotion.getTitle(), promotion.getDescription(), promotion.getDiscountPercent(), promotion.getStartDate(), promotion.getEndDate());
    }
}
