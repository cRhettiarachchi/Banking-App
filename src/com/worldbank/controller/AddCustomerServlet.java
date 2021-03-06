package com.worldbank.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.worldbank.dao.CreateCustomerAcc;

/**
 * Servlet implementation class AddCustomer
 */
@WebServlet("/AddCustomerServlet")
public class AddCustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddCustomerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		response.setContentType("text/html");
        PrintWriter out = response.getWriter();

		
		try {
		
			CreateCustomerAcc cusACCOUNT = new CreateCustomerAcc();

			cusACCOUNT.setName(request.getParameter("fullname"));
			cusACCOUNT.setInitials(request.getParameter("nameWithInitials"));
			cusACCOUNT.setNIC(request.getParameter("NICno"));
            cusACCOUNT.setAddress(request.getParameter("address"));
            cusACCOUNT.setCity(request.getParameter("city"));
            cusACCOUNT.setBday(request.getParameter("birthday"));
            cusACCOUNT.setGender(request.getParameter("gender"));
            cusACCOUNT.setContact(Integer.parseInt(request.getParameter("contact")));
            cusACCOUNT.setPcode(Integer.parseInt(request.getParameter("pcode")));
            cusACCOUNT.setEmail(request.getParameter("email"));
            cusACCOUNT.setPassword(request.getParameter("password"));
			cusACCOUNT.setCreateDate();
			cusACCOUNT.createUserID();
			cusACCOUNT.createAccNo();
			cusACCOUNT.updateDB();

			response.sendRedirect("admin/customers.jsp");
			
		} catch(Exception e) {
			out.print(e.getMessage());
		
		}
	}

}
