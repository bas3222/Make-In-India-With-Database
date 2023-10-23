package NewPackage;
import java.io.*;

import java.sql.*;

import NewPackage.DbClass;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.jasper.tagplugins.jstl.core.Out;

//import com.mysql.jdbc.PreparedStatement;

/**
 * Servlet implementation class Sdetails
 */
public class Sdetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Sdetails() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		PrintWriter out=response.getWriter();
		
		try
		{
//			String url="com.mysql.jdbc.Driver";
//			String dburl="jdbc:mysql://localhost:3306/mydata";
//			String uname1="root";
//			String pwd="";
//			
//			Class.forName(url);
//			Connection conn=DriverManager.getConnection(dburl,uname1,pwd);
//			Statement st=conn.createStatement();
			
			
			
			String  uname=request.getParameter("uname");
			String  email=request.getParameter("email");
			String  pwd=request.getParameter("psw");
			String  phno=request.getParameter("phno");
			String  dob=request.getParameter("dob");
//			out.print(uname);
//			out.print(email);
//			out.print(pwd);
//			out.print(phno);
//			out.print(dob);
			String sql;
		Connection conn=DbClass.getConn();
		sql="Insert into Sdetails(uname,email,pwd,phno,dob) values (?,?,?,?,?)";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, uname);
			ps.setString(2, email);
			ps.setString(3, pwd);
			ps.setString(4, phno);
			ps.setString(5, dob);
		
			int row=ps.executeUpdate();
			if(row>0)
				response.sendRedirect("SignUp.jsp?msg=Signup Successfully");
			else
				response.sendRedirect("SignUp.jsp?msg=Try Again...!");
			 
	} 
		catch (Exception e)
		{
			e.printStackTrace();
			System.out.println("Exception : "+e.getMessage());
		}
		
	}

}
