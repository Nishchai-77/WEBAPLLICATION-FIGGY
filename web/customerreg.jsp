<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<!DOCTYPE html>
<html>
	
	<head>

		<title>Registration to FIGGY</title>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

		<!-- <link rel="stylesheet" type="text/css" href="indexcss.css"> -->
			<style type="text/css">
				body{
					/*background-image: url("img.jpg") height:110%;*/
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
					width: 100;
					/*background-color: #0785C3;*/
				}
				
				#secdivopt{
					font-size: 25px;
					letter-spacing: 5px;
					color: black;
					float: right;
					padding-left: 15px; 
					border-left:1px solid white;
					margin:5px 30px 0 0;
					font-family: none;
				}
				.input-container {
				    display: -ms-flexbox; /* IE10 */
				    display: flex;
				    width: 100%;
				    margin-bottom: 15px;
				    background-color: black;
				    opacity: 80%;
				}
				.icon {
				    padding: 10px;
				    background: dodgerblue;
				    color: white;
				    min-width: 50px;
				    text-align: center;
				}
				.btn {
					background-color: dodgerblue;
					color: white;
					padding: 15px 20px;
					border: none;
					cursor: pointer;
					width: 100%;
				}
				.btn:hover {
                    opacity: 1;
                }

				.input-field {
				  width: 100%;
				  padding: 10px;
				  outline: none;
				}

				.input-field:focus {
				  border: 2px solid dodgerblue;
				}
			</style>
	</head>



	<body background="img.jpg">
            
            <%  
                
                String fn= "" ;
                String ln= "" ;
                String email= "" ;
                String ph= "" ;
                String region= "" ;
                String address= "" ;
                String psw= "" ;
                 try
                    {
                        fn= request.getParameter("fn").toString();
                        ln= request.getParameter("ln").toString();
                        email= request.getParameter("email").toString();
                        ph= request.getParameter("ph").toString();
                        region= request.getParameter("region").toString();
                        address= request.getParameter("address").toString();
                        psw= request.getParameter("psw").toString();
                     
                    }
                    catch(Exception e){}
                if(fn.length()!= 0 || ln.length()!=0 || email.length()!= 0 || ph.length()!=0 || region.length()!= 0 || address.length()!=0 || psw.length()!=0)
                {
                   
               
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/figgyandyoo","root","");
                    String insertq="insert into customerinfo(cfirstname,clastname,cemail,cphone,cregion,caddress,password) values( ? , ? , ? , ? , ? , ? , ? )";  

                    PreparedStatement pst=con.prepareStatement(insertq);
                    System.out.println(pst);
                    pst.setString(1, fn);
                    pst.setString(2, ln);
                    pst.setString(3, email);
                    pst.setString(4, ph);
                    pst.setString(5, region);
                    pst.setString(6, address);
                    pst.setString(7, psw);
                    int i= pst.executeUpdate();
                    if(i==1){
                        response.sendRedirect("index.jsp");
                    }
                }
            %>

		<div id="topdiv">
			<h3>'LIVE'  with  no  'EXCUSES'  and  'TRAVEL'  with  no  'REGRETS'</h3>

		</div>
		<div id="secdiv">
                    
                    <div id="secdivopt">
				<a href="feedback.jsp" style="color: black;text-decoration: none;">Feedback</a> 
                        </div>
                        
                        <div id="secdivopt">
				<a href="aboutus.jsp" style="color: black;text-decoration: none;">About Us</a> 
			</div>	
			<div id="secdivopt">
				<a href="contactus.jsp" style="color: black;text-decoration: none;">Contact</a>
			</div>
			<div id="secdivopt">
				<a href="index.jsp" style="color: black;text-decoration: none;">Login</a>
			</div>	
		</div>

		<form name="myForm" action="customerreg.jsp" style="max-width:500px;margin:auto" onSubmit="return(validate());">
			<h2 style="color: white;">Register here!</h2>
			    <div class="input-container">
			        <i class="fa fa-user icon"></i>
				    <input class="input-field" type="text" placeholder="First Name" name="fn" id="fn"  required>
				    <input class="input-field" type="text" placeholder="Last Name" name="ln" id="ln"  required>
				</div>

				<div class="input-container">
				    <i class="fa fa-envelope icon"></i>
				    <input class="input-field" type="email" placeholder="E-mail" name="email" id="email"  required>
				</div>
                                
				<div class="input-container">
                                    <i class="fa fa-phone icon"></i>
                                    <input class="input-field" type="text" placeholder="Phone Number" name="ph" id="ph"  required> 
				</div>
				  
				<div class="input-container">
				  	<i class="fa fa-globe icon"></i>
<!--				  	<input class="input-field" type="text" placeholder="Region" name="region" id="reg"  required>-->
                                        <select class="input-field" name="region">
                                            <option value="Karnataka">Karnataka</option>                                            
                                        </select>
				</div>

				<div class="input-container">
				  	<i class="fa fa-home icon"></i>
				  	<input class="input-field" type="text" placeholder="Address" name="address" id="addr"  required>
				</div>

				<div class="input-container">
				    <i class="fa fa-key icon"></i>
				    <input class="input-field" type="password" placeholder="Password" name="psw" id="psw"  required>
			    </div>
                            
                        
				<div class="input-container">
				    <i class="fa fa-key icon"></i>
				    <input class="input-field" type="password" placeholder="Renter The Password" name="pswl" id="pswl"  required>
			    </div>
                        
			  
				<div>
				    <input type="checkbox" name="privacy" required><span style="color: white;">By creating an account you agree to our <a href="#">Terms & Conditions</a></span>
				</div><br>
				  
				<button type="submit" class="btn" >Register</button>
				  
				<div>
				    <a class="a" href="index.jsp">For login click me</a>
                </div>
        </form>
        <script type="text/javascript">
		    function validate(){
		        if( document.myForm.fn.value == "" )
		        {
		            alert( "Please enter your first name!" );
		            document.myForm.fn.focus() ;
		            return false;
		        } 

		        if( document.myForm.ln.value == "" )
		        {
		            alert( "Please enter your last name!" );
		            document.myForm.ln.focus() ;
		            return false;
		        } 
		        
		        if( document.myForm.email.value == ""  )
		        {
		            alert( "Please provide the Email!" );
		            document.myForm.email.focus() ;
		            return false;
		        }

		        if( document.myForm.ph.value == "" )
		        {
		            alert( "Please provide the phone number!" );
		            document.myForm.ph.focus() ;
		            return false;
		        } 

		        if ( document.myForm.reg.value == "" ) {
		        	alert( "Please enter the Region!" );
		        	document.myForm.reg.focus();
		        	return false;
		        }

		        if ( document.myForm.addr.value == "" ) {
		        	alert( "Please enter your Address!" );
		        	document.myForm.addr.focus();
		        	return false;
		        }


		        if( document.myForm.psw.value == "" )
		        {
		            alert( "Please provide the password!" );
		            document.myForm.psw.focus() ;
		            return false;
		        } 

		        if( document.myForm.psw1.value == "" )
		        {
		            alert( "Please re-enter the password!" );
		            document.myForm.psw1.focus() ;
		            return false;
		        } 
		                
		        return true;
		    }
        </script>
<!--       pattern="^\d{a-z}$" -->
	</body>
</html>