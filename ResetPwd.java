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
public class ResetPwd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ResetPwd() {
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
			out.print(uname);
			out.print(pwd);
		Connection conn=DbClass.getConn();
		sql="update Sdetails set pwd='"+pwd+"' where uname='"+uname+"'";
		out.print("Sql : "+sql);
			//PreparedStatement ps=conn.prepareStatement(sql);
			//ps.setString(1, pwd);
			//ps.setString(2, uname);
		Statement st=conn.createStatement();
			int row=st.executeUpdate(sql);
			if(row>0)
				response.sendRedirect("ResetPwd.jsp?msg=Reseted Successfully");
			else
				response.sendRedirect("ResetPwd.jsp?msg=Try Again...!");
			 
	} 
		catch (Exception e)
		{
			e.printStackTrace();
			out.println("Exception : "+e.getMessage());
			System.out.println("Exception : "+e.getMessage());
		}
		
	}

}
