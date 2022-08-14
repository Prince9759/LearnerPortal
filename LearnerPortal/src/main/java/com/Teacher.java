package com;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToMany;

@Entity
public class Teacher 
{
	@Id
     private int Tid;
     
     private String Tname;
     @ManyToMany(mappedBy="tea",cascade = CascadeType.ALL)
     private List<Student> stu;
     @ManyToMany(mappedBy="tea",cascade=CascadeType.ALL)
     private List<Subject> sub;
	public List<Subject> getSub() {
		return sub;
	}
	public void setSub(List<Subject> sub) {
		this.sub = sub;
	}
	public int getTid() {
		return Tid;
	}
	public void setTid(int tid) {
		Tid = tid;
	}
	public String getTname() {
		return Tname;
	}
	public void setTname(String tname) {
		Tname = tname;
	}
	public List<Student> getStu() {
		return stu;
	}
	public void setStu(List<Student> stu) {
		this.stu = stu;
	}
     
     
     
}
