<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<!DOCTYPE html>
<html>
    <head>
	<title>Login to FIGGY</title>
            <style type="text/css">
		body{		
                    background-size: cover;
                    background-repeat: no-repeat;
                    margin:unset;
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
					opacity: 80%;
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
				.loginbox{
					border:16px solid black;
					border-radius: 10px;
					font-family: sans-serif;
					background-color: black;
					position: relative;
					left: 42%;
					width: 250px;
					padding: 30px 30px;
					color: white;
					top: 40px;
					opacity: 80%;
				}
				.loginbox input[type="text"], input[type="password"]
				{
					border: none;
					border-bottom: 1px solid #fff;
					background: transparent;
					outline: none;
					height: 40px;
					color: #fff;
					font-size: 16px;
				}
				.loginbox input[type="submit"] {
				    border: none;
				    outline: none;
				    height: 40px;
				    width: 200px;
				    background: #23b2fa;
				    color: #ffffff;
				    font-size: 18px;
				    border-radius: 20px;
				    margin-top: 10px;
				}
				.avatar{
					width: 100px;
					height: 100px;
					border-radius: 50%;
					position: relative;
					left: 75px;
					top: -35px;
					opacity: 60%;
				}
				.loginbox input[type="submit"]:hover
				{
					cursor: pointer;
					background: #ffc107;
					color: #000;
				}
				.Loginbox input{
		            width: 100%;
		            margin-bottom: 20px;
				}
				.loginbox a{
					text-decoration: none;
					font-size: 13px;
					line-height: 20px;
					color: darkgrey;
				}
				.loginbox a:hover
				{
					color: #ffc107;
				}
				.up{
					font-size: 20px;
				}
				#secdiv a:hover{
					font-size: 30px;
				}
			</style>

	</head>



	<body background="img.jpg">
            
            <%  
                ResultSet rs;
                String admin_id= "" ;
                String password= "" ;
                int i=0;
                 try
                    {
                        admin_id= request.getParameter("cemail").toString();
                        password= request.getParameter("psw").toString();
                    }
                    catch(Exception e){}
                if(admin_id.length()!= 0 || password.length()!= 0 )
                {          
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/figgyandyoo","root","");
                    String chehq = "select count(*) as count from admin where admin_id= ? and password= ? ";
                    PreparedStatement pst=con.prepareStatement(chehq);
                    System.out.println(pst);
                    pst.setString(1, admin_id);
                    pst.setString(2, password);
                    rs=pst.executeQuery();
                    while(rs.next())
                    {
                        i=rs.getInt("count");
                    }
//                  int i= pst.executeUpdate();
                    if(i==2)
                    {
                        response.sendRedirect("adminpage.jsp");
                    }
                   
                }
            
            %>

		<div id="topdiv">
			<h3>'EAT'  with  no  'EXCUSES'  and  'LEAVE'  with  no  'REGRETS'</h3>

		</div>

		<div id="secdiv">
                    
                               
		
			<div id="secdivopt">
				<a href="index.jsp" style="color: whitesmoke;text-decoration: none;">BACK</a>
			</div>
			
		</div>
		
		<div class="loginbox">

			<img src="login-png-1.png" class="avatar">
			<div>
				<h1 style="position: relative;left: 50px; top: -30px ">Login Here</h1>
				<form action="admn.jsp">
					<p>Email :</p>
					<input type="text" name="cemail" placeholder="Enter Email ID">
					<p>Password:</p>
					<input type="Password" name="psw" placeholder="Enter Password"><br>
                                        <a href="adminpage.jsp"><input type="submit" value="Log in" ></a><br>
					<p>
					<a class="a1" href="changepass.jsp">Forgot Password?</a><br>
					<a class="a1" href="customerreg.jsp">Don't have an account? Create now!</a>
					</p>
				</form>
			</div>
		</div>


	</body>
</html>