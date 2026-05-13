<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login_Master.aspx.cs" Inherits="Login_Master" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>Manav Bharti National School</title>
    <!-- Bootstrap Min CSS -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css" />
    <!-- Style CSS -->
    <link rel="stylesheet" href="assets/css/style.css" />
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="assets/css/responsive.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" />
    <!-- Favicon -->
    <link rel="icon" type="image/png" href="uploads/icon.png" />

    

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <section class="user-area ptb-100">
                <div class="container">
                    <div class="user-form-content max-width-600">
                        <div class="user-form">
                            <%--<h3 class="text-center">Welcome Back!</h3>--%>
                           <div class="text-center mb-2 logo-box">
                                <img src="uploads/ManavBhartiSchool_logo.png" 
                                     class="img-fluid" 
                                     alt="Logo" 
                                      />
                            </div>
                            <hr />

                            
                            
                            <div class="row">

                                <div class="col-12">
                                    <div class="form-group">
                                        <label>User Name:</label>
                                        <asp:TextBox ID="txtUsername" runat="server" placeholder="Enter Username"
                                            CssClass="form-control" />

                                        <asp:RequiredFieldValidator
                                            ID="rfvUsername"
                                            runat="server"
                                            ControlToValidate="txtUsername"
                                            ErrorMessage="Username is required"
                                            Display="Dynamic"
                                            ValidationGroup="login"
                                            CssClass="text-danger">
                                        </asp:RequiredFieldValidator>
                                    </div>
                                </div>

                                <div class="col-12">
                                    <div class="form-group">
                                        <label>Password:</label>
                                        <asp:TextBox ID="txtPassword" runat="server" placeholder="Enter password"
                                            CssClass="form-control"
                                            TextMode="Password" />

                                        <asp:RequiredFieldValidator
                                            ID="rfvPassword"
                                            runat="server"
                                            ControlToValidate="txtPassword"
                                            ErrorMessage="Password is required"
                                            Display="Dynamic"
                                            ValidationGroup="login"
                                            CssClass="text-danger">
                                        </asp:RequiredFieldValidator>
                                    </div>
                                </div>

                                <div class="col-12">
                                    <div class="login-action" >
                                        <span class="log-rem" ID="checkbox_div" runat="server" >
                                            <asp:CheckBox ID="chkRemember" runat="server" />
                                            <label for="chkRemember">Remember Me</label>
                                        </span>

                                        <span class="forgot-login">
                                            <a class="text-danger" href="#">Forgot your password?</a>
                                        </span>
                                    </div>
                                </div>

                                <div class="col-12 ">
                                   <asp:Button ID="btnSignIn"
                                    runat="server"
                                    class="default-btn w-100"
                                   Text="Login" OnClick="btnSignIn_Click"
                                    ValidationGroup="login">
                                 
                                   </asp:Button>

                                </div>
                                <div class="col-12 ">
                                   <asp:Button ID="btnSignUp"
                                    runat="server"
                                    class="default-btn-2 w-100"
                                   Text="SignUp" Visible="false" OnClick="btnSignUp_Click"
                                    ValidationGroup="login">
                                 
                                   </asp:Button>
                                    </div>
                                    <div class="text-center text-danger fw-medium">
                                        <asp:Label  runat="server" ID="Message"> </asp:Label>
                                    </div>
                                     

                               <%-- <div class="col-12 ">
                                  <asp:Button ID="btnTestDecrypt"
                                      class="default-btn-2 w-100"
                                runat="server"
                                Text="Test Decrypt"
                                OnClick="btnTestDecrypt_Click" />
                                 

                                </div>--%>

                                <div class="col-12">
                                   
                                    <p class="create text-dark">  
                                        Don’t have an account? 
                                    <a href="#">Signup</a>
                                    </p>
                                </div>
                                 

                                <div class="text-center mt-3 ">
                                        <p style="margin-bottom: 0px !important; font-weight: bold; color:#000; font-size: 15px">© 2026 Manav Bharti National School, All Rights Reserved.</p>
                                       
          
                                    <p style="margin-bottom: 0px !important; font-size: 15px; color:#000">
                                            Developed By
                                         <a href="https://uplinfotech.com/" target="_blank"> <img src="uploads/uplinfotech.png" height="25" class="mt-3" style="width:100px" alt="UPL INFOTECH" title="UPL INFOTECH"/></a>
                                        </p>
                                    </div>

                           
                        </div>
                    </div>
                        </div> 
                </div>
            </section>
        </div>
    </form>
    <script src="assets/js/jquery.min.js"></script>
    <!-- Bootstrap Bundle Min JS -->
    <script src="assets/js/bootstrap.bundle.min.js"></script>
</body>
</html>
