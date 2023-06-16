package com.customer;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.connection.DatabaseConnection;

/**
 * Servlet implementation class EditCustomerDetails
 */
@WebServlet("/EditCustomerDetails")
public class EditCustomerDetails extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String pincode = request.getParameter("pincode");
		String phone = request.getParameter("phone");
		HttpSession session = request.getSession();
		try {
			int editCustomerInfo = DatabaseConnection.insertUpdateFromSqlQuery("update tblcustomer set email='" + email + "',address='" + address + "',pin_code='" + pincode
							+ "',phone='" + phone + "' where id='" + session.getAttribute("id") + "'");
			if (editCustomerInfo > 0) {
				String message = "Information edited sucessfully.";
				session.setAttribute("update", message);
				response.sendRedirect("my-own-profile.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
