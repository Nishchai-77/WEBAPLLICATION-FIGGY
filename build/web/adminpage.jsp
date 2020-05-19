<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>FIGGY PAYEMENT</title>
    <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
    <style type="text/css">
        body{
          /*background-image: url("img.jpg") height:110%;*/
            background-size: cover;
            background-repeat: no-repeat;
            margin: unset;
        }

        #topdiv{
            font-size: 28px;
            background-color: black;
            height: 60px;
            width: 100%;
            position:relative;
            padding-top:20px;
            padding-bottom: 7px;
            line-height:1px;
            overflow:hidden;
            z-index:2;
            border: unset;
            opacity: 90%;
        }
        #topdiv h3{
            color: white;
            text-align: center;
            letter-spacing: 7px;
        }

        #secdiv{
            height: 40px;
            width: 100%;
        }
        
        #secdivopt{
            font-size: 25px;
            letter-spacing: 5px;
            color: black;
            float: right;
            padding-left: 15px; 
            border-left:1px solid white;
            margin:5px 30px 0 0;
        }

        #secdiv a:hover{
            font-size: 30px;
        }
        .center{
            width: 1000px;
            height: 100px;
            background-color: black;
            align-self: center;
            margin: 0px 0px 0px 350px;
            font-size: 20px;
            font-style: Times New Roman;
            border-radius: 16px;
            position: relative;
            top: 20px;
        }
        .centerser{
            width: 1000px;
            height: 50px;
            background-color: black;
            align-self: center;
            margin: 0px 0px 0px 350px;
            font-size: 20px;
            font-style: Times New Roman;
            border-radius: 16px;
            color: white;
        }
        .centerser input{
            border-radius: 3px;
            background-color: transparent;
            color: white;
            max-width: 250px;
            position: relative;
            left: 70px;
            top: 13px;
        }
        .frsub{
            background-color: black;
            font-size: 25px;
            color: white;
            border-radius: 6px;
            padding: 5px 20px 5px 20px;
            float: right;
        }
        .centerfrom{
            width: 350px;
            height: 55px;
            float: left;
            margin: 15px 50px 15px 100px;
            border-radius: 10px;
            background-color: white;
            padding: 10px 10px 5px 10px;
        }
        .centerto{
            width: 350px;
            height: 55px;
            float: left;
            margin: 15px;
            border-radius: 10px;
            background-color: white;
            padding: 10px 10px 5px 10px;
        }
        select{
            width: 100%;
            height: 60%;
            border-radius: 5px;
        }
        option{
            font-size: 20px;
        }
        .tablink {
            background-color: #4188FF;
            color: white;
            float: left;
            border: none;
            outline: none;
            cursor: pointer;
            padding: 14px 16px;
            font-size: 17px;
            width: 25%;
            opacity: 90%;
        }
        .tablinkdiv2 {
            background-color: #649EFF;
            color: white;
            float: left;
            border: none;
            outline: none;
            cursor: pointer;
            padding: 14px 16px;
            font-size: 17px;
            width: 50%;
            opacity: 90%;
        }
        .tablink:hover {
            background-color: transparent;
        }
        .tablinkdiv2:hover {
            background-color: transparent;
        }
        .tabcontent {
            color: white;
            display: none;
            padding: 100px 20px;
            height: 100%;
        }
        .btn{
            width: 200px;
            padding: 10px 18px;
            background-color: black;
            border-radius: 20px;
            border: none;
            color: white;
            font-weight: bold;
        }
         </style>
    </head>
    
    <body background="images/footer-bg.jpg">
    <center>
                            <table>
				<thead>
                                    <tr class="table100-head">
                                        <th class="column1">ITEMS</th>
                                        <th class="column2">PRICE</th>
                                        <th class="column3">QUANTITY</th>
                                        <th class="column4">REGISTERED-ID</th>
                                        <th class="column5">TOTAL</th>
                                        
                                    </tr>
				</thead>
                                <tbody>
                                <%  
                                    Class.forName("com.mysql.jdbc.Driver");
                                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/figgyandyoo", "root", "");
                                    String insertq="select * from ordernow ";  
                                    PreparedStatement pst=con.prepareStatement(insertq);
                                    ResultSet rs= pst.executeQuery();
                                    while(rs.next()){
                                        String a=  rs.getString("item");
                                        int b=  rs.getInt("price");
                                        int c=  rs.getInt("qty");
                                        String d=  rs.getString("reg_id");
                                        int e=b*c;
                                    
                                       
                                    %>    
                                <tr>
					<td class="column1"><%= a%></td>
					<td class="column2"><%= b%></td>
					<td class="column3"><%= c%></td>
                                        <td class="column4"><%= d%></td>
                                        <td class="column5"><%= e%></td>
                                        
                                </tr>
                                                
                                <%
                                    }
                                %>
                                </tbody>
                            </table>
</center>
                               
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                 <script>
            function openPage(pageName,elmnt,color) {
		var i, tabcontent, tablinks;
		tabcontent = document.getElementsByClassName("tabcontent");
		for (i = 0; i < tabcontent.length; i++) {
                    tabcontent[i].style.display = "none";
		}
		tablinks = document.getElementsByClassName("tablink");
		for (i = 0; i < tablinks.length; i++) {
		    tablinks[i].style.backgroundColor = "";
		}
		document.getElementById(pageName).style.display = "block";
		elmnt.style.backgroundColor = color;
            }
            document.getElementById("defaultOpen").click();
	</script>

        <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
