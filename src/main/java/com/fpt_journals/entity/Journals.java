package com.fpt_journals.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.mapping.Set;

@Entity
@Table(name = "journals")
public class Journals implements Serializable{

	@Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name = "id")
    private int id;
	
	@Column(name = "name")
    private String name;
	
	@Column(name = "img")
    private String img;
	
	
	@ManyToOne
	@JoinColumn(name="journals_id", nullable = false)
	private Articles articles;

	public Journals() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Articles getArticles() {
		return articles;
	}
	
	public void setArticles(Articles articles) {
		this.articles = articles;
	}
	
	
	
	public Journals(int id, String name, String img, Articles articles) {
		super();
		this.id = id;
		this.name = name;
		this.img = img;
		this.articles = articles;
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

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}
	
	
}
