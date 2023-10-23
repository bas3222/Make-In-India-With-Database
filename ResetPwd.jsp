<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Reset Password</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.4.1/css/simple-line-icons.min.css"
        rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets - Copy/css/style.css">
</head>
<script>
 function fun(x)
 {
    x.style.background="burlywood";
 }


 function myFunction() {
  let x = document.getElementById("username").value;
  document.getElementById("demo").innerHTML = "You User Name : " + x;
}

</script>
<body>
<jsp:include page="Common_Header.jsp"></jsp:include>
    
    <div class="registration-form">
        <form method="post" 
        action="ResetPwd">

            <div class="form-icon">
                <span><i class="icon icon-user"></i></span>
            </div>
            <div class="form-group">
                <input type="password"  class="form-control item" name="uname" id="username" placeholder="Username" required maxlength="7" onfocus="fun(this)" oninput="myFunction()">
                <p id="demo"></p>
            </div>
            <div class="form-group">
                <input type="password" class="form-control item" id="password"
                    name="psw"  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" placeholder="Password" required minlength="8"
                    maxlength="12"  >
            </div>
           

            <div class="form-group">
                <input type="password" class="form-control item" id="password"
                   name="psw" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" placeholder="Confirm Password" required minlength="8"
                    maxlength="12"  onkeyup="check(this)" >
            </div>
            <p id="alert"></p>

            <script>
                var password = document.getElementById("password");
                var f = 1;//no error
                function check(elem) {
                    if (elem.value.length > 0) {
                        if (elem.value != password.value) {
                            document.getElementById('alert').innerText = "Confirm password dose match"
                            f=0;
                        }
                        else {
                            document.getElementById('alert').innerText="";
                            f=1;
                        }
                    }

                    else {
                        document.getElementById('alert').innerText = "Enter Confirm password"
                        f=0;
                    }
                }
                function validate()
                {
                    if(f==1)
                    {
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }

            </script>

            <div class="form-group">
                <!-- <a type="button" href="d:\ISM UNIVERSITY\Project\CSS\registration\Ack.html" target="_blank" class="btn btn-block create-account">Reset Password</a> -->
                 <input type="submit"  class="btn btn-block create-account" value="Reset Password" /> 
                
            </div>

            <div class="form-group">
                <!-- <p>Do you have Account ?</p> -->
                
                <!-- <input type="button" class="btn btn-block create-account" value="Log in"/> -->
            </div>
           
            <%
            if(request.getParameter("msg")!=null)
            	out.print("<h3 style='color:blue;'><center>"+request.getParameter("msg")+"</center></h3>");
            
            
            %>

        </form>
            </div>
        </div>
    </div>



    <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script type="text/javascript"
        src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>
    <script src="assets - Copy/js/script.js"></script>
</body>

</html>