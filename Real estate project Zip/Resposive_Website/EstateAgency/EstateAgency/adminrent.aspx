<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminrent.aspx.cs" Inherits="Resposive_Website.EstateAgency.EstateAgency.startbootstrap_sb_admin_gh_pages.startbootstrap_sb_admin_gh_pages.index" %>
<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminindex.aspx.cs" Inherits="Resposive_Website.EstateAgency.EstateAgency.adminindex" %>--%>

<!DOCTYPE html>

<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Dashboard - SB Admin</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
        <link href="css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="index.html">Start Bootstrap</a>
            <!-- Sidebar Toggle-->
            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
            <!-- Navbar Search-->
            <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0" runat="server">
               <%-- <div class="input-group">
                    <input class="form-control" type="text" placeholder="Search for..." aria-label="Search for..." aria-describedby="btnNavbarSearch" />
                    <button class="btn btn-primary" id="btnNavbarSearch" type="button"><i class="fas fa-search"></i></button>
                </div>--%>
            
            <!-- Navbar-->
            <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="#!">Settings</a></li>
                        <li><a class="dropdown-item" href="#!">Activity Log</a></li>
                        <li><hr class="dropdown-divider" /></li>
                        <li><a class="dropdown-item" href="Login.aspx">Logout</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
           <div id="layoutSidenav">
        <div id="layoutSidenav_nav">
            <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                <div class="sb-sidenav-menu">
                    <div class="nav">
                        <a class="nav-link" href="#">
                            <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                            Dashboard
                        </a>
                        <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                            <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                            Booking Details
                            <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                        </a>
                        <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                            <nav class="sb-sidenav-menu-nested nav">
                                <a class="nav-link" href="adminsale.aspx"> Sale Booking Details </a>
                                <a class="nav-link" href="adminrent.aspx"> Rent Booking Details</a>
                            </nav>
                        </div>
                         <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                           <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                             Agents
                           <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                           </a>
                         <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                          <nav class="sb-sidenav-menu-nested nav">
                           <a class="nav-link" href="adminagent.aspx"> Show Agents </a>
                          <a class="nav-link" href="agentdetails.aspx"> Add Agents</a>
                         </nav>
                          </div>
                        
                          <a class="nav-link" href="admincontact.aspx">Contact</a>                    <%-- <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapsePages" aria-expanded="false" aria-controls="collapsePages">
                                <div class="sb-nav-link-icon"><i class="fas fa-book-open"></i></div>
                                
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>--%>
                            <div class="collapse" id="collapsePages" aria-labelledby="headingTwo" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                                    <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#pagesCollapseAuth" aria-expanded="false" aria-controls="pagesCollapseAuth">
                                        Authentication
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <div class="collapse" id="pagesCollapseAuth" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav">
                                            <a class="nav-link" href="login.html">Login</a>
                                            <a class="nav-link" href="register.html">Register</a>
                                            <a class="nav-link" href="password.html">Forgot Password</a>
                                        </nav>
                                    </div>
                                    <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#pagesCollapseError" aria-expanded="false" aria-controls="pagesCollapseError">
                                        Error
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <div class="collapse" id="pagesCollapseError" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav">
                                            <a class="nav-link" href="401.html">401 Page</a>
                                            <a class="nav-link" href="404.html">404 Page</a>
                                            <a class="nav-link" href="500.html">500 Page</a>
                                        </nav>
                                    </div>
                                </nav>
                            </div>
                           <%-- <div class="sb-sidenav-menu-heading">Addons</div>
                            <a class="nav-link" href="charts.html">
                                <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                                Charts
                            </a>
                            <a class="nav-link" href="tables.html">
                                <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                Tables
                            </a>--%>
                        </div>
                    </div>
                    <div class="sb-sidenav-footer">
                        <div class="small">Logged in as:</div>
                        Start Bootstrap
                    </div>
                </nav>
            </div>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">Dashboard</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">Dashboard</li>
                        </ol>
                        <div class="row">
    <div class="col-xl-3 col-md-6">
        <div class="card bg-primary text-white mb-4">
            <div class="card-body">Total Sales
                <div>
                    <div >
                     <asp:Label runat="server" ID="lblsalescount"></asp:Label>
                    </div>
                </div>
            </div>
            <div class="card-footer d-flex align-items-center justify-content-between">
                <a class="small text-white stretched-link" href="adminsale.aspx">View Details</a>
                <div class="small text-white"><i class="fas fa-angle-right"></i></div>
            </div>
        </div>
    </div>
    <div class="col-xl-3 col-md-6">
        <div class="card bg-warning text-white mb-4">
            <div class="card-body">Total Rents 
                <div >
                   <asp:Label runat="server" ID="LBLRentcount"></asp:Label>
                </div>
            </div>
            <div class="card-footer d-flex align-items-center justify-content-between">
                <a class="small text-white stretched-link" href="adminrent.aspx">View Details</a>
                <div class="small text-white"><i class="fas fa-angle-right"></i></div>
            </div>
        </div>
    </div>
    <div class="col-xl-3 col-md-6">
        <div class="card bg-success text-white mb-4">
            <div class="card-body">Agents  
                <div >
                    <div>
                        <asp:Label runat="server" ID="LBLAgentCount"></asp:Label>
                     </div>
                 </div>
            </div>
            <div class="card-footer d-flex align-items-center justify-content-between">
                <a class="small text-white stretched-link" href="adminagent.aspx">View Details</a>
                <div class="small text-white"><i class="fas fa-angle-right"></i></div>
            </div>
        </div>
    </div>
    <div class="col-xl-3 col-md-6">
        <div class="card bg-danger text-white mb-4">
            <div class="card-body">Online Visitors
                 <div>
                     <asp:Label runat="server" ID="lblcontactcount"></asp:Label>
                  </div>
            </div>
            <div class="card-footer d-flex align-items-center justify-content-between">
                <a class="small text-white stretched-link" href="admincontact.aspx">View Details</a>
                <div class="small text-white"><i class="fas fa-angle-right"></i></div>
            </div>
        </div>
    </div>
