<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin Login.aspx.cs" Inherits="WebApplication2.Admin_Login" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>EMS</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="main">
        <div class="navbar">
            <div class="icon">
                <h3 class="logo" style="color:white">EMS</h3>
            </div>
            <div class="menu">
                <ul>
                    <li><a href="../Contact.aspx">Help & Support</a></li>
                </ul>
            </div>


        </div>

        <div class="center">
        <h1>Login</h1>
        <form method="post" runat="server" >
          <div class="txt_field">
                <asp:TextBox ID="username"  runat="server" required=""  ></asp:TextBox>
            
            <span></span>
            <label>Username</label>
          </div>
          <div class="txt_field">
              <asp:TextBox ID="password" TextMode="Password" runat="server" required=""></asp:TextBox>
           
            <span></span>
            <label>Password</label>
          </div>

            <asp:Label ID="Label1" CssClass="invalid" runat="server" Text=""></asp:Label>
           
            
          <div class="pass">Forgot Password?</div>
                <asp:Button ID="Button" runat="server" Text="Login" OnClick="Button_Click1"  />
         
          <div class="signup_link">
            Not a member? <a href="../Contact.aspx">Signup</a>
          </div>
        </form>
            
      </div>
      
    </div>

</body>
</html>