<!DOCTYPE html>
<%@ page import="java.sql.*" %>
<%@ page import="com.in.model.*" %>
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
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css" />
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.24/css/dataTables.bootstrap4.min.css" />
    
    <!-- Custom CSS -->
   <link href="css/style.min.css" rel="stylesheet">
   
    <script src="myjs/jquery-1.10.2.min.js"></script>
    <script src="myjs/requestKey.js"></script>
</head>

<body>
    <%
	    HttpSession sesion = request.getSession();
	    String dname = (String)sesion.getAttribute("dname");
	    String demail = (String)sesion.getAttribute("demail");
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
                                    class="img-circle"><span class="text-white font-medium"><%=dname%></span></a>
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
       
       <jsp:include page="includeDist.jsp" />  
        
        <div class="page-wrapper" style="min-height: 250px;">
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="page-breadcrumb bg-white">
                <div class="row align-items-center">
                    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                        <h4 class="page-title">Blank Page</h4>
                    </div>
                    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                        <div class="d-md-flex">
                            <ol class="breadcrumb ms-auto">
                                <li><a href="#" class="fw-normal">Dashboard</a></li>
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
		                             <form class="form-horizontal form-material" action="shareItemtoPatient" method="post">
		                                <div class="row">
		                                   <div class="col-lg-6 col-md-6"> 
			                                    <div class="form-group mb-4">
			                                        <b class="col-md-12 p-0">Select Drug Name</b>
			                                        <div class="col-md-12 border-bottom p-0">
			                                        	<select class="form-control p-0 border-0" name="drugName">
			                                        		<option disabled selected>--Select--</option>
			                                        		<%
			                                        		 Connection con=dbConnect.connect();
												        	 Statement st = con.createStatement();
												        	 ResultSet rs = st.executeQuery("select drugName from shareiteminfo where distributorName='"+dname+"'");
			                                        		while(rs.next())
			                                        		{
			                                        		%>
			                                        		<option><%=rs.getString(1)%></option>
			                                        		<%
			                                        		}
			                                        		%>
			                                        	
			                                        	</select>
			                                        </div>
			                                    </div>
		                                    </div>	
		                                     
		                                     <div class="col-lg-6 col-md-6"> 
			                                    <div class="form-group mb-4">
			                                        <b class="col-md-12 p-0">Select Patient</b>
			                                        <div class="col-md-12 border-bottom p-0">
			                                       <select class="form-control p-0 border-0" name="patientName">
			                                        	<option disabled selected>--Select--</option>
			                                        		<%
			                                        		 Connection con1=dbConnect.connect();
												        	 Statement st1 = con1.createStatement();
												        	 ResultSet rs1 = st1.executeQuery("select userName from registration where userType='Patient'");
			                                        		while(rs1.next())
			                                        		{
			                                        		%>
			                                        		<option><%=rs1.getString(1)%></option>
			                                        		<%
			                                        		}
			                                        		%>
			                                        	
			                                        </select>
			                                       </div>
			                                    </div>
		                                    </div>		                                    	                                    
		                                 </div>                 
		                                
		                                 <div class="row">
		                                   <div class="col-lg-6 col-md-6"> 
			                                    <div class="form-group mb-4">
			                                        <b class="col-md-12 p-0">Quantity</b>
			                                        <div class="col-md-12 border-bottom p-0">			                             			         
			                                        <input type="text" class="form-control p-0 border-0" placeholder="Enter the Quantity" name="quantity"></div>
			                                    </div>
		                                    </div>
		                                    <div class="col-lg-6 col-md-6"> 
			                                    <div class="form-group mb-4">
			                                        <b class="col-md-12 p-0"> Transaction Amount</b>
			                                        <div class="col-md-12 border-bottom p-0">
			                                            <input type="text" class="form-control p-0 border-0" name="transactionAmount" placeholder="Enter the Transaction Amount"></div>
			                                    </div>
		                                    </div>
		                                 </div>
		                                 
		                                   <div class="form-group mb-4">
		                                        <div class="col-sm-12">
		                                            <button type="submit" class="btn btn-primary">Share</button>
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
    
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
   <script src="https://cdn.datatables.net/1.10.24/js/jquery.dataTables.min.js"></script>
   <script src="https://cdn.datatables.net/1.10.24/js/dataTables.bootstrap4.min.js"></script>

  
   
    <script>
    $(document).ready(function() {
        $('#example').DataTable();
    } );
    </script>
    
</body>

</html>