<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
    <%@page import="NewPackage.DbClass"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Feedback view</title>
<style type="text/css">
table,td,th
{
	border: 2px solid black;
	padding: 5px;
	text-align: center;
	border-collapse: collapse;
}
table
{
margin:50px;
width: 80%;
position: absolute;
top:150px;
}
th
{
background: orange;
}
</style>

</head>
<body>
<jsp:include page="AdminHeader.jsp"></jsp:include>
<%
try
{
    Connection conn=DbClass.getConn();
    String sql="Select * from fback ";
    
    Statement st= conn.createStatement();
    ResultSet rs=st.executeQuery(sql);
    ResultSetMetaData md=rs.getMetaData();
    
    
    int count=md.getColumnCount();
    out.print("<table>");
    out.print("<tr>");
    for(int i=1;i<=count;i++)
    {
    	
    	out.print("<th>"+md.getColumnName(i)+"</th>");
    }
    
    out.print("</tr>");
    while(rs.next())
    {
    	out.print("<tr>");
    	for(int x=1;x<=count;x++)
    	{
    	out.print("<td>"+rs.getString(x)+"</td>");
    	}
    	out.print("</tr>");
    }
    out.print("</table>");
}
catch(Exception e)
{
	e.printStackTrace();
	out.print("Exception : "+e.getMessage());
}



%>
</body>
</html>