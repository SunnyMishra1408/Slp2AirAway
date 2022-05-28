package com.flyAway.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/changePassword")
public class ChangePassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ChangePassword() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String newPassword =(String) request.getParameter("npsw");
		String confirmPassword = (String)request.getParameter("cpsw");
		if(newPassword.equals(confirmPassword)) {
			LoginServlet.password = newPassword;
			HttpSession session = request.getSession();
			session.setAttribute("message", "Password Changed , please login");
			response.sendRedirect("loginFail.jsp");
		}else {
			PrintWriter out = response.getWriter();
			RequestDispatcher rd = request.getRequestDispatcher("passwordChange.jsp");
			rd.include(request, response);
		  	out.println("<center><span style='color:red;margin-left : 5em'>new password and confirm password doesn't match ! try again.</span></center>");
		}
	}

}
