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
@Table(name = "news")
public class News implements Serializable{

	@Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name = "id")
    private int id;
	
	@Column(name = "title")
    private String title;
	
	@Column(name = "content")
    private String content;
	
	@Column(name = "create_at")
    private Date create_at;
	
	@Column(name = "create_by")
    private int create_by;

	public News() {
		super();
		// TODO Auto-generated constructor stub
	}

	public News(int id, String title, String content, Date create_at, int create_by) {
		super();
		this.id = id;
		this.title = title;
		this.content = content;
		this.create_at = create_at;
		this.create_by = create_by;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getCreate_at() {
		return create_at;
	}

	public void setCreate_at(Date create_at) {
		this.create_at = create_at;
	}

	public int getCreate_by() {
		return create_by;
	}

	public void setCreate_by(int create_by) {
		this.create_by = create_by;
	}
	
	
}
