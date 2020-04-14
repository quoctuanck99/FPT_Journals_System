package com.fpt_journals.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "users_roles")
public class Users_roles implements Serializable{

	@Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name = "id")
    private int id;
	
	@Column(name = "users_id")
    private int users_id;
	
	@Column(name = "roles_id")
    private int roles_id;

	public Users_roles() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Users_roles(int id, int users_id, int roles_id) {
		super();
		this.id = id;
		this.users_id = users_id;
		this.roles_id = roles_id;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getUsers_id() {
		return users_id;
	}

	public void setUsers_id(int users_id) {
		this.users_id = users_id;
	}

	public int getRoles_id() {
		return roles_id;
	}

	public void setRoles_id(int roles_id) {
		this.roles_id = roles_id;
	}
	
	
}
