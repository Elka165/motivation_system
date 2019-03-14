package com.ibis.model;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.time.LocalDateTime;

@Entity
@Table(name="SM_STATYSTYKI_DANE")

public class DataCollector {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="Id")
    private Long id;

    @Column(name="Zrodlo")
    private String source;

    @Column(name="Numer_szkody")
    private String claim;

    @Column(name="Data_wplywu")
    private LocalDateTime transferDate;

    @Column(name="Typ")
    private String type;

    @Column(name="Likwidator_mobilny")
    private String mobileName;

    @Column(name="Kwota_roszczenia")
    private Double amount;

    @Column(name="Kwota_zatwierdzenia")
    private Double amountApproved;

    @Column(name="Różnica_kwot")
    private Double amountDifference;

    @Column(name="Uwagi")
    private String description;

    @Column(name ="Korekta")
    private Boolean correction;

    @Column(name="Rabat_5")
    private Boolean discount;

    @ManyToOne
    @JoinColumn(name = "user_Id")
    @NotNull
    private User user;

    public DataCollector() {
    }

    public DataCollector(String source, String claim, LocalDateTime transferDate, String type, String mobileName, Double amount, Double amountApproved, Double amountDifference, String description, Boolean correction, Boolean discount, User user) {
        this.source = source;
        this.claim = claim;
        this.transferDate = transferDate;
        this.type = type;
        this.mobileName = mobileName;
        this.amount = amount;
        this.amountApproved = amountApproved;
        this.amountDifference = amountDifference;
        this.description = description;
        this.correction = correction;
        this.discount = discount;
        this.user = user;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getSource() {
        return source;
    }

    public void setSource(String source) {
        this.source = source;
    }

    public String getClaim() {
        return claim;
    }

    public void setClaim(String claim) {
        this.claim = claim;
    }

    public LocalDateTime getTransferDate() {
        return transferDate;
    }

    public void setTransferDate(LocalDateTime transferDate) {
        this.transferDate = transferDate;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getMobileName() {
        return mobileName;
    }

    public void setMobileName(String mobileName) {
        this.mobileName = mobileName;
    }

    public Double getAmount() {
        return amount;
    }

    public void setAmount(Double amount) {
        this.amount = amount;
    }

    public Double getAmoutApproved() {
        return amountApproved;
    }

    public void setAmoutApproved(Double amoutApproved) {
        this.amountApproved = amoutApproved;
    }

    public Double getAmountDifference() {
        return amountDifference;
    }

    public void setAmountDifference(Double amountDifference) {
        this.amountDifference = amountDifference;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Boolean getCorrection() {
        return correction;
    }

    public void setCorrection(Boolean correction) {
        this.correction = correction;
    }

    public Boolean getDiscount() {
        return discount;
    }

    public void setDiscount(Boolean discount) {
        this.discount = discount;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @Override
    public String toString() {
        return "DataCollector{" +
                "id=" + id +
                ", source='" + source + '\'' +
                ", claim='" + claim + '\'' +
                ", transferDate=" + transferDate +
                ", type='" + type + '\'' +
                ", mobileName='" + mobileName + '\'' +
                ", amount=" + amount +
                ", amountApproved=" + amountApproved +
                ", amountDifference=" + amountDifference +
                ", description='" + description + '\'' +
                ", correction=" + correction +
                ", discount=" + discount +
                ", user=" + user +
                '}';
    }
}
