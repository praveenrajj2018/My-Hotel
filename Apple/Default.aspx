<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    
    <link rel="stylesheet" href="login.css" />


</head>
<body>

    <div class="container" id="container">
        <div class="form-container sign-up-container">
            <form id="form1" runat="server">
                <div>
                    <asp:TextBox ID="txtName" runat="server" placeholder="Name">

                    </asp:TextBox> <br /> <asp:TextBox ID="txtEmail" runat="server" placeholder="Email"></asp:TextBox>
                    <br />
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
                    <br /> <asp:Button ID="btnSignUp" runat="server" Text="Sign Up" OnClick="SignUpButton_Click" />
                </div>
            </form>
        </div>
        <div class="form-container sign-in-container">
            <form action="#">
                <h1>Sign in</h1>

                <span>or use your account</span>
                <input type="email" placeholder="Email" />
                <input type="password" placeholder="Password" />
                <a href="./Menu.html">Forgot your password?</a>
                <button id="Button1"><a href="login.html">Sign In</a></button>
            </form>
        </div>
        <div class="overlay-container">

            <div class="overlay" >
                <div class="overlay-panel overlay-left">
                    <h1>Welcome Back!</h1>
                    <p>To keep connected with us please login with your personal info</p>
                    <button class="ghost" id="signIn">Sign In</button>
                </div>
                <div class="overlay-panel overlay-right">
                    <h1>Hello, Friend!</h1>
                    <p>Enter your personal details and start journey with us</p>
                    <button class="ghost" id="signUp">Sign Up</button>
                     <a href="Admin_login.html" style="color:white">Login as administrator</a>
                </div>
            </div>
        </div>
    </div>


    <script src="login.js"></script>
</body>
</html>