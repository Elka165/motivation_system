package com.ibis.model;


import javax.persistence.*;
import java.time.LocalDate;
import java.time.LocalDateTime;


@Entity
@Table(name = "SM_UPRAWNIENIA_AKCEPT")

public class Registration {
    private int id;
    private String imie;
    private String nazwisko;
    private String nazwiskoImie;
    private String login;
    private LocalDate dataWyslania;
    private String rodzajUprawnien;

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column(name = "Id")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }


    @Column(name = "Imie")
    public String getImie() {
        return imie;
    }

    public void setImie(String imie) {
        this.imie = imie;
    }


    @Column(name = "Nazwisko")
    public String getNazwisko() {
        return nazwisko;
    }

    public void setNazwisko(String nazwisko) {
        this.nazwisko = nazwisko;
    }


    @Column(name = "Nazwisko_Imie")
    public String getNazwiskoImie() {
        return nazwiskoImie;
    }

    public void setNazwiskoImie(String nazwiskoImie) {
        this.nazwiskoImie = nazwiskoImie;
    }


    @Column(name = "login")
    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }


    @Column(name = "Data_wyslania")
    public LocalDate getDataWyslania() {
        return dataWyslania;
    }

    public void setDataWyslania(LocalDate dataWyslania) {
        this.dataWyslania = dataWyslania;
    }

    @Column(name = "Rodzaj_Uprawnien")
    public String getRodzajUprawnien() {
        return rodzajUprawnien;
    }

    public void setRodzajUprawnien(String rodzajUprawnien) {
        this.rodzajUprawnien = rodzajUprawnien;
    }

    @Override
    public String toString() {
        return "Registration{" +
                "id=" + id +
                ", imie='" + imie + '\'' +
                ", nazwisko='" + nazwisko + '\'' +
                ", nazwiskoImie='" + nazwiskoImie + '\'' +
                ", login='" + login + '\'' +
                ", dataWyslania=" + dataWyslania +
                ", rodzajUprawnien='" + rodzajUprawnien + '\'' +
                '}';
    }
}
