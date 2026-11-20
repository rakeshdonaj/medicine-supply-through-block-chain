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
     
     <link rel="canonical" href="bootstrap/dist/css/bootstrap.min.css" />
     
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css" />
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.24/css/dataTables.bootstrap4.min.css" />
    

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
                        <h4 class="page-title">View Items Page</h4>
                    </div>
                    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                        <div class="d-md-flex">
                            <ol class="breadcrumb ms-auto">
                                <li><a href="#" class="fw-normal">Dashboard / ViewItem</a></li>
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
		                             <table id="example" class="table table-bordered" style="width:100%">
								        <thead style="font-weight:bold;background-color:aliceblue">
								            <tr>
								                <th>DrugName</th>
								                <th>PublicKey</th>
								                <th>ManuDate</th>
								                <th>ExpiryDate</th>
								                <th>Ingredients</th>
								                <th>Usage</th>
								                <th>Certificate</th>
								                <th>Action</th>
								            </tr>
								        </thead>
								        <tbody>
								        <%
								           Connection con=dbConnect.connect();
								        	Statement st = con.createStatement();
								        	ResultSet rs = st.executeQuery("select * from iteminfo where emailId='"+email+"'");
								        	while(rs.next())
								        	{
								        	
								        %>
								            <tr>
								                <td><%=rs.getString(1)%></td>
								                <td><%=rs.getString(10)%></td>
								                <td><%=rs.getString(3)%></td>
								                <td><%=rs.getString(4)%></td>
								                <td><%=rs.getString(5)%></td>
								                <td><%=rs.getString(6)%></td>
								                <td><img src="Certificate/<%=rs.getString(8)%>" style="width:100px;height:75px"></td>
								           		<td><a href="shareItemManf.jsp?drugName=<%=rs.getString(1)%>"><button type="button" class="btn btn-md btn-info">Share</button></a></td>
								            </tr>
								       <%
								        	}
								       %>    								            
								    </table>
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
     
    <script src="bootstrap/dist/js/bootstrap.min.js"></script> 
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