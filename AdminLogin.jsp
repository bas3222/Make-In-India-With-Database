<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Login</title>

<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
   
    <link href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.4.1/css/simple-line-icons.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets - Copy/css/style.css">
</head>
<body>
<jsp:include page="Common_Header.jsp"></jsp:include>
    <div class="registration-form">
        <form action="/Make_In_India/AdminLoginServlet" method="post">
            <div class="form-icon">
                <span><i class="icon icon-user"></i></span>
            </div>
            <div class="form-group">
                <input type="text" class="form-control item" id="username" name="uname" placeholder="Admin" required maxlength="7">
            </div>
            <div class="form-group">
                <input type="password" class="form-control item" id="password" name="psw" placeholder="Password-@Bas#3228" required maxlength="12" minlength="8">
            </div>
            
            <div class="form-group">
                <!-- <a type="button" href="D:\ISM UNIVERSITY\Project\Templet\Day\index.html" target="_blank" class="btn btn-block create-account">Log in</a> -->
                <input type="submit" class="btn btn-block create-account" value="Log in"/>
            </div>
            
           <%
           if(request.getParameter("msg")!=null)
           	out.print("<h3 style='color:blue;'><center>"+request.getParameter("msg")+"</center></h3>");
           
           %>
        </form>

        <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>
        <script src="assets - Copy/js/script.js"></script>
</body>


</html>