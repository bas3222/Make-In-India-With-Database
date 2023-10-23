package NewPackage;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Feedback
 */
public class Feedback extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Feedback() {
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
	
			String  name=request.getParameter("name");
			String  email=request.getParameter("email");
			String  sub=request.getParameter("subject");
			String  message=request.getParameter("message");
			
			String sql;
		Connection conn=DbClass.getConn();
		sql="Insert into Fback(name,Email,subject,Message) values (?,?,?,?)";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, name);
			ps.setString(2, email);
			ps.setString(3, sub);
			ps.setString(4, message);
			
		
			int row=ps.executeUpdate();
			if(row>0)
				response.sendRedirect("Feedbacks.jsp?msg=Message Send Successfully");
			else
				response.sendRedirect("Feedbacks.jsp?msg=Try Again...!");
			 
	} 
		catch (Exception e)
		{
			e.printStackTrace();
			System.out.println("Exception : "+e.getMessage());
		}
		

		
		
	}

}
