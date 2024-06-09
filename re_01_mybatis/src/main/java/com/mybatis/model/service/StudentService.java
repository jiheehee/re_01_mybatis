package com.mybatis.model.service;

import static com.mybatis.common.SessionTemplate.getSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.model.dao.StudentDao;
import com.mybatis.model.dto.Student;

public class StudentService {
	
	private StudentDao dao=new StudentDao();

	public int insertStudent() {
		SqlSession session=getSession();
		int result=dao.insertStudent(session); //int는 insert delete update의 반환형이 int여서 
		if(result>0) session.commit(); 
		session.close();
		return result;		
	}
	
	public int insertStudentByName(String name) {
		SqlSession session=getSession();
		int result=dao.insertStudentByName(session,name);  
		if(result>0) session.commit(); 
		session.close();
		return result;		
	}
	
	public int insertStudentAll(Student s) {		
		SqlSession session=getSession();
		int result=dao.insertStudentAll(session,s);
		if(result>0) session.commit();
		session.close();
		return result;				
	}
	
	public Student selectStudentByNo(int no) {
		SqlSession session=getSession();
		Student s=dao.selectStudentByNo(session, no);
		session.close();
		return s;
		
	}
	
	
	
	
}
