<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page import="com.Banking.service.*" %>    
    <%@page import="java.sql.DriverManager" %>
    <%@page import="java.sql.ResultSet" %>
    <%@page import="java.sql.Statement" %>
    <%@page import="java.sql.Connection" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

 <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>World Bank | Admin</title>
    
    <!-- Google fonts Montserrat 200, 400, 600, 700 -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:200,400,600,700" rel="stylesheet">

    <!-- Bootstrap CSS Framework 4.3.1 -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <!-- Styles -->
    <link  rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/dashboard.css">

<title>Support</title>
</head>
<body>
 <div class="dashboard">
        <div class="header">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="header-icon-wrapper">
                            <a href="settings.html"><img src="../assets/icons/icon_settings.png" alt="Settings Icon"></a>
                            <a href="#"><img src="../assets/icons/icon_logout.png" alt="Logout Icon"></a>
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
                                    <h6>Administrator <br>Jon Snow</h6>
                                    <p>Monday, 22 April 2019</p>
                                </div>
                            
                                <div class="sidepanel-nav">
                                    <h6>BANKING OPTIONS</h6>
                                    <ul>
                                        <li><a href="dashboard.html">
                                            <img src="../assets/icons/icon_dashboard.png" alt="Dashboard Icon">
                                            Dashboard
                                        </a></li>
                                        <li><a href="transactions.html">
                                            <img src="../assets/icons/icon_admin_transaction.png" alt="Transactions Admin Icon">
                                            Transactions
                                        </a></li>
                                        <li><a href="customers.html">
                                            <img src="../assets/icons/icon_admin_customers.png" alt="Customers Admin Icon">
                                            Customers
                                        </a></li>
                                        <li class="active"><a href="support.jsp">
                                            <img src="../assets/icons/icon_admin_support.png" alt="Support Admin Icon">
                                            Support
                                        </a></li>
                                    </ul>
                                </div>

                                <div class="sidepanel-nav">
                                    <h6>EMPLOYEE OPTIONS</h6>
                                    <ul>
                                        <li><a href="bankers.html">
                                            <img src="../assets/icons/icon_admin_bankers.png" alt="Bankers Admin Icon">
                                            Bankers
                                        </a></li>
                                        <li><a href="admins.html">
                                            <img src="../assets/icons/icon_admin_admins.png" alt="Admin Icon">
                                            Admins
                                        </a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-9 col-dash-body">

                        <div class="dash-header">
                            <img src="../assets/icons/icon_dashboard_admin_transaction.png" alt="Transactions Header Icon">
                            <h6>Messages</h6>
                        </div>

                        <div class="row dash-body">
                            <div class="col-md-12">
                                <div class="transactions">
                                    <table>
                                        <tr>
                                        	<th>Customer ID</th>
                                            <th>First Name</th>
                                            <th>Last Name</th>
                                            <th>Email</th>
                                            <th>Subject</th>
                                            <th>Date&Time</th>
                                            <th>Actions</th>
                                        </tr>
                                               <%
                                        ContactDao cd = new ContactDao();
                                       
                                		ResultSet rs= cd.DisplayContact();                              
                                    	while(rs.next())
                                    	{
                                    	%>	
                                   
                                        <tr>
                                        <td><%=rs.getString("CustomerId") %> </td>
                                        <td><%=rs.getString(2) %> </td>
                                        <td><%=rs.getString(3) %> </td>
                                        <td><%=rs.getString(4) %> </td>
                                        <td><%=rs.getString(5) %> </td>
                                         <td><%=rs.getString(6) %> </td>
                                         <td>
                                                <a href=""><img src="../assets/icons/icon_admin_edit.png" alt="Edit Icon"></a>
                                                <a href= "../Delete.jsp?d=<%=rs.getString("CustomerId") %>"><img src="../assets/icons/icon_admin_delete.png" alt="Delete Icon"></a>
                                            </td>
                                        </tr>	
                                    	
                                    	<% 
                                    	}
                                    	%>
                                    	 
                                  
                                       
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