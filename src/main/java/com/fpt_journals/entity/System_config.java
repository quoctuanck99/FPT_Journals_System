package com.fpt_journals.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "system_config")
public class System_config implements Serializable {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;
	
	@Column(name = "introduce")
	private String introduce;

	@Column(name = "email_contact")
	private String email_contact;

	@Column(name = "phone_contact")
	private int phone_contact;

	@Column(name = "address")
	private String address;

	@Column(name = "logo_img")
	private String logo_img;

	@Column(name = "language")
	private String language;

	public System_config() {
		super();
		// TODO Auto-generated constructor stub
	}

	public System_config(String introduce, String email_contact, int phone_contact, String address, String logo_img,
			String language) {
		super();
		this.introduce = introduce;
		this.email_contact = email_contact;
		this.phone_contact = phone_contact;
		this.address = address;
		this.logo_img = logo_img;
		this.language = language;
	}

	public String getIntroduce() {
		return introduce;
	}

	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}

	public String getEmail_contact() {
		return email_contact;
	}

	public void setEmail_contact(String email_contact) {
		this.email_contact = email_contact;
	}

	public int getPhone_contact() {
		return phone_contact;
	}

	public void setPhone_contact(int phone_contact) {
		this.phone_contact = phone_contact;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getLogo_img() {
		return logo_img;
	}

	public void setLogo_img(String logo_img) {
		this.logo_img = logo_img;
	}

	public String getLanguage() {
		return language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}

}
