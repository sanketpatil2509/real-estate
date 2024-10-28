<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="Resposive_Website.EstateAgency.EstateAgency.startbootstrap_sb_admin_gh_pages.startbootstrap_sb_admin_gh_pages.register" %>

<!DOCTYPE html>

<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Register - SB Admin</title>
        <link href="css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
        <style>
            body{
                background-image:url('assets/img/backimg.jpg');
            }
</style>
    </head>
    <body >
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-7">
                                <div class="card shadow-lg border-0 rounded-lg mt-5" style="background-color:antiquewhite">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">Registration</h3></div>
                                    <div class="card-body">
                                        <form runat="server">
                                            <div class="row mb-3">
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <asp:TextBox ID="txtfname" runat="server" class="form-control" AutoPostBack="true"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="Dynamic" runat="server" ErrorMessage="Fill the First Name" ControlToValidate="txtfname" ForeColor="Red"></asp:RequiredFieldValidator>
                                                        <label for="inputFirstName">First name</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating">
                                                        <asp:TextBox ID="txtlname" runat="server" class="form-control" OnTextChanged="txtlname_TextChanged" AutoPostBack="true" ></asp:TextBox>
                                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Fill the Last Name"  ControlToValidate="txtlname" ForeColor="Red"></asp:RequiredFieldValidator>
                                                        <label for="inputLastName">Last name</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                            <div class="col-md-6">
                                                <div class="form-floating">
                                                    <asp:TextBox ID="txtuser" runat="server" CssClass="form-control"></asp:TextBox>
                                                    <label for="inputLastName">Username</label>
                                                </div>
                                            </div>
                                                <div class="col-md-6">
                                            <div class="form-floating">
                                                   <asp:TextBox ID="txtemail" runat="server" class="form-control"></asp:TextBox>
                                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Fill the Email Id" ControlToValidate="txtemail" ForeColor="Red"></asp:RequiredFieldValidator>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ErrorMessage="Please fill the email Id in correct format" ControlToValidate="txtemail" ForeColor="Red"></asp:RegularExpressionValidator>      
                                                <label for="inputEmail">Email address</label>
                                            </div></div>
                                            </div>
                                            <div class="row mb-3">
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                    <asp:TextBox ID="txtpassword" runat="server" class="form-control"></asp:TextBox>
                                                       <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Fill the password" ControlToValidate="txtpassword" ForeColor="Red"></asp:RequiredFieldValidator>
                                                       <label for="inputPassword">Password</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <asp:TextBox ID="txtcpassword" runat="server" class="form-control"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Fill the confirm password" ControlToValidate="txtcpassword" ForeColor="Red"></asp:RequiredFieldValidator>
                                                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password not matched" ControlToValidate="txtcpassword" ControlToCompare="txtpassword" ForeColor="Red"></asp:CompareValidator>
                                                        <label for="inputPasswordConfirm">Confirm Password</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <div class="col-md-6">
                                                    <div class="form-floating">Role:
                                                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                                                            <asp:ListItem>--Select Role--</asp:ListItem>
                                                            <asp:ListItem>Admin</asp:ListItem>
                                                            <asp:ListItem>Manager</asp:ListItem>
                                                            <asp:ListItem>Team Leader</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </div>
                                                </div>    
                                                <div class="col-md-6" >
                                                    <div>Gender:
                                                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" class="form-control" RepeatDirection="Horizontal" >
                                                            <asp:ListItem ID="rmale" style="padding-left:10px;">Male</asp:ListItem>
                                                            <asp:ListItem ID="rfemale" style="padding-left:30px;">Female</asp:ListItem>
                                                        </asp:RadioButtonList><br>
                                                    </div>
                                                </div> 
                                               
                                            </div>
                                             <div class="row mb-3">
                                                
                                           
                                            <div class="mt-4 mb-0" style="text-align:center">
                                                <asp:Button ID="Button1" runat="server" Text="Registeration" class="btn btn-primary btn-block"  OnClick="Button1_Click"/>
                                                <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="card-footer text-center py-3">
                                        <div class="small"><a href="login.aspx">Have an account? Go to login</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
            <div id="layoutAuthentication_footer">
                <footer class="py-4 bg-light mt-auto">
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
                </footer>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
    </body>
</html>
