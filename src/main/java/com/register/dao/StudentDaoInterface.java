package com.register.dao;

import com.register.model.Student;
import com.register.model.StudentLogin;

public interface StudentDaoInterface {
	public String insertUser(Student s);

	public String selectStudentByUser(StudentLogin s1);

}
