<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<!--
Victory Template
http://www.templatemo.com/tm-507-victory
-->
		<title>Victory CSS Web Template</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="apple-touch-icon" href="apple-touch-icon.png">

        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="css/fontAwesome.css">
        <link rel="stylesheet" href="css/hero-slider.css">
        <link rel="stylesheet" href="css/owl-carousel.css">
        <link rel="stylesheet" href="css/templatemo-style.css">

        <link href="https://fonts.googleapis.com/css?family=Spectral:200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900" rel="stylesheet">

        <script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
    </head>
	<body>
	<center>
	 <section id="order-food">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="heading">
                        <h2>order Your food Now</h2>
                    </div>
                </div>
                <div class="col-md-4 col-md-offset-2 col-sm-12">
                    <div class="left-image">
                        <img src="msaladose.jpg" alt="">
                    </div>
                </div>
                <div class="col-md-4 col-sm-12">
                    <div class="right-info">
                        <h4>order food</h4>
                        <%
                            String item="";
                            String price="";
                            String qty="";
                            String reg_id=""; 
                            try{
                                item=request.getParameter("item").toString();
                                price=request.getParameter("price").toString();
                                reg_id=request.getParameter("reg_id").toString();
                                qty=request.getParameter("qty").toString();
                                
                            }
                            catch(Exception e){}
                            if(item.length()!=0 || price.length()!=0 || qty.length()!=0 || reg_id.length()!=0)
                            {
                                 Class.forName("com.mysql.jdbc.Driver");
                                 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/figgyandyoo","root","");
                                 String insertq="insert into ordernow(item,price,qty,reg_id) values( ? , ? , ? , ? )";
                                 PreparedStatement pst=con.prepareStatement(insertq);
                                 System.out.println(pst);

                                 pst.setString(1,item);
                                 pst.setString(2,price);
                                 pst.setString(3,qty);
                                 pst.setString(4,reg_id);
                                 int i=pst.executeUpdate();
                                 if(i==1){
                                     response.sendRedirect("1n.jsp");
                                 }
                                
                            }

                         %>
                        <form name="myForm" action="menudose.jsp" style="max-width:500px;margin:auto" >
                            <div class="input-container">
				  	<i class="fa fa-globe icon"></i>
<!--				  	<input class="input-field" type="text" placeholder="Region" name="region" id="reg"  required>-->
                                        <select class="input-field" name="item">
                                            <option value="MASAL DOSE">MASAL DOSE</option>                                            
                                        </select>
                                        <select class="input-field" name="price">
                                            <option value="50">50 RS</option>                                            
                                        </select>
                                        <select class="input-field" name="qty">
                                            <option value="1">1</option>  
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                            <option value="5">5</option>
                                        </select>
                        <input class="input-field" type="text" placeholder="reg id" name="reg_id" id="reg_id"  required>
                        <button type="submit" class="btn" >ORDER</button>
                            </div>
                        </form>
                    </body>
                    </html>