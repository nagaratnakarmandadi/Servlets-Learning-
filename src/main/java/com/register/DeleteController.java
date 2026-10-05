package com.register;

import java.io.IOException;

import com.register.dao.StudentDao;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/DeleteController")
public class DeleteController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String username = request.getParameter("username");

		StudentDao sd = new StudentDao();

		sd.deleteStudent(username);

		response.sendRedirect(request.getContextPath() + "/AdminController");
	}
}