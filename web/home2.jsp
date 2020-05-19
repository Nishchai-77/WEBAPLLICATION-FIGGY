<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <style>
        
				.input-field {
				  width: 100%;
				  padding: 10px;
				  outline: none;
				}

    </style>
	<meta charset="utf-8">
	<title>FIGGY RESTAURANT</title>

	<meta http-equiv="X-UA-Compatible" content="IE=Edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="keywords" content="">
	<meta name="description" content="">
<!--

Template 2076 Zentro

http://www.tooplate.com/view/2076-zentro

-->
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/animate.min.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/nivo-lightbox.css">
	<link rel="stylesheet" href="css/nivo_themes/default/default.css">
	<link rel="stylesheet" href="css/style.css">
	<link href='https://fonts.googleapis.com/css?family=Roboto:400,500' rel='stylesheet' type='text/css'>
</head>
<body>

<!-- preloader section -->
<section class="preloader">
	<div class="sk-spinner sk-spinner-pulse"></div>
</section>

<!-- navigation section -->
<section class="navbar navbar-default navbar-fixed-top" role="navigation">
	<div class="container">
		<div class="navbar-header">
			<button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="icon icon-bar"></span>
				<span class="icon icon-bar"></span>
				<span class="icon icon-bar"></span>
			</button>
			<a href="index.jsp" class="navbar-brand">FIGGY</a>
		</div>
		<div class="collapse navbar-collapse">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="index.jsp" class="smoothScroll">HOME</a></li>
				<li><a href="#gallery" class="smoothScroll">FOOD GALLERY</a></li>
				<li><a href="#menu" class="smoothScroll">SPECIAL MENU</a></li>
				<li><a href="#contact" class="smoothScroll">RESERVE TABLE</a></li>
				<li><a href="#contact" class="smoothScroll">CONTACT</a></li>
			</ul>
		</div>
	</div>
</section>


<!-- home section -->
<section id="home" class="parallax-section">
	<div class="container">
		<div class="row">
			<div class="col-md-12 col-sm-12">
				<h1>FIGGY RESTAURANT</h1>
				<h2>CLEAN &amp; SIMPLE DESIGN</h2>
				<a href="menu.jsp" class="smoothScroll btn btn-default">ORDER YOUR FOOD NOW</a>
			</div>
		</div>
	</div>		
</section>


<!-- gallery section -->
<section id="gallery" class="parallax-section">
	<div class="container">
		<div class="row">
			<div class="col-md-offset-2 col-md-8 col-sm-12 text-center">
				<h1 class="heading">Food Gallery</h1>
				<hr>
			</div>
			<div class="col-md-4 col-sm-4 wow fadeInUp" data-wow-delay="0.3s">
				<a href="images/gallery-img1.jpg" data-lightbox-gallery="zenda-gallery"><img src="msaladose.jpg" alt="gallery img"></a>
				<div>
					<h3>SPECIAL PUDDI MASALA</h3>
					<span>BENNE MASALA/JAIN PLAIN/MASALA DOSA</span>
				</div>
				<a href="images/gallery-img2.jpg" data-lightbox-gallery="zenda-gallery"><img src="vadapav.jpg" alt="gallery img"></a>
				<div>
					<h3>SPRING VEGETABLES DOSA</h3>
					<span>Tomato / Rosemary / Lemon</span>
				</div>
			</div>
			<div class="col-md-4 col-sm-4 wow fadeInUp" data-wow-delay="0.6s">
				<a href="images/gallery-img3.jpg" data-lightbox-gallery="zenda-gallery"><img src="idlyvade.jpg" alt="gallery img"></a>
				<div>
					<h3>TATTEY IDLY VADE</h3>
					<span>COCONUT CHUTNEY / SAMBAR / GROUIND NUT CHUTNEY</span>
				</div>
			</div>
			<div class="col-md-4 col-sm-4 wow fadeInUp" data-wow-delay="0.9s">
				<a href="images/gallery-img4.jpg" data-lightbox-gallery="zenda-gallery"><img src="pongal.jpg" alt="gallery img"></a>
				<div>
					<h3>BIISI BELE BATH</h3>
					<span>Chtirana / pulliogre /vangibath </span>
				</div>
				<a href="images/gallery-img5.jpg" data-lightbox-gallery="zenda-gallery"><img src="kesari.jpg" alt="gallery img"></a>
				<div>
					<h3>kessari bath</h3>
					<span>Plain / pineaple/ pista</span>
				</div>
			</div>
		</div>
	</div>
