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
                        <div id="login" class="animate form">
                            <form  action="forgotPassword"  method="post"> 
                                <h1>Forgot Password</h1> 
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
                                    <label for="username" class="uname">Enter Your Register Email Id</label>
                                    <input name="regEmail" required="required" type="text" placeholder="Enter Your Email-Id" id="enterEmailId"/>
                                </p>                               
                                 <p> 
                                    <label for="username" class="uname">Enter Your Register Mobile No</label>
                                    <input name="regMobile" required="required" type="text" placeholder="Enter Your Mobile No" maxlength="10"/>
                                </p>
                                <p class="login button"> 
                                   <button type="submit" class="btn btn-primary">Submit</button>
								</p>                                
                            </form>
                        </div>

                        
						
                    </div>
                </div>  
            </section>
        </div> 

</body>
</html>