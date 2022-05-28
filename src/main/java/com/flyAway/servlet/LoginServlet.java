package com.flyAway.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public static String userName = "admin";
	public static String password = "admin";
       
    public LoginServlet() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String uname = request.getParameter("uname");
		String psw = request.getParameter("psw");
		
        HttpSession session = request.getSession();
        session.setAttribute("userName", userName);
        
        if(userName.equals(uname) && password.equals(psw)) {	
        	response.sendRedirect("adminDashboard.jsp");
        }
        else
        {
        	session.setAttribute("message", "Invalid username or password");
        	response.sendRedirect("loginFail.jsp");
        }
		
	}

}
