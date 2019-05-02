import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.Random;
import AccoutJ.*;

 // Servlet implementation class addtestservlet
 
@WebServlet("/addEmployee")
public class addEmployee extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    // @see HttpServlet#HttpServlet()
    
    public addEmployee() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	//  @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	// @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		
		response.setContentType("text/html");
        PrintWriter out = response.getWriter();
		
		try {

			CreateEmployeeACC empACCOUNT = new CreateEmployeeACC();

			empACCOUNT.setName(request.getParameter("fullname"));
			empACCOUNT.setInitials(request.getParameter("nameWithInitials"));
			empACCOUNT.setNIC(request.getParameter("NICno"));
            empACCOUNT.setAddress(request.getParameter("address"));
            empACCOUNT.setCity(request.getParameter("city"));
            empACCOUNT.setBday(request.getParameter("birthday"));
            empACCOUNT.setGender(request.getParameter("gender"));
            empACCOUNT.setContact(Integer.parseInt(request.getParameter("contact")));
            empACCOUNT.setPcode(Integer.parseInt(requst.getParameter("pcode")));
            empACCOUNT.setEmail(request.getParameter("email"));
            empACCOUNT.setPassword(request.getParameter("password"));
			empACCOUNT.setCreateDate();
			empACCOUNT.createUserID();
			empACCOUNT.updateDB();

			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Bank_app","root","");
			Statement st = conn.createStatement();
			
            String sql = "INSERT INTO xxxxx VALUES ('"+CusID+"', '"+fullName+"', '"+Initials+"', '"+NIC+"', '"+Address+"','"+City+"', '"+Pcode+"','"+Bday+"', '"+Gender+"', '"+Contact+"', '"+Email+"', '"+Password+"', '"+CreateDate+"', '"+AccNo+"')";
					
			st.executeUpdate(sql);
			out.println("Servlet file working and added some data to database");
			
		}catch(Exception e) {
			out.print(e.getMessage());
		
		}

		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("");
		dispatcher.forward(request, response);
		
	}

}



		