</section>


<!-- menu section -->
<section id="menu" class="parallax-section">
	<div class="container">
		<div class="row">
			<div class="col-md-offset-2 col-md-8 col-sm-12 text-center">
				<h1 class="heading">Special Menu</h1>
				<hr>
			</div>
			<div class="col-md-6 col-sm-6">
				<h4>DOSA <span>RS 80.50</span></h4>
				<h5>PLAIN / MASALA / PUDDI</h5>
			</div>
			<div class="col-md-6 col-sm-6">
				<h4> PONGAL........................... <span>RS50.50</span></h4>
				<h5>MOSARO ANNA/ UPINKAYI/ APPALA</h5>
			</div>
			<div class="col-md-6 col-sm-6">
				<h4>TATTEY IDLI........................ <span>RS40.75</span></h4>
				<h5>BENNE / VADE / BONDA</h5>
			</div>
			<div class="col-md-6 col-sm-6">
				<h4>ROTTI .......................... <span>RS55.00</span></h4>
				<h5>VEG CURRY/ CHANNA / PANNER MATAR</h5>
			</div>
			<div class="col-md-6 col-sm-6">
				<h4>PAROTA ...................... <span>RS65.00</span></h4>
				<h5>DHAL/ VEG CUURY </h5>
			</div>
			<div class="col-md-6 col-sm-6">
				<h4>VADA PAV ........................ <span>RS70.50</span></h4>
				<h5>PAV BAJI / SAMAOSA / KACHORI</h5>
			</div>
			<div class="col-md-6 col-sm-6">
				<h4>AKKI ROOTI ................... <span>RS110.75</span></h4>
				<h5>YENGAYI / BADNEKAYI CHUTNEY / SHENGA CHUTNEY</h5>
			</div>
			<div class="col-md-6 col-sm-6">
				<h4>BIISI BELE BATH ..................... <span>RS220.50</span></h4>
				<h5>PULLIYOGARE /CHITRANA /VANGI BATH</h5>
			</div>
		</div>
	</div>
</section>		
<%
    String name="";
    String cemail="";
    String msg="";
    String reserve_time="";
    try{
        name=request.getParameter("name").toString();
        cemail=request.getParameter("email").toString();
        msg=request.getParameter("msg").toString();
        reserve_time=request.getParameter("reserve_time");
    }
    catch(Exception e){}
        if (name.length()!=0 || cemail.length()!=0 || msg.length()!=0)
        {
             Class.forName("com.mysql.jdbc.Driver");
             Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/figgyandyoo","root","");
             String insertq="insert into reservetable(name,cemail,message,timmings) values( ? , ? , ?, ? )";  
             PreparedStatement ps=con.prepareStatement(insertq);
             ps.setString(1,name);
             ps.setString(2,cemail);
             ps.setString(3,msg);
             ps.setString(4,reserve_time);
             int i=ps.executeUpdate();
             if(i==1){
                 response.sendRedirect("reserve.jsp");
             }
             
            
        }
    
%>




<!-- contact section -->
<section id="contact" class="parallax-section">
	<div class="container">
		<div class="row">
			<div class="col-md-offset-1 col-md-10 col-sm-12 text-center">
				<h1 class="heading">RESERVE A TABLE!</h1>
				<hr>
			</div>
			<div class="col-md-offset-1 col-md-10 col-sm-12 wow fadeIn" data-wow-delay="0.9s">
				<form action="home2.jsp" method="post" >
					<div class="col-md-6 col-sm-6">
						<input name="name" type="text" class="form-control" id="name" placeholder="Name">
				  </div>
					<div class="col-md-6 col-sm-6">
						<input name="email" type="email" class="form-control" id="email" placeholder="Email">
				  </div>
					<div class="col-md-12 col-sm-12">
						<textarea name="msg" rows="8" class="form-control" id="msg" placeholder="Message"></textarea>
					</div>
                                    <div>
                                         <select class="input-field" name="reserve_time">
                                            <option value="10:00 am">10:00  AM</option>  
                                            <option value="11:00am">11:00 AM</option>
                                            <option value="12:00pm">12:00 PM</option>
                                            <option value="1:00pm">1:00 PM</option>
                                            <option value="4:00pm">4:00 PM</option>
                                            <option value="5:00pm">5:00 PM</option>
                                            <option value="6:00pm">6:00 PM</option>
                                            <option value="7:00pm">7:00 pm</option>
                                            <option value="8:0pm">8:00 PM</option>
                                    
                                        </select>
                                    </div>
                                    
                       
					<div class="col-md-offset-3 col-md-6 col-sm-offset-3 col-sm-6">
                                            <center>	
                                            <button type="submit" class="btn" >Reserve</button>
                                            </center>
					</div>
				</form>
			</div>
			<div class="col-md-2 col-sm-1"></div>
		</div>
	</div>
</section>


<!-- footer section -->
<footer class="parallax-section">
	<div class="container">
		<div class="row">
			<div class="col-md-4 col-sm-4 wow fadeInUp" data-wow-delay="0.6s">
				<h2 class="heading">Contact Info.</h2>
				<div class="ph">
					<p><i class="fa fa-phone"></i> Phone</p>
					<h4>090-080-0760</h4>
				</div>
				<div class="address">
					<p><i class="fa fa-map-marker"></i> Our Location</p>
					<h4>120 Duis aute irure, California, USA</h4>
				</div>
			</div>
			<div class="col-md-4 col-sm-4 wow fadeInUp" data-wow-delay="0.6s">
				<h2 class="heading">Open Hours</h2>
					<p>Sunday <span>10:30 AM - 10:00 PM</span></p>
					<p>Mon-Fri <span>9:00 AM - 8:00 PM</span></p>
					<p>Saturday <span>11:30 AM - 10:00 PM</span></p>
			</div>
			<div class="col-md-4 col-sm-4 wow fadeInUp" data-wow-delay="0.6s">
				<h2 class="heading">Follow Us</h2>
				<ul class="social-icon">
					<li><a href="#" class="fa fa-facebook wow bounceIn" data-wow-delay="0.3s"></a></li>
					<li><a href="#" class="fa fa-twitter wow bounceIn" data-wow-delay="0.6s"></a></li>
					<li><a href="#" class="fa fa-behance wow bounceIn" data-wow-delay="0.9s"></a></li>
					<li><a href="#" class="fa fa-dribbble wow bounceIn" data-wow-delay="0.9s"></a></li>
					<li><a href="#" class="fa fa-github wow bounceIn" data-wow-delay="0.9s"></a></li>
				</ul>
			</div>
		</div>
	</div>
</footer>


<!-- copyright section -->
<section id="copyright">
	<div class="container">
		<div class="row">
			<div class="col-md-12 col-sm-12">
				<h3>FIGGY</h3>
				<p>Copyright © FIGGY Restaurant and Cafe 
                

			</div>
		</div>
	</div>
</section>

<!-- JAVASCRIPT JS FILES -->	
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.parallax.js"></script>
<script src="js/smoothscroll.js"></script>
<script src="js/nivo-lightbox.min.js"></script>
<script src="js/wow.min.js"></script>
<script src="js/custom.js"></script>

</body>
</html>
