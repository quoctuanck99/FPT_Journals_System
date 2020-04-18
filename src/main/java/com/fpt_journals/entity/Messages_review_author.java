package com.fpt_journals.entity;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "messages_review_author")
public class Messages_review_author implements Serializable{
	
	@Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name = "id")
    private int id;
	
	@Column(name = "articles_id")
    private int articles_id;
	
	@Column(name = "messages_from")
    private int messages_from;
	
	@Column(name = "create_at")
    private Date create_at;
	
	@ManyToOne
	@JoinColumn(name = "article_id", nullable = false)
	private Articles articles;


	public Messages_review_author() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	public Articles getArticles() {
		return articles;
	}
	
	public void setArticles(Articles articles) {
	this.articles= articles;
	
	}


	public Messages_review_author(int id, int articles_id, int messages_from, Date create_at, Articles articles) {
		super();
		this.id = id;
		this.articles_id = articles_id;
		this.messages_from = messages_from;
		this.create_at = create_at;
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

	public int getMessages_from() {
		return messages_from;
	}

	public void setMessages_from(int messages_from) {
		this.messages_from = messages_from;
	}

	public Date getCreate_at() {
		return create_at;
	}

	public void setCreate_at(Date create_at) {
		this.create_at = create_at;
	}
	
	

}
