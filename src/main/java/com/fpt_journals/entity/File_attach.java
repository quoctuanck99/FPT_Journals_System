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
@Table(name = "file_attach")
public class File_attach implements Serializable{
	
	@Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name = "id")
    private int id;
	
	@Column(name = "file_name")
    private String file_name;
	
	@Column(name = "file_url")
    private String file_url;
	
	@Column(name = "articles_id")
    private int articles_id;
	
	@ManyToOne
	@JoinColumn(name="article_id",nullable=false)
	private Articles articles;
	
	
	

	public File_attach() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Articles getArticles() {
		return articles;
	}
	
	public void setArticles(Articles articles) {
	this.articles= articles;
	
	}

	public File_attach(int id, String file_name, String file_url, int articles_id, Articles articles) {
		super();
		this.id = id;
		this.file_name = file_name;
		this.file_url = file_url;
		this.articles_id = articles_id;
		this.articles = articles;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFile_name() {
		return file_name;
	}

	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}

	public String getFile_url() {
		return file_url;
	}

	public void setFile_url(String file_url) {
		this.file_url = file_url;
	}

	public int getArticles_id() {
		return articles_id;
	}

	public void setArticles_id(int articles_id) {
		this.articles_id = articles_id;
	}
	
	

}
