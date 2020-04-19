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
import javax.persistence.OneToMany;
import javax.persistence.OrderBy;
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
	
	
	@OneToMany(fetch = FetchType.LAZY, mappedBy="articles")
	private Set<Messages_review_author> listMessage;
	
	
	@OneToMany(fetch = FetchType.LAZY, mappedBy="articles")
	private Set<Articles_users> listAUser;
	
	@OneToMany(fetch = FetchType.LAZY, mappedBy="articles")
	private Set<File_attach> fileAttach;
	
	public Set<File_attach> getfileAttach(){
		return fileAttach;
	}
	
	public void setfileAttach(Set<File_attach> fileAttach) {
		this.fileAttach = fileAttach;
	}
	
	public Articles() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Set<Articles_users> getlistAUser(){
		return listAUser;
	}
	
	public void setlistAUser (Set<Articles_users> listAUser) {
		this.listAUser = listAUser;
	}
	
	
	public Set<Messages_review_author> getlistMessage() {
		return listMessage;
	}

	public void setlistMessage(Set<Messages_review_author> listMessage) {
		this.listMessage = listMessage;
	}

	public Articles(int id, String name, int journals_id, Date create_at, int status, Set<Messages_review_author> listMessage, Set<Articles_users> listAUser,Set<File_attach> fileAttach) {
		super();
		this.id = id;
		this.name = name;
		this.journals_id = journals_id;
		this.create_at = create_at;
		this.status = status;
		this.listMessage = listMessage;
		this.listAUser = listAUser;
		this.fileAttach = fileAttach;
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
