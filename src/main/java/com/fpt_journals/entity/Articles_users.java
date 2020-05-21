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

@Entity
@Table(name = "articles_users")
public class Articles_users implements Serializable{

	@Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name = "id")
    private int id;
	
	@Column(name = "articles_id")
    private int articles_id;
	
	@Column(name = "author_id")
    private int author_id;
	
	@Column(name = "review_id")
    private int review_id;
	
	@ManyToOne
	@JoinColumn(name="article_id", nullable = false)
	private Articles articles;
	

	public Articles_users() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Articles getArticles() {
		return articles;
	}
	
	public void setArticles(Articles articles) {
	this.articles= articles;
	
	}

	public Articles_users(int id, int articles_id, int author_id, int review_id, Articles articles) {
		super();
		this.id = id;
		this.articles_id = articles_id;
		this.author_id = author_id;
		this.review_id = review_id;
		this.articles = articles;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getArticles_id() {
		return articles_id;
	}

	public void setArticles_id(int articles_id) {
		this.articles_id = articles_id;
	}

	public int getAuthor_id() {
		return author_id;
	}

	public void setAuthor_id(int author_id) {
		this.author_id = author_id;
	}

	public int getReview_id() {
		return review_id;
	}

	public void setReview_id(int review_id) {
		this.review_id = review_id;
	}
	
	
}
