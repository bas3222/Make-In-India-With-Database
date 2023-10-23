<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="Common_Header.jsp"></jsp:include>
 <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
      <div class="container">

        <div class="section-title">
          <span>Contact</span>
          <h2>Contact</h2>
          <!-- <p>Sit sint consectetur velit quisquam cupiditate impedit suscipit alias</p> -->
        </div>

        <div class="row" data-aos="fade-up">
          <div class="col-lg-6">
            <div class="info-box mb-4">
              <i class="bx bx-map"></i>
              <h3>Our Address</h3>
              <p>Vigyan Bhavan Annexe,
                Maulana Azad Road,
                New Delhi 110011</p>
            </div>
          </div>

          <div class="col-lg-3 col-md-6">
            <div class="info-box  mb-4">
              <i class="bx bx-envelope"></i>
              <h3>Email Us</h3>
              <p>contact@investindia.org.in</p>
            </div>
          </div>

          <div class="col-lg-3 col-md-6">
            <div class="info-box  mb-4">
              <i class="bx bx-phone-call"></i>
              <h3>Call Us</h3>
              <p>+91-11-23048155</p>
            </div>
          </div>

        </div>

        <div class="row" data-aos="fade-up">

          <div class="col-lg-6 ">

            <iframe
              src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d28021.02552046531!2d77.221657!3d28.610929!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390ce2c63f7ffe31%3A0x214e4ef2f44d556e!2sInvest%20India!5e0!3m2!1sen!2sus!4v1690869277867!5m2!1sen!2sus"
              width="550" height="450" style="border:" allowfullscreen="" loading="lazy"
              referrerpolicy="no-referrer-when-downgrade"></iframe>

          </div>

          <!-- <div class="col-lg-6 ">
            <iframe class="mb-4 mb-lg-0" src="https://www.google.com/maps/place/Invest+India/@28.610929,77.221657,14z/data=!4m6!3m5!1s0x390ce2c63f7ffe31:0x214e4ef2f44d556e!8m2!3d28.6109286!4d77.2216567!16s%2Fg%2F11c30tt6l4?hl=en-IN&entry=ttu" frameborder="0" style="border:0; width: 100%; height: 384px;" allowfullscreen></iframe>
          </div> -->
        
          <div class="col-lg-6">
            <form action="/Make_In_India/Feedback" method="post" role="form"
              class="php-email-form">
              <div class="row">
                <div class="col-md-6 form-group">
                  <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" required>
                </div>
                <div class="col-md-6 form-group mt-3 mt-md-0">
                  <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" required>
                </div>
              </div>
              <div class="form-group mt-3">
                <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject">
              </div>
              <div class="form-group mt-3">
                <textarea class="form-control" name="message" rows="5" placeholder="Message"></textarea>
              </div>
            
              <div class="text-center"><button type="submit">Send Message</button></div>
              <%
              if(request.getParameter("msg")!=null)
               	out.print("<h3 style='color:black;'><center>"+request.getParameter("msg")+"</center></h3>");
            
              %>
            </form>
          </div>
      
        </div>

      </div>
    </section>


     <div style="text-align: right;">
    <a href="RRR.jsp" target="_blank" style=" font-size: 35px; font-family: 'Times New Roman', Times, serif; border: 5px solid blue; color: antiquewhite; background-color: burlywood;">RRR</a>
   </div> 
    <!-- End Contact Section -->


</body>
</html>