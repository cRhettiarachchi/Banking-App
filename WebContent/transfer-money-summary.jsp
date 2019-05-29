<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<!-- Check whether session is set -->

    <%
    	if(session.getAttribute("bankID") == null ) {
    		response.sendRedirect("index.jsp");
    	}
    %>
    
    <!-- session check ends -->

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>World Bank | Dashboard</title>
    
    <!-- Google fonts Montserrat 200, 400, 600 -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:200,400,600" rel="stylesheet">

    <!-- Fontawesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">

    <!-- Bootstrap CSS Framework 4.3.1 -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <!-- Styles -->
    <link  rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/dashboard.css">
    <link rel = "stylesheet" href = "../css/dashboard/transfer-money.css">
</head>
<body>
    
<div class="header">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="header-icon-wrapper">
                	<form action="LogoutServlet" method="POST">
                		<a href="settings.jsp"><img src="assets/icons/icon_settings.png" alt="Settings Icon"></a>
                		<button type="submit" class="btn-logout"></button>
                	</form>ogout.png" alt="Logout Icon"></a>
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
                            <h6>Shafkhan Mohamed</h6>
                            <p>Friday, 12 April 2019</p>
                        </div>
                
                        <div class="sidepanel-nav">
                            <h6>BANKING OPTIONS</h6>
                            <ul>
                                <li><a href="dashboard.html">
                                    <img src="../assets/icons/icon_dashboard.png" alt="Dashboard Icon">
                                    Dashboard
                                </a></li>
                            </ul>
                        </div>
                
                        <div class="sidepanel-nav">
                            <h6>ACTIONS</h6>
                            <ul>
                                <li class="active"><a href="transfer-money.html">
                                    <img src="../assets/icons/icon_transfer_money.png" alt="Transfer Monoey Icon">
                                    Transfer Money
                                </a></li>
                                <li><a href="make-a-payment.html">
                                    <img src="../assets/icons/icon_make_a_payment.png" alt="Make a Payment Icon">
                                    Make a Payment
                                </a></li>
                            </ul>
                        </div>
                
                        <div class="sidepanel-nav">
                            <h6>SUPPORT</h6>
                            <ul>
                                <li><a href="contact-us.html">
                                    <img src="../assets/icons/icon_contact_us.png" alt="Contact Us Icon">
                                    Contact Us
                                </a></li>
                                <li><a href="help.html">
                                    <img src="../assets/icons/icon_help.png" alt="Help Icon">
                                    Help
                                </a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-9 col-dash-body">
                <div class="dash-header">
                    <img src="../assets/icons/icon_dashboard_header.png" alt="Dashboard Header Icon">
                    <h6>Transfer Money</h6>
                </div>
                <div class="dash-body">
                    <h6 class="dash-title">Effective Available Balance</h6>
                    <h3>321,432.<span>90 LKR</span></h3>

                    <h6 class="dash-title">TRANSACTION SUMMARY</h6>
                    <div class="transaction-summary">
                        <div class="transaction-summary-element">
                            <p class="title">Transfer Amount : </p>
                            <span>1200.00</span>
                        </div>
                            
                        <div class="transaction-summary-element">
                            <p class="title">Sender Remraks : </p>
                            <span>Some remarks</span>
                        </div>

                        <div class="transaction-summary-element">
                            <p class="title">Beneficiary Remraks : </p>
                            <span>Some remarks</span>
                        </div>

                        <div class="transaction-summary-element">
                            <p class="title">Account Number : </p>
                            <span>4321432143214321</span>
                        </div>
                    </div>

                    <form action="transfer-money.html" class="transfer-form transfer-confirm">
                        <h6 class="dash-title">CONFIRM TRANSACTION</h6>
                        <div class="form-element-wrapper">
                            <p>Banking ID</p>
                            <input type="text">
                        </div>
                            
                        <div class="form-element-wrapper">
                            <p>Password</p>
                            <input type="password">
                        </div>

                        <button type="submit" class="btn-orange">CONFIRM</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
    
</body>
</html>