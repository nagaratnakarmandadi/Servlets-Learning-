package com.register.dao;

import java.util.List;

import com.register.model.Student;
import com.register.model.StudentLogin;

public interface StudentDaoInterface {

	public String insertUser(Student s);

	public String selectStudentByUser(StudentLogin s1);

	public List<Student> getAllStudents();

	public String updateStudent(Student s);

	public String deleteStudent(String username);

	public Student getStudentByUsername(String username);
}