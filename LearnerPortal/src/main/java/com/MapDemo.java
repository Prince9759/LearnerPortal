package com;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;


public class MapDemo extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		Classess c1 = new Classess();
		c1.setCId(0);
		c1.setCname("8- Class");
		
		Classess c2   =new Classess();
		c2.setCId(1);
		c2.setCname("9-Class");
		
		Student s1  = new Student();
		s1.setSId(121);
		s1.setSname("Ramu");
		s1.setclasss(c1);
		
		Student s2 = new Student();
		s2.setSId(122);
		s2.setSname("shyam");
		s2.setclasss(c1);
		
		Student s3  = new Student();
		s3.setSId(123);
		s3.setSname("pavan");
		s3.setclasss(c2);
		
		Student s4 = new Student();
		s4.setSId(124);
		s4.setSname("rakesh");
		s4.setclasss(c2);
		
		Subject su = new Subject();
		su.setSbid(455);
		su.setSbName("English");
		Subject su1 = new Subject();
		su1.setSbid(456);
		su1.setSbName("Hindi");
		
		
		List<Student> SList1 = new ArrayList<>();
		SList1.add(s2);
		SList1.add(s1);

		List<Student> SList2 = new ArrayList<>();
		SList2.add(s3);
		SList2.add(s4);
		
		
		
		List<Subject> SubList = new ArrayList<>();
		SubList.add(su1);
		SubList.add(su);
		
		su.setStu(SList1);
		su1.setStu(SList2);
		s1.setSub(SubList);
		s2.setSub(SubList);
		s3.setSub(SubList);
		s4.setSub(SubList);
		c1.setStu(SList1);
		c2.setStu(SList2);
		
		
		Teacher t1 = new Teacher();
		t1.setTid(154);
		 t1.setTname("harish");
		 Teacher t2 = new Teacher();
		 t2.setTid(155);
		 t2.setTname("Tanesh");
		 List<Teacher> tea = new ArrayList<>();
		 tea.add(t1);
		 tea.add(t2);
		 
		 t1.setStu(SList1);
		 t2.setStu(SList2);

		 s1.setTea(tea);
		 s2.setTea(tea);
		 s3.setTea(tea);
		 s4.setTea(tea);
		 
		su1.setTea(tea);
		su.setTea(tea);
		
		t1.setSub(SubList);
		t2.setSub(SubList);
		
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		session.save(c1);
		session.save(c2);
		session.save(s1);
		session.save(s2);
		session.save(t1);
		session.save(t2);
		session.getTransaction().commit();
		PrintWriter out  =response.getWriter();
//		 Classess c = (Classess)session.get(Classess.class,0);
//		  out.println(c.getCname());
//		  for(Student s : c.getStu()) 
//          {
//          	out.println(s.getSname());
//          }
//		
		RequestDispatcher requestDispatcher;
		  requestDispatcher=request.getRequestDispatcher("Login.jsp");
	     requestDispatcher.forward(request, response);
		
		
	}}