package com.fpt_journals.entity;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "articles")
public class Articles implements Serializable{
	
	@Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name = "id")
    private int id;

	@Column(name = "name")
    private String name;
	
	@Column(name = "journals_id")
    private int journals_id;
	
	@Column(name = "create_at")
    private Date create_at;
	
	@Column(name = "status")
    private int status;

	public Articles() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Articles(int id, String name, int journals_id, Date create_at, int status) {
		super();
		this.id = id;
		this.name = name;
		this.journals_id = journals_id;
		this.create_at = create_at;
		this.status = status;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getJournals_id() {
		return journals_id;
	}

	public void setJournals_id(int journals_id) {
		this.journals_id = journals_id;
	}

	public Date getCreate_at() {
		return create_at;
	}

	public void setCreate_at(Date create_at) {
		this.create_at = create_at;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}
	
	
	
}
