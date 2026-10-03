package com.register;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.register.dao.StudentDao;
import com.register.model.StudentLogin;

@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String status = "fail";

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String username = request.getParameter("username");
		String password = request.getParameter("password");

		StudentLogin s1 = new StudentLogin();
		s1.setUsername(username);
		s1.setPassword(password);

		StudentDao sd = new StudentDao();
		status = sd.selectStudentByUser(s1);

		if (status.equals("success")) {

			HttpSession session = request.getSession();
			session.setAttribute("un", username);

			if (username.equals("admin")) {

				RequestDispatcher rd = request.getRequestDispatcher("admin.jsp");
				rd.forward(request, response);

			} else {

				RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
				rd.forward(request, response);
			}

		} else {

			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			rd.forward(request, response);
		}
	}
}
