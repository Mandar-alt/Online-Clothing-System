package com.customer;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.connection.DatabaseConnection;

import java.sql.*;
/**
 * Servlet implementation class AddFeedback
 */
@WebServlet("/AddFeedback")
public class AddFeedback extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int fid = 0;
		String customerName = request.getParameter("cname");
		String feedback = request.getParameter("feedback");
		double rating = Double.parseDouble(request.getParameter("rating"));
		System.out.println("Ratings "+rating);
		HttpSession hs = request.getSession();

		try {
			
			int addQuestion = DatabaseConnection.insertUpdateFromSqlQuery("insert into tblfeedback(fid,cname,feedback,ratings)values('"+fid+"','" +customerName+ "','" + feedback + "','" + rating + "')");
			if (addQuestion > 0) {
				String message = "Feedback submitted successfully.";
				hs.setAttribute("feedback", message);
				response.sendRedirect("feedback.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
