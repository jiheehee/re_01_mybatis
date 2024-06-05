package com.mybatis.model.dao;

import org.apache.ibatis.session.SqlSession;

public class StudentDao {
	
	
	public int insertStudent(SqlSession session) {
		//statement파라미터에 전달하는 값 -> mapper,sql문 정보 
		
		int result=session.insert("student.insertStudent"); //insert의 반환형은 int 
		return result;		
	}
	
	public int insertStudentByName(SqlSession session, String name) {
		
		int result=session.insert("student.insertStudentByName",name);
		//insertstudent.do
		return result;
	}
	
	

	
	
	
	
}