</div>
                        <%--<div class="row">
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-area me-1"></i>
                                        Area Chart Example
                                    </div>
                                    <div class="card-body"><canvas id="myAreaChart" width="100%" height="40"></canvas></div>
                                </div>
                            </div>
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-bar me-1"></i>
                                        Bar Chart Example
                                    </div>
                                    <div class="card-body"><canvas id="myBarChart" width="100%" height="40"></canvas></div>
                                </div>
                            </div>
                        </div>--%>
                       <%-- <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                DataTable Example
                            </div>--%>
                        <hr />

                        <h1 style="margin:10px; padding:10px">Rent Details</h1>
                            <div class="card-body">
                                <div class="card-body" style="margin-left:40px;">
                                    <asp:TextBox ID="txtsearch" runat="server" Width="250px" BorderStyle="Groove"></asp:TextBox>
                                       <b> <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" BorderStyle="Groove"/></b></div>
                                <table id="datatablesSimple" style="width:auto;margin:20px; border:solid"class="table table-bordered" >
                                    <thead style="background-color:skyblue">
                                        <tr>
                                            <td>Id</td>
                                            <th>Location</th>
                                            <th>Sector_No</th>
                                            <th>Unit_No</th>
                                            <th>Build_Types</th>
                                            <th>Fname</th>
                                            <th>Mname</th>
                                            <th>Lname</th>
                                            <th>Age</th>
                                            <th>Occupation</th>
                                            <th>Mobile_No</th>
                                            <th>Email</th>
                                            <th>DOB</th>
                                            <th>RCDate</th>
                                            <th>Adhar_No</th>
                                            <th>Permenant_Add</th>
                                            <th>Agent_Id</th>
                                            <th>Rent_Amount</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <asp:Repeater ID="rptrentdeatils" runat="server">
                                        <ItemTemplate>
                                            <tbody style="background-color:lightcyan">
                                                <td><%#Eval("Id") %></td>
                                                <td><%#Eval("Location") %></td>
                                                <td><%#Eval("Sector_No") %></td>
                                                <td><%#Eval("Unit_No") %></td>
                                                <td><%#Eval("Build_Types") %></td>
                                                <td><%#Eval("Fname") %></td>
                                                <td><%#Eval("Mname") %></td>
                                                <td><%#Eval("Lname") %></td>
                                                <td><%#Eval("Age") %></td>
                                                <td><%#Eval("Occupation") %></td>
                                                <td><%#Eval("Mobile_No") %></td>
                                                <td><%#Eval("Email") %></td>
                                                <td><%#Eval("DOB") %></td>
                                                <td><%#Eval("RCDate") %></td>
                                                <td><%#Eval("Adhar_No") %></td>
                                                <td><%#Eval("Permenant_Add") %></td>
                                                <td><%#Eval("Agent_Id") %></td>
                                                <td><%#Eval("Rent_Amount") %></td>
                                                <td>
                                                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Delete</asp:LinkButton>
                                                    <asp:Label ID="Label1" runat="server" Text='<%#Eval("Id") %>' Visible="false"></asp:Label>
                                                </td>
                                                <td>
                                                     <%--<asp:LinkButton ID="lbtnedit" runat="server" OnClick="lbtnedit_Click1">Edit</asp:LinkButton>
                                                    <asp:TextBox ID="txteditid" Visible="false" runat="server" Text='<%#Eval("Id") %>'></asp:TextBox>--%>
                                                       <%--<asp:Label ID="lbledit" runat="server" Text='<%#Eval("Id") %>' Visible="false"></asp:Label>--%>
                                                    <a href="rentedit.aspx?id=<%#Eval("Id") %>">Edit</a>
                                                </td>
                                            </tbody>

                                        </ItemTemplate>
                                    </asp:Repeater>
                                </table>
                                
                            </div>
                        </div>
                         
                            </div>
                            
                    </main>
                    </div>
            
                </form>
            </div>
               <%-- <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Your Website 2023</div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>--%>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="assets/demo/chart-area-demo.js"></script>
        <script src="assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js" crossorigin="anonymous"></script>
        <script src="js/datatables-simple-demo.js"></script>
    </body>
</html>