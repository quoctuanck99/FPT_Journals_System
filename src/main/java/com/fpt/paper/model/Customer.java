package com.fpt.paper.model;

import lombok.Data;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Collection;
import java.util.Date;
import java.util.List;


@Entity
@Data
@Table(name = "tqc_customer")
public class Customer implements Serializable {

    private static final long serialVersionUID = -3552661732973732446L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID", unique = true, nullable = false)
    private Integer id;

    @Column(name = "USER_NAME", nullable = false, unique = true)
    private String username;

    @Column(name = "PASSWORD", nullable = false, length = 100)
    private String password;
    @Column(name = "EMAIL", length = 100)
    private String email;

    @Column(name = "GEN_DATE")
    private Date gendate;

    @Column(name = "LAST_UPDATE")
    private Date lastUpdate;

    @Column(name = "STATUS", length = 100)
    private Long status;

    @Column(name = "SCAN")
    private Long scan;
    @Column(name = "RESET_DATE")
    private Date resetDate;
    @Column(name="CODE_RESET")
    private String code;

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Date getGendate() {
        return gendate;
    }

    public void setGendate(Date gendate) {
        this.gendate = gendate;
    }

    public Date getLastUpdate() {
        return lastUpdate;
    }

    public void setLastUpdate(Date lastUpdate) {
        this.lastUpdate = lastUpdate;
    }

    public Long getStatus() {
        return status;
    }

    public void setStatus(Long status) {
        this.status = status;
    }

    public Long getScan() {
        return scan;
    }

    public void setScan(Long scan) {
        this.scan = scan;
    }

    public Date getResetDate() {
        return resetDate;
    }

    public void setResetDate(Date resetDate) {
        this.resetDate = resetDate;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }
}
