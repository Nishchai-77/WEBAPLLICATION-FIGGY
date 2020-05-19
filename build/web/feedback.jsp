<!DOCTYPE html>
<html>

	<head>

		<title>Feedback STSS</title>
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
					font-style: cursive;
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
				.loginbox{
					border:16px solid black;
					border-radius: 10px;
					font-family: sans-serif;
					background-color: black;
					position: relative;
					left: 600px;
					width: 250px;
					padding: 30px 30px;
					color: white;
					top: 40px;
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
                                
                .centerdiv{
					background-color: grey;
					opacity: 80%;
					width: 850px;
					padding: 20px;
					position: relative;
					left: 300px;
					top: 20px;
                	align-self: center;
				} 
                .f{
                    font-size: 30px;
                }
                select{
                    font-size: 25px;
                    float: right;
                }
                .btn {
					background-color: dodgerblue;
					color: white;
					padding: 15px 20px;
					border: none;
					cursor: pointer;
					width: 100%;
                    opacity: 70%;
				}
				.btn:hover {
                	opacity: 100%;
               	}
			</style>

	</head>



	<body background="img.jpeg">

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
				<a href="index.jsp" style="color: black;text-decoration: none;">Logout</a>
			</div>
		</div>
            <div class="centerdiv">
                <div class="f">
                    Convenience in using our Service:
                    <select>
                        <option>Excellent</option>
                        <option> Very Good</option>
                        <option>Good</option>
                        <option>Average</option>
                        <option>Needs Improvement</option>
                    </select>
                </div><hr>
                <div class="f">
                    DESIGN of Website:
                    <select>
                        <option>Excellent</option>
                        <option> Very Good</option>
                        <option>Good</option>
                        <option>Average</option>
                        <option>Needs Improvement</option>
                    </select>
                </div><hr>
                <div class="f">
                    BENEFITS from the Website:
                    <select>
                        <option>Excellent</option>
                        <option> Very Good</option>
                        <option>Good</option>
                        <option>Average</option>
                        <option>Needs Improvement</option>
                    </select>
                </div><hr>
                <div class="f">
                    PAYMENT Facilitation:
                    <select>
                        <option>Excellent</option>
                        <option> Very Good</option>
                        <option>Good</option>
                        <option>Average</option>
                        <option>Needs Improvement</option>
                    </select>
                </div><hr>
                <div class="f">
                    OVERALL performance credits:
                    <select>
                        <option>Excellent</option>
                        <option> Very Good</option>
                        <option>Good</option>
                        <option>Average</option>
                        <option>Needs Improvement</option>
                    </select>
                </div><hr>
                <div class="f">
                    Overall performance credits:
                    <select>
                        <option>Excellent</option>
                        <option> Very Good</option>
                        <option>Good</option>
                        <option>Average</option>
                        <option>Needs Improvement</option>
                    </select>
                </div><hr>
                <input type="submit" class="btn">
            </div>
		


	</body>
</html>



