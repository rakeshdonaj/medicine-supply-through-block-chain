 <%
 	HttpSession sesion = request.getSession();
	String hname = (String)sesion.getAttribute("hname");
	String hemail = (String)sesion.getAttribute("hemail");
  %>
<aside class="left-sidebar" data-sidebarbg="skin6">
           <div class="scroll-sidebar">
               <nav class="sidebar-nav">
                    <ul id="sidebarnav">
                       
                       <li class="sidebar-item pt-2">
                            <a class="sidebar-link waves-effect waves-dark"
                                aria-expanded="false">                               
                              <b>Welcome Hospital <%=hname%></b>
                            </a>
                        </li>
                       
                       
                        <li class="sidebar-item">
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="viewItemsharedByDistHospital.jsp"
                                aria-expanded="false">
                                <i class="fa fa-table" aria-hidden="true"></i>
                                <span class="hide-menu">View Item SharedBy Distributor</span>
                            </a>
                        </li>                  
                         
                                  
                    </ul>

                </nav>              
            </div>           
        </aside>