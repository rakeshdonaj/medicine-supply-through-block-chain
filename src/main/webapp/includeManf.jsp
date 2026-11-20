 <%
    HttpSession sesion = request.getSession();
    String uname = (String)sesion.getAttribute("mname");
    String email = (String)sesion.getAttribute("memail");
  %>
<aside class="left-sidebar" data-sidebarbg="skin6">
           <div class="scroll-sidebar">
               <nav class="sidebar-nav">
                    <ul id="sidebarnav">
                       
                       <li class="sidebar-item pt-2">
                            <a class="sidebar-link waves-effect waves-dark"
                                aria-expanded="false">                               
                              <b>Welcome Manufacturer <%=uname%></b>
                            </a>
                        </li>
                        <li class="sidebar-item">
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="addItemManf.jsp"
                                aria-expanded="false">
                                <i class="fa fa-barcode" aria-hidden="true"></i>
                                <span class="hide-menu">Add Item</span>
                            </a>
                        </li>
                       
                        <li class="sidebar-item">
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="viewItemsManf.jsp"
                                aria-expanded="false">
                                <i class="fa fa-table" aria-hidden="true"></i>
                                <span class="hide-menu">View Item</span>
                            </a>
                        </li>                  
                         
                        <li class="sidebar-item">
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="viewSharedItemsManf.jsp"
                                aria-expanded="false">
                                <i class="fa fa-table" aria-hidden="true"></i>
                                <span class="hide-menu">View Shared Item</span>
                            </a>
                        </li> 
                        
                        <li class="sidebar-item">
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="keyRequestfromDistributor.jsp"
                                aria-expanded="false">
                                <i class="fa fa-key" aria-hidden="true"></i>
                                <span class="hide-menu">Key Request from Distributor</span>
                            </a>
                        </li>                  
                    </ul>

                </nav>              
            </div>           
        </aside>