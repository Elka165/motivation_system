package com.ibis.model;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.time.LocalDate;
import java.util.List;

import static java.util.stream.Collectors.toList;

@Entity
@Table(name = "SM_USER")
public class User {
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column(name = "Id")

    private Long id;

    @Column(name = "Imie")
    @NotNull
    private String name;


    @Column(name = "Nazwisko")
    @NotNull
    private String surname;

    @Column(name = "Nazwisko_Imie")
    @NotNull
    private String surnameAndName;

    @Column(name = "login")
    @NotNull
    private String login;

    @Column(name = "Data_wyslania")
    @NotNull
    private LocalDate sendDate;

    @Column(name = "Rodzaj_Uprawnien")
    @NotNull
    private String typeOfPermission;

    @Column(name="Aktywny")
    private Boolean active;

    @OneToMany(mappedBy = "user", fetch = FetchType.EAGER)
    private List<DataCollector> dataCollectors;

    public User() {
    }

    public User(String name, String surname, String surnameAndName, String login, LocalDate sendDate, String typeOfPermission, Boolean active) {
        this.name = name;
        this.surname = surname;
        this.surnameAndName = surnameAndName;
        this.login = login;
        this.sendDate = sendDate;
        this.typeOfPermission = typeOfPermission;
        this.active = active;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getSurnameAndName() {
        return surnameAndName;
    }

    public void setSurnameAndName(String surnameAndName) {
        this.surnameAndName = surnameAndName;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public LocalDate getSendDate() {
        return sendDate;
    }

    public void setSendDate(LocalDate sendDate) {
        this.sendDate = sendDate;
    }

    public String getTypeOfPermission() {
        return typeOfPermission;
    }

    public void setTypeOfPermission(String typeOfPermission) {
        this.typeOfPermission = typeOfPermission;
    }

    public Boolean getActive() {
        return active;
    }

    public void setActive(Boolean active) {
        this.active = active;
    }

    public List<DataCollector> getDataCollectors() {
        return dataCollectors;
    }

    public void setDataCollectors(List<DataCollector> dataCollectors) {
        this.dataCollectors = dataCollectors;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", surname='" + surname + '\'' +
                ", surnameAndName='" + surnameAndName + '\'' +
                ", login='" + login + '\'' +
                ", sendDate=" + sendDate +
                ", typeOfPermission='" + typeOfPermission + '\'' +
                ", active=" + active +
                ", dataCollectors=" + dataCollectors.stream().map(DataCollector::getId).collect(toList()) +
                '}';
    }
}
