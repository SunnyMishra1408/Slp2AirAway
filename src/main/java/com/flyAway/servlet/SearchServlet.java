package com.flyAway.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.flyAway.model.Search;

@WebServlet("/searchServlet")
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SearchServlet() {
		super();
	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Search.source = request.getParameter("source");
		Search.destination = request.getParameter("destination");
		Search.date = request.getParameter("date");
		Search.persons = Integer.parseInt(request.getParameter("personCount"));
		if (Search.date.equals("")) {
			PrintWriter out = response.getWriter();
			out.println("Please enter a valid date");
		} else {
			Search.day = getDay(Search.date);
			response.sendRedirect("results.jsp");
		}
	}

	public String getDay(String dateInp) {
		LocalDate dt = LocalDate.parse(dateInp);
		return dt.getDayOfWeek().toString();
	}

}
