 <%
    HttpSession sesion = request.getSession();
    String dname = (String)sesion.getAttribute("dname");
    String demail = (String)sesion.getAttribute("demail");
  %>
<aside class="left-sidebar" data-sidebarbg="skin6">
           <div class="scroll-sidebar">
               <nav class="sidebar-nav">
                    <ul id="sidebarnav">
                       
                       <li class="sidebar-item pt-2">
                            <a class="sidebar-link waves-effect waves-dark"
                                aria-expanded="false">                               
                              <b>Welcome Distributor <%=dname%></b>
                            </a>
                        </li>                        
                                        
                        <li class="sidebar-item">
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="sharedItemDetailsDist.jsp"
                                aria-expanded="false">
                                <i class="fa fa-table" aria-hidden="true"></i>
                                <span class="hide-menu">Manufacturer Item Shared Info</span>
                            </a>
                        </li>
                         
                         <li class="sidebar-item">
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="shareItemtoPatient.jsp"
                                aria-expanded="false">
                                <i class="fa fa-table" aria-hidden="true"></i>
                                <span class="hide-menu">Share Item to Patient</span>
                            </a>
                        </li>
                        
                        <li class="sidebar-item">
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="shareItemtoHospital.jsp"
                                aria-expanded="false">
                                <i class="fa fa-table" aria-hidden="true"></i>
                                <span class="hide-menu">Share Item to Hospital</span>
                            </a>
                        </li>
                         
                        <li class="sidebar-item">
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="viewShareItemDetailsDist.jsp"
                                aria-expanded="false">
                                <i class="fa fa-table" aria-hidden="true"></i>
                                <span class="hide-menu">View Share Item Details</span>
                            </a>
                        </li>
                       
                       <li class="sidebar-item">
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="keyRequestfromPatient.jsp"
                                aria-expanded="false">
                                <i class="fa fa-key" aria-hidden="true"></i>
                                <span class="hide-menu">Key Request from Patient</span>
                            </a>
                        </li>  
                        
                         <li class="sidebar-item">
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="keyRequestfromHospital.jsp"
                                aria-expanded="false">
                                <i class="fa fa-key" aria-hidden="true"></i>
                                <span class="hide-menu">Key Request from Hospital</span>
                            </a>
                        </li> 
                                            
                    </ul>

                </nav>              
            </div>           
        </aside>