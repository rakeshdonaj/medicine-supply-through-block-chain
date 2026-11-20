<html>
	<head>
	<title>Medicine SCM</title>
     <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	 <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
	 <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
     <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
	<link href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
		
	<link rel="stylesheet" href="css/index.css">
	<script>
		function myFn()
		{
			alert("Registered Successfull");
		}
	</script>
	</head>
<body>
	
	<div class="container">
       <br><br><br>
        <header>
           <h1 style="color:whitesmoke;font-family:Century;color:#F2F4F4 ">Medicine Supply Chain Management System</h1>
		</header>
        <section>				
           <div id="container_demo" >
                    <!-- hidden anchor to stop jump http://www.css3create.com/Astuce-Empecher-le-scroll-avec-l-utilisation-de-target#wrap4  -->
                    <a class="hiddenanchor" id="toregister"></a>
                    <a class="hiddenanchor" id="tologin"></a>
                    <div id="wrapper">
                        <div id="login" class="animate form" style="background:top;border:solid 2px black">
                            <form  action="loginServlet"  method="post"> 
                                <h1>Log in</h1> 
                                <p> 
                                    <label for="username" class="uname" > Your Email Id</label>
                                    <input name="username" required="required" type="text" placeholder="Enter Your Email-Id"/>
                                </p>
                                <p> 
                                    <label for="password" class="youpasswd"> Your password </label>
                                    <input id="password" name="password" required="required" type="password" placeholder="Enter Your Password" /> 
                                </p>
                                <p> 
                                   <label for="password" class="youpasswd">User Type</label>
                                    <select id="utype" name="utype"> 
                                    	<option disabled selected>--Select--</option>                                    	
                                    	<option value="Manufacture">Manufacturer</option>
                                    	<option value="Distributor">Distributor</option>
                                    	<option value="Patient">Patient</option>
                                    	<option value="Hospital">Hospital</option>
                                    </select>                                    
                                </p>
                                <p class="login button" style="float:left;"> 
                                   <a href="forgot.jsp" style="color:black">Forgot Password..?</a>
								</p>
                                <p class="login button"> 
                                   <button type="submit" class="btn btn-primary">Login</button>
								</p>
                                <p class="change_link" style="background:top;">
									Not a member yet ?
									<a href="#toregister" class="to_register">Join us</a>
								</p>
                            </form>
                        </div>

                        <div id="register" class="animate form" style="background:top;border:solid 2px black">
                            <form  action="SignUp" autocomplete="on" method="post"> 
                                <h1> Sign up </h1> 
                                <p> 
                                    <label for="usernamesignup" class="uname" >Your username</label>
                                    <input id="usernamesignup" name="username" required="required" type="text" placeholder="Enter Your UserName" />
                                </p>
                                <p> 
                                    <label for="emailsignup" class="youmail"  > Your email</label>
                                    <input id="emailsignup" name="email" required="required" type="email" placeholder="Enter Your Email-Id"/> 
                                </p>
                                <p> 
                                    <label for="passwordsignup" class="youpasswd" >Your password </label>
                                    <input id="passwordsignup" name="password" required="required" type="password" placeholder="Enter Your Password"/>
                                </p>
                                <p> 
                                    <label for="passwordsignup_confirm" class="youpasswd" >Mobile No</label>
                                    <input name="mobileNo" required="required" type="text" placeholder="Enter Your Mobile No" maxlength="10"/>
                                </p>
                                <p> 
                                    <label for="passwordsignup_confirm" class="youpasswd" >Location</label>
                                    <input name="location" required="required" type="text" placeholder="Enter Your Location"/>
                                </p>
                                 <p> 
                                   <label for="password" class="youpasswd">User Type</label>
                                    <select id="utype" name="utype"> 
                                    	<option disabled selected>--Select--</option>                                    	
                                    	<option value="Manufacture">Manufacturer</option>
                                    	<option value="Distributor">Distributor</option>
                                    	<option value="Patient">Patient</option>
                                    	<option value="Hospital">Hospital</option>
                                    </select>                                    
                                </p>
                                <p> 
									<input type="submit" value="Sign up" class="btn btn-primary" onclick="myFn()"/> 
								</p>
                                <p class="change_link" style="background:top;color:black">  
									Already a member ?
									<a href="#tologin" class="to_register"> Go and log in </a>
								</p>
                            </form>
                        </div>
						
                    </div>
                </div>  
            </section>
        </div> 

</body>
</html>