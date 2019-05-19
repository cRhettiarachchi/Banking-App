<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import="com.worldbank.dao.*, javax.servlet.ServletException, java.sql.ResultSet, java.io.*,java.util.*, javax.servlet.*,java.text.*" %> 
    
    
    <!-- Check whether session is set -->

    <%
    	if(session.getAttribute("bankID") == null ) {
    		response.sendRedirect("index.jsp");
    	} else if (session.getAttribute("role") == "a") {
    		response.sendRedirect("../admin/customers.jsp");
    	}
    %>
    
    <!-- session check ends -->

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>World Bank | Banker</title>
    
    <!-- Google fonts Montserrat 200, 400, 600, 700 -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:200,400,600,700" rel="stylesheet">

    <!-- Bootstrap CSS Framework 4.3.1 -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <!-- Styles -->
    <link  rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/dashboard.css">
    <link rel="stylesheet" href="../css/admin/customers.css">

</head>
<body>
    <div class="dashboard">
        <div class="header">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="header-icon-wrapper">
                            <form action="../LogoutServlet" method="POST">
		                    	<a href="settings.jsp"><img src="../assets/icons/icon_settings.png" alt="Settings Icon"></a>
		                    	<button type="submit" class="btn-logout"></button>
                    		</form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="section">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-3 col-sidepanel">
                        <div class="sidepanel">
                            <div class="sidepanel-wrapper">
                                <div class="userprofile-wrapper">
                                    <h6>Administrator <br>${userFirstName} ${userLastName}</h6>
                                    <p>Monday, 22 April 2019</p>
                                </div>
                            
                                <div class="sidepanel-nav">
                                    <h6>BANKING OPTIONS</h6>
                                    <ul>
                                        <li><a href="dashboard.jsp">
                                            <img src="../assets/icons/icon_dashboard.png" alt="Dashboard Icon">
                                            Dashboard
                                        </a></li>
                                        <li><a href="transactions.jsp">
                                            <img src="../assets/icons/icon_admin_transaction.png" alt="Transactions Admin Icon">
                                            Transactions
                                        </a></li>
                                        <li class="active"><a href="customers.jsp">
                                            <img src="../assets/icons/icon_admin_customers.png" alt="Customers Admin Icon">
                                            Customers
                                        </a></li>
                                        <li><a href="support.jsp">
                                            <img src="../assets/icons/icon_admin_support.png" alt="Support Admin Icon">
                                            Support
                                        </a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-9 col-dash-body">

                        <div class="dash-header">
                            <img src="../assets/icons/icon_dashboard_admin_transaction.png" alt="Transactions Header Icon">
                            <h6>CUSTOMERS</h6>
                        </div>

                        <div class="row dash-body">
                            <div class="col-md-12">
                                <button class="btn-orange btn-add-user" onclick="location.href='add-customer.jsp' ">ADD CUSTOMER</button>
                            </div>
                            <div class="col-md-12">
                                <div class="transactions">
                                    <table>
                                        <tr>
                                            <th>Customer ID</th>
                                            <th>Name</th>
                                            <th>Account Number</th>
                                            <th>Last logged in</th>
                                            <th>Actions</th>
                                            <th>Balance</th>
                                        </tr>
                                        
                                        <!-- Pull customer details  -->
                                        <%
                                        	DisplayCustomer displayCustomer = new DisplayCustomer();
                                        	ResultSet rslt = displayCustomer.Display();
                                        	while(rslt.next()) {
                                        		String customerID = rslt.getString("custID");
                                        		String fullName = rslt.getString("fullName");
                                        		String accNo = (String)rslt.getString("accountNumber");
                                        		String lastLoggnedIn = (String)rslt.getString("createDate");
                                        		int balance = rslt.getInt("bankBalance");
                                        %>
                                        
                                        <tr>
                                            <td><%= customerID %></td>
                                            <td><%= fullName %></td>
                                            <td><%= accNo %></td>
                                            <td><%= lastLoggnedIn %></td>
                                            <td><%= balance %></td>
                                            <td>
                                                <a href="edit-customer.jsp"><img src="../assets/icons/icon_admin_edit.png" alt="Edit Icon"></a>
                                                <form action="../DeleteCustomerServlet" method="POST">
                                                	<input type="hidden" value="<%= customerID %>" name="deleteCusID">
                                                	<button type="submit" class="btn-delete" onClick="return confirm('Are you sure you want to delete this user?');"></button>
                                                </form>
                                            </td>
                                        </tr>
                                        
                                        <%} %>
                                    </table>                        
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>