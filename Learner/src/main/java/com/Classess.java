package com;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;



@Entity
public class Classess
{
	@Id
	@Column(name="class_id")
	private int CId;
	
	private String Cname;
	@OneToMany (mappedBy="classs",fetch=FetchType.LAZY,cascade = CascadeType.ALL)
	private List<Student> stu;
	
	
	public Classess() {
		super();
		// TODO Auto-generated constructor stub
	}


	public int getCId() {
		return CId;
	}


	public void setCId(int cId) {
		CId = cId;
	}


	public String getCname() {
		return Cname;
	}


	public void setCname(String cname) {
		Cname = cname;
	}


	public List<Student> getStu() {
		return stu;
	}


	public void setStu(List<Student> stu) {
		this.stu = stu;
	}
	
}