<%@ Page Title="Emp | Management" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

   



    <asp:TextBox ID="TextBox1_user" runat="server"  placeholder="user info"></asp:TextBox>
    <br />
     <asp:TextBox ID="TextBox_password" placeholder="password" runat="server"></asp:TextBox>

    <asp:Button ID="Button1" runat="server" Text="login" OnClick="Button1_Click" />



</asp:Content>
