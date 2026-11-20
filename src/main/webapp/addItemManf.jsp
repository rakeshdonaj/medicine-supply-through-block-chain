<!DOCTYPE html>
<%@ page import="java.sql.*" %>
<html dir="ltr" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords"
        content="wrappixel, admin dashboard, html css dashboard, web dashboard, bootstrap 5 admin, bootstrap 5, css3 dashboard, bootstrap 5 dashboard, Ample lite admin bootstrap 5 dashboard, frontend, responsive bootstrap 5 admin template, Ample admin lite dashboard bootstrap 5 dashboard template">
    <meta name="description"
        content="Ample Admin Lite is powerful and clean admin dashboard template, inpired from Bootstrap Framework">
    <meta name="robots" content="noindex,nofollow">
    <title>Medical SCM</title>
  
    <link rel="canonical" href="https://www.wrappixel.com/templates/ample-admin-lite/" />
    
    
    <!-- Custom CSS -->
   <link href="css/style.min.css" rel="stylesheet">
   <script>
   	function myfun()
   	{
   		alert("Item Added Successfully");
   	}
   </script>
</head>

<body style="font-family:Times New Roman">
    <%
    	HttpSession sesion = request.getSession();
    	String uname = (String)sesion.getAttribute("mname");
    	String email = (String)sesion.getAttribute("memail");
    %>
    <div class="preloader">
        <div class="lds-ripple">
            <div class="lds-pos"></div>
            <div class="lds-pos"></div>
        </div>
    </div>
  
    <div id="main-wrapper" data-layout="vertical" data-navbarbg="skin5" data-sidebartype="full"
        data-sidebar-position="absolute" data-header-position="absolute" data-boxed-layout="full">
       
        <header class="topbar" data-navbarbg="skin5">
            <nav class="navbar top-navbar navbar-expand-md navbar-dark">
                <div class="navbar-header" data-logobg="skin6">
                    <a class="navbar-brand">
                      <b class="logo-icon" style="color:black;font-family:Times New Roman;font-size:22px">
                         Medicine SCM
                        </b>
                    </a>                  
                </div> 
                              
                <div class="navbar-collapse collapse" id="navbarSupportedContent" data-navbarbg="skin5">
                   <ul class="navbar-nav ms-auto d-flex align-items-center">
						<li>
                            <a class="profile-pic" href="#">
                                <img src="plugins/images/users/varun.jpg" alt="user-img" width="36"
                                    class="img-circle"><span class="text-white font-medium"><%=uname%></span></a>
                        </li> 
                        <li>
                            <a href="index.jsp">
                            	<i class="fa fa-power-off"></i>&nbsp<b>Logout</b>
                                </a>
                        </li>                       
                    </ul>
                </div>
            </nav>
        </header>
       
        <jsp:include page="includeManf.jsp" />  
        
        <div class="page-wrapper" style="min-height: 250px;">
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="page-breadcrumb bg-white">
                <div class="row align-items-center">
                    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                        <h4 class="page-title">Item Page</h4>
                    </div>
                    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                        <div class="d-md-flex">
                            <ol class="breadcrumb ms-auto">
                                <li><a href="#" class="fw-normal">Dashboard / AddItem</a></li>
                            </ol>                           
                        </div>
                    </div>
                </div>              
            </div>
           
            <div class="container-fluid">
                  <div class="white-box">
                       <div class="row"> 
                           <div class="col-lg-12 col-xlg-12 col-md-12">
		                        <div class="card">
		                            <div class="card-body">
		                             <form class="form-horizontal form-material" action="addItemManufacture" method="post" enctype="multipart/form-Data">
		                                <div class="row">
		                                   <div class="col-lg-6 col-md-6"> 
			                                    <div class="form-group mb-4">
			                                        <b class="col-md-12 p-0">Drug Name</b>
			                                        <div class="col-md-12 border-bottom p-0">
			                                        <input type="text" placeholder="Enter DrugName"
			                                                class="form-control p-0 border-0" name="drugName"></div>
			                                    </div>
		                                    </div>
		                                    <div class="col-lg-6 col-md-6"> 
			                                    <div class="form-group mb-4">
			                                        <b class="col-md-12 p-0">Location</b>
			                                        <div class="col-md-12 border-bottom p-0">
			                                            <input type="text" placeholder="Enter Location"
			                                                class="form-control p-0 border-0" name="location"></div>
			                                    </div>
		                                    </div>
		                                 </div>
		                                 
		                                 <div class="row">
		                                   <div class="col-lg-6 col-md-6"> 
			                                    <div class="form-group mb-4">
			                                        <b class="col-md-12 p-0">Manufacturer Date</b>
			                                        <div class="col-md-12 border-bottom p-0">
			                                        <input type="date" class="form-control p-0 border-0" name="manufacDate"></div>
			                                    </div>
		                                    </div>
		                                    <div class="col-lg-6 col-md-6"> 
			                                    <div class="form-group mb-4">
			                                        <b class="col-md-12 p-0">Expiry Date</b>
			                                        <div class="col-md-12 border-bottom p-0">
			                                            <input type="date"
			                                                class="form-control p-0 border-0" name="expiryDate"></div>
			                                    </div>
		                                    </div>
		                                 </div>
		                                 
		                                 <div class="row">
		                                   <div class="col-lg-6 col-md-6"> 
			                                    <div class="form-group mb-4">
			                                        <b class="col-md-12 p-0">Ingredients</b>
			                                        <div class="col-md-12 border-bottom p-0">
			                                        <textarea rows="2" class="form-control p-0 border-0" placeholder="Enter The Ingredients" name="ingredients"></textarea>
			                                        </div>
			                                    </div>
		                                    </div>
		                                    <div class="col-lg-6 col-md-6"> 
			                                    <div class="form-group mb-4">
			                                        <b class="col-md-12 p-0">Usage of Drug</b>
			                                        <div class="col-md-12 border-bottom p-0">
			                                           <textarea rows="2" class="form-control p-0 border-0" placeholder="Enter The Usage of Drug" name="usage"></textarea>
			                                         </div>
			                                    </div>
		                                    </div>
		                                 </div>
		                                 
		                                 <div class="row">
		                                   <div class="col-lg-6 col-md-6"> 
			                                    <div class="form-group mb-4">
			                                        <b class="col-md-12 p-0">Side Effect</b>
			                                        <div class="col-md-12 border-bottom p-0">
			                                        <input type="text" class="form-control p-0 border-0" placeholder="Enter the SideEffect" name="sideEffect"></div>
			                                    </div>
		                                    </div>
		                                    <div class="col-lg-6 col-md-6"> 
			                                    <div class="form-group mb-4">
			                                        <b class="col-md-12 p-0">Approved Certificate</b>
			                                        <div class="col-md-12 border-bottom p-0">
			                                            <input type="file" class="form-control p-0 border-0" name="approvedCertificate"></div>
			                                    </div>
		                                    </div>
		                                 </div>
		                                 
		                                 <div class="form-group mb-4">
		                                        <div class="col-sm-12">
		                                            <button type="submit" class="btn btn-primary" onclick="myfun()">Submit</button>
		                                        </div>
		                                    </div>
		                                </form>
		                            </div>
		                        </div>
		                    </div>
                        </div>                    
                </div>                
            </div>
            
            <footer class="footer text-center">MEDICINE SUPPLY CHAIN MANAGMENT<a
                    href="https://www.wrappixel.com/"></a>
            </footer>           
        </div>      
    </div>  
     
    <script src="plugins/bower_components/jquery/dist/jquery.min.js"></script>  
    <script src="bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="js/app-style-switcher.js"></script>  
    <script src="js/waves.js"></script>  
    <script src="js/sidebarmenu.js"></script>  
    <script src="js/custom.js"></script>
    
</body>

</html>