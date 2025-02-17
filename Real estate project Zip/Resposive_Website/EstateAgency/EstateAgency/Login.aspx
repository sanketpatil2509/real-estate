﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Resposive_Website.EstateAgency.EstateAgency.startbootstrap_sb_admin_gh_pages.startbootstrap_sb_admin_gh_pages.Login" %>

<!DOCTYPE html>

<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Login - SB Admin</title>
        <link href="css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
        <style>
            body{
                background-image:url('assets/img/backimg.jpg');
            }
        </style>

    </head>
    <body>
        <div id="layoutAuthentication">

            <div id="layoutAuthentication_content">
             
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-5">
                                <div class="card shadow-lg border-0 rounded-lg mt-5" style="background-color:antiquewhite">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">Login</h3></div>
                                    <div class="card-body">
                                       
                                        <form runat="server">
                                            <div class="form-floating mb-3">
                                                <asp:TextBox ID="txtuser" runat="server" class="form-control"></asp:TextBox>
                                                <label for="inputEmail">Username</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <asp:TextBox ID="txtpassword" runat="server" class="form-control"></asp:TextBox>
                                                <label for="inputPassword">Password</label>
                                            </div>
                                            <div class="form-check mb-3">
                                                <input class="form-check-input" id="inputRememberPassword" type="checkbox" value="" />
                                                <label class="form-check-label" for="inputRememberPassword">Remember Password</label>
                                            </div>
                                            <div class="d-flex align-items-center justify-content-between mt-4 mb-0">
                                                <%--<a class="small"  href="password.aspx">Forgot Password?</a>--%><br />
                                                <asp:Button ID="Button1" runat="server" Text="Login" class="btn btn-primary btn-user btn-block" OnClick="Button1_Click"/>
                                                <asp:Label ID="lblmsg" runat="server" Text="" ForeColor="Red"></asp:Label>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="card-footer text-center py-3">
                                        <div class="small"><a href="register.aspx">Need an account? Sign up!</a></div>
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
