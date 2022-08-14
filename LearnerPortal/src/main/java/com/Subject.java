package com;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
@Entity
public class Subject 
{
	@Id
	private int Sbid;
	private String SbName;
	@ManyToMany
	private List<Student> stu;
	@ManyToMany
	private List<Teacher> tea;
	public List<Teacher> getTea() {
		return tea;
	}
	public void setTea(List<Teacher> tea) {
		this.tea = tea;
	}
	public int getSbid() {
		return Sbid;
	}
	public void setSbid(int sbid) {
		Sbid = sbid;
	}
	public String getSbName() {
		return SbName;
	}
	public void setSbName(String sbName) {
		SbName = sbName;
	}
	public List<Student> getStu() {
		return stu;
	}
	public void setStu(List<Student> stu) {
		this.stu = stu;
	}
	

}
