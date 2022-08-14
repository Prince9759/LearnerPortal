package com;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;

@Entity
public class Student 
{
	@Id
	@Column(name="student_id")
	private int SId;
	private String Sname;
	@ManyToOne
	private Classess classs;
	@ManyToMany(mappedBy="stu",cascade = CascadeType.ALL)
	private List<Subject> sub;
	@ManyToMany
	private List<Teacher>tea;
	public List<Teacher> getTea() {
		return tea;
	}
	public void setTea(List<Teacher> tea) {
		this.tea = tea;
	}
	public Classess getClasss() {
		return classs;
	}
	public void setClasss(Classess classs) {
		this.classs = classs;
	}
	public List<Subject> getSub() {
		return sub;
	}
	public void setSub(List<Subject> sub) {
		this.sub = sub;
	}

	public int getSId() {
		return SId;
	}
	public void setSId(int sId) {
		SId = sId;
	}
	public String getSname() {
		return Sname;
	}
	public void setSname(String sname) {
		Sname = sname;
	}
	public Classess getclasss() {
		return classs;
	}
	public void setclasss(Classess classs) {
		this.classs = classs;
	}
	

}
