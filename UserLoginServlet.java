package NewPackage;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class UserLoginServlet
 */
public class UserLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserLoginServlet() {
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
			String  uname=request.getParameter("uname");
			String  pwd=request.getParameter("psw");
			
			
			String sql;
			Connection conn=DbClass.getConn();
			sql="select * from Sdetails where uname=? and pwd=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, uname);
			ps.setString(2, pwd);
			
			ResultSet rs=ps.executeQuery();
			HttpSession Session=request.getSession();
			
			if(rs.next())
			{
				Session.setAttribute("sno", rs.getString(1));
				Session.setAttribute("email", rs.getString(3));
				response.sendRedirect("UserMain.jsp");
			}
			else
			{
				response.sendRedirect("Login.jsp?msg=Invalid user or Password");
			}
		} 
		
		catch (Exception e) 
		
		{
			e.printStackTrace();
			out.print("Exception : "+e.getMessage());
		}
		
		
		
	}

}
