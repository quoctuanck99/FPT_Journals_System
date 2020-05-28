package com.fpt.paper.model;

import lombok.Data;

import javax.persistence.*;
import java.util.Date;

@Data
@Entity
@Table(name = "cdv_regist_get_news")
public class RegisterGetNews {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id", nullable = false)
    private String id;

    @Column(name="email", nullable = false)
    private String email;

    @Column(name="date_regist")
    private Date date_regist;

    public RegisterGetNews() {
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Date getDate_regist() {
        return date_regist;
    }

    public void setDate_regist(Date date_regist) {
        this.date_regist = date_regist;
    }
}
