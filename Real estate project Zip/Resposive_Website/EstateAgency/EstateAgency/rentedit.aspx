<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rentedit.aspx.cs" Inherits="Resposive_Website.EstateAgency.EstateAgency.rentedit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Register - SB Admin</title>
   <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
<link href="css/styles.css" rel="stylesheet" />
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
</head>
<body class="bg-primary">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-lg-7">
                            <div class="card shadow-lg border-0 rounded-lg mt-5">
                                <div class="card-header"><h3 class="text-center font-weight-light my-4">Edit Account</h3></div>
                                <div class="card-body">
                                    <form runat="server" class="user">
                                        <div class="row mb-3">
                                            <div class="col-md-4">
                                                <div class="form-group">Fname
                                                    <asp:TextBox ID="txtfname" runat="server" class="form-control" ></asp:TextBox>
                                                </div></div>
                                            <div  class="col-md-4">
                                                <div class="form-group">Mname
                                                    <asp:TextBox ID="txtmname" runat="server" class="form-control" ></asp:TextBox>
                                                </div></div>
                                           
                                            <div class="col-md-4">
                                                <div class="form-group">Lname
                                                    <asp:TextBox ID="txtlname" runat="server" class="form-control"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                         <div class="row mb-3">
                                        <div class="col-md-4">
                                        <div class="form-group">Age
                                            <asp:TextBox ID="txtage" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        </div>
                                            <div class="col-md-6">
                                                <div class="form-group">Email
                                                    <asp:TextBox ID="txtemail" runat="server" class="form-control"></asp:TextBox>
                                                </div>
                                            </div></div>
                                        <div class="row mb-3">
                                            <div class="col-md-6">
                                                <div class="form-group">Occupation
                                                    <asp:TextBox ID="txtoccupation" runat="server" class="form-control"></asp:TextBox>
                                                </div>
                                            </div>
                                       
                                         
                                             <div class="col-md-6">
                                                 <div class="form-group">Mobile_No
                                                     <asp:TextBox ID="txtmobile" runat="server" class="form-control" ></asp:TextBox>
                                                 </div>
                                             </div>
                                        <div class="row mb-3">
                                             <div class="col-md-6">
                                                 <div class="form-group">Permenant_Add
                                                     <asp:TextBox ID="txtparadd" runat="server" class="form-control"></asp:TextBox>
                                                 </div>
                                             </div>
                                              
                                         </div>
                                         
                                        <div class="mt-4 mb-0">
                                             <asp:Button ID="Button1" runat="server" Text="Update" class="btn btn-primary btn-block" OnClick="Button1_Click"/>
                                            <asp:Label ID="lblmsg" runat="server" Text="" ForeColor="Red"></asp:Label>
                                        </div>
                                        <hr />
                                    </form>
                                </div>
                                
                            </div>
                        </div>
                    </div>
                </div>
           
        
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="js/scripts.js"></script>
</body>
</html>
