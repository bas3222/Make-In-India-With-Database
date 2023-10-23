<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <title>RPR</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
  <style>
    .carousel-inner>.item>img,
    .carousel-inner>.item>a>img {
      width: 70%;
      margin: auto;
    }


    .flip-box {
  background-color: transparent;
  width: 300px;
  height: 200px;
  border: 1px solid #f1f1f1;
  perspective: 1000px;
}

.flip-box-inner {
  position: relative;
  width: 100%;
  height: 100%;
  text-align: center;
  transition: transform 0.8s;
  transform-style: preserve-3d;
}

.flip-box:hover .flip-box-inner {
  transform: rotateY(180deg);
}

.flip-box-front, .flip-box-back {
  position: absolute;
  width: 100%;
  height: 100%;
  -webkit-backface-visibility: hidden;
  backface-visibility: hidden;
}

.flip-box-front {
  background-color: #bbb;
  color: black;
}

.flip-box-back {
  background-color: #555;
  color: white;
  transform: rotateY(180deg);
}
#fun
{
  display: flex;
  justify-content: space-between;
  padding-left: 60px;
  padding-right: 120px ;
  
}
.c1
{
  font-size: 40px;
  font-family:monospace;
  text-align: center;
  background: url('https://png.pngtree.com/background/20211215/original/pngtree-yellow-green-pigeon-indian-independence-day-background-picture-image_1456726.jpg');
  font-weight: 800;
  color: blue;
  
  
}

.c2
{
  font-size: 100px;
  font-family:'Times New Roman', Times, serif;
  text-align: center;
  background: url('https://cdn.vectorstock.com/i/1000x1000/36/86/indian-background-in-national-colors-of-flag-vector-4753686.webp');
  font-weight: 800;
  color: whitesmoke;
  
  
}
  </style>
</head>

<body style="border: 15px solid blue;">
<div>
  <h1 class="c1">Required Remaining Requriements </h1>
</div>
  <div class="container">
    <br>
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
        <li data-target="#myCarousel" data-slide-to="3"></li>
      </ol>

      <!-- Wrapper for slides -->
      <div class="carousel-inner" role="listbox">

        <div class="item active">
          <img src="https://sarkariyojnaa.org/wp-content/uploads/2023/02/make-in-india-initiative.jpg" alt="Chania"
            width="460" height="345">
          <div class="carousel-caption">


          </div>
        </div>

        <div class="item">
          <img
            src="https://images.moneycontrol.com/static-mcnews/2023/08/Chandrayaannew-1.jpg?impolicy=website&width=1600&height=900"
            alt="Hello" width="460" height="345">
          <div class="carousel-caption">

          </div>
        </div>

        <div class="item">
          <img src="https://i.pinimg.com/originals/9c/8f/bf/9c8fbf02afd00ff80009c8d4534e47c3.png" alt="Flower"
            width="460" height="345">
          <div class="carousel-caption">

          </div>
        </div>

        <div class="item">
          <img src="https://indianassociationdenmark.com/wp-content/uploads/2017/02/8Zu0jN.jpg" alt="Flower" width="460"
            height="345">
          <div class="carousel-caption">

          </div>
        </div>

      </div>

      <!-- Left and right controls -->
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
  </div>
  <br><br>


<div id="fun">

  <div class="flip-box">
    <div class="flip-box-inner">
      <div class="flip-box-front">
        <img src="https://i3.wp.com/www.thetalentedindian.com/wp-content/uploads/2015/10/Dr-APJ-Abdul-Kalam-speech.jpg" alt="Paris" style="width:400px;height:600px">
      </div>
      <div class="flip-box-back">
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkEOIPrX1Dg22RuZ5ktOtNvqd30_KLzJwvbw&usqp=CAU" alt="Paris" style="width:400px;height:600px">
      </div>
    </div>
  </div>
<!--  
<video width="300" height="600" controls>
<source src="https://youtu.be/BHDQcsMIauA?si=q6ZU3ikf80dUhZ-j" type="video/mp4">

</video>-->
<iframe width="300" height="600" src="https://www.youtube.com/embed/BHDQcsMIauA?si=q6ZU3ikf80dUhZ-j" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

  <div class="flip-box" >
    <div class="flip-box-inner">
      <div class="flip-box-front">
        <img src="https://img1.hscicdn.com/image/upload/f_auto,t_ds_w_1200/lsci/db/PICTURES/CMS/318800/318827.jpg" alt="Paris" style="width:400px;height:600px">
      </div>
      <div class="flip-box-back">
        <img src="https://pbs.twimg.com/media/E6UEk8IUcAIf28d.jpg" alt="Paris" style="width:400px;height:600px">
      </div>
    </div>
  </div>
</div>
<br><br><br>
<h1 class="c2">Thank you ! Jai Hind</h1><br><br><br><br>

</head>
<body>

</body>
</html>