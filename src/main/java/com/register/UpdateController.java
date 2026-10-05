package com.register;

import java.io.IOException;

import com.register.dao.StudentDao;
import com.register.model.Student;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/UpdateStudentController")
public class UpdateController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	// Open Edit Student page
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String username = request.getParameter("username");

		StudentDao sd = new StudentDao();

		Student student = sd.getStudentByUsername(username);

		request.setAttribute("student", student);

		RequestDispatcher rd = request.getRequestDispatcher("editStudent.jsp");

		rd.forward(request, response);
	}

	// Save updated student details
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String username = request.getParameter("username");
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String password = request.getParameter("password");

		Student s = new Student();

		s.setUserName(username);
		s.setFirstName(firstname);
		s.setLastName(lastname);
		s.setPassword(password);

		StudentDao sd = new StudentDao();

		String status = sd.updateStudent(s);

		if (status.equals("success")) {
			response.sendRedirect(request.getContextPath() + "/AdminController");
		} else {
			response.sendRedirect(request.getContextPath() + "/AdminController");
		}
	}
}