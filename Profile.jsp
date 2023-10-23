
<%@page import="NewPackage.DbClass"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Profile Details</title>

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
margin:150px;
width: 180px;
position: absolute;

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
    String uid=session.getAttribute("sno").toString();
    String sql="Select * from Sdetails where sno="+uid;
    
    Statement st= conn.createStatement();
    ResultSet rs=st.executeQuery(sql);
    ResultSetMetaData md=rs.getMetaData();
    
    
    int count=md.getColumnCount();
    out.print("<table>");
    if(rs.next())
    {
    	for(int x=2;x<=md.getColumnCount();x++)
    	{
    out.print("<tr>");
    if(!md.getColumnName(x).equals("pwd"))
    {
    	out.print("<th>"+md.getColumnName(x)+"</th>");
    	out.print("<td>"+rs.getString(x)+"</td>");
    }
    out.print("</tr>");
    	}
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