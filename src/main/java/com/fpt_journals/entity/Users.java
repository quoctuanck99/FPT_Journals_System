package com.fpt_journals.entity;

import java.io.Serializable;
import java.sql.Date;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OrderBy;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity(name = "Users")
@Table(name = "users")
public class Users implements Serializable{

	@Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name = "id")
    private int id;
	
	@Column(name = "username")
    private String username;
	
	@Column(name = "password")
    private String password;
	
	@Column(name = "create_at")
	//@Temporal(value = TemporalType.TIMESTAMP)
    private Date create_at;
	
	@Column(name = "isON")
    private boolean isON;
	
	@Column(name = "full_name")
    private String full_name;
	
	@Column(name = "dob")
	//@Temporal(value = TemporalType.TIMESTAMP)
    private Date dob;
	
	@Column(name = "email")
    private String email;
	
	@Column(name = "phone")
    private int phone;
	
	@Column(name = "address")
    private String address;
	
	@Column(name = "position")
	//@Temporal(value = TemporalType.TIMESTAMP)
    private Date position;
	
	@ManyToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    @JoinTable(name = "users_roles", 
        joinColumns = { @JoinColumn(name = "users_id", nullable = false, updatable = false) }, 
        inverseJoinColumns = { @JoinColumn(name = "roles_id", nullable = false, updatable = false) })
    @OrderBy("id")
    private Set<Roles> roles;

	public Users() {
		super();	
	}

	public Users(int id, String username, String password, Date create_at, boolean isON, String full_name, Date dob,
			String email, int phone, String address, Date position, Set<Roles> roles) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.create_at = create_at;
		this.isON = isON;
		this.full_name = full_name;
		this.dob = dob;
		this.email = email;
		this.phone = phone;
		this.address = address;
		this.position = position;
		this.roles = roles;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
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

	public Date getCreate_at() {
		return create_at;
	}

	public void setCreate_at(Date create_at) {
		this.create_at = create_at;
	}

	public boolean isON() {
		return isON;
	}

	public void setON(boolean isON) {
		this.isON = isON;
	}

	public String getFull_name() {
		return full_name;
	}

	public void setFull_name(String full_name) {
		this.full_name = full_name;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getPhone() {
		return phone;
	}

	public void setPhone(int phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Date getPosition() {
		return position;
	}

	public void setPosition(Date position) {
		this.position = position;
	}

	public Set<Roles> getRoles() {
		return roles;
	}

	public void setRoles(Set<Roles> roles) {
		this.roles = roles;
	}
	
	

		
}
