 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="WebApplication2.Home_Page.WebForm1" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>EMS</title>
    <link rel="stylesheet" href="StyleSheet1.css">
    
</head>
<body>
    <div class="main">
        <div class="navbar">
            <div class="icon">
                <h3 class="logo" style="color:white">EMS</h3>
                <div class="menu">
                    <ul>
                        <li><a href="../Contact.aspx">Help & Support</a></li>
                    </ul>
                </div>
            </div>
            

        </div>
    

<%--<div class="content" style="height:auto">
    <form id="details" runat="server">
                    

    <div class="txtar">
        
            <div class="tag">
                <div class="form-group">

                    <asp:Label ID="Label1" runat="server" Text="ID"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" Width="100px" CssClass="input" placeholder="ID"></asp:TextBox>

                </div>
           
              
                    <div class="form-group">

                    <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server" Width="100px" CssClass="input" placeholder="Name"></asp:TextBox>

                    </div>
               
                    <div class="form-group">

                    <asp:Label ID="Label3" runat="server" Text="DOB"></asp:Label>
                    <asp:TextBox ID="TextBox3" runat="server" Width="100px" TextMode="Date" CssClass="input" placeholder="D0B"></asp:TextBox>

                    </div>
               
                    <div class="form-group">

                    <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
                    <asp:TextBox ID="TextBox4" runat="server" Width="100px" CssClass="input" placeholder="Email"></asp:TextBox>

                    </div>
             </div>



       <div class="tag1">
                    <div class="form-group">

                        <asp:Label ID="Label5" runat="server" Text="Contact"></asp:Label>
                        <asp:TextBox ID="TextBox5" runat="server" Width="100px" CssClass="input" placeholder="Contact"></asp:TextBox>

                    </div>
                
               
                    <div class="form-group">

                    <asp:Label ID="Label6" runat="server" Text="Salary"></asp:Label>
                    <asp:TextBox ID="TextBox6" runat="server" Width="100px" CssClass="input" placeholder="Salary"></asp:TextBox>

                    </div>
                
                
                    <div class="form-group">

                    <asp:Label ID="Label7" runat="server" Text="Gender"></asp:Label>
                            <asp:DropDownList ID="DropDown" runat="server" Width="100px" CssClass="input" placeholder="Geneder">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                                <asp:ListItem>Other</asp:ListItem>
                            </asp:DropDownList>
                    </div>
                    
                
                    <div class="form-group">
                        <asp:Label ID="Label8" runat="server" Text="Passwd"></asp:Label>
                        <asp:TextBox ID="TextBox8" runat="server" Width="100px" CssClass="input" placeholder="Passwd"></asp:TextBox>
                    </div>
                
           </div>

         <div class="Buttons">
                
            <asp:Button ID="ADD" runat="server" Text="ADD" CssClass="B1" OnClick="ADD_Click" />
            <asp:Button ID="DELETE" runat="server" Text="DELETE" CssClass="B2" OnClick="DELETE_Click" />
            <asp:Button ID="EDIT" runat="server" Text="UPDATE" CssClass="B3" OnClick="EDIT_Click" />
            <asp:Button ID="VIEW" runat="server" Text="VIEW" CssClass="B4" OnClick="VIEW_Click" />


        </div>



      </div>

    

  
            
                
                <asp:GridView ID="GridView1" runat="server" CellPadding="2"  AllowPaging="true" PageSize="5" ForeColor="#333333"  GridLines="None"   Width="100%" CssClass="emp_table" OnRowDataBound="GridView1_RowDataBound" OnPageIndexChanging="GridView1_PageIndexChanging"  AutoGenerateSelectButton="true" Height="300px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                        <AlternatingRowStyle BackColor="White" />
                        <EditRowStyle BackColor="#7C6F57" />
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White"/>
                        <HeaderStyle BackColor="#6c6d78" Font-Bold="True" ForeColor="White" Font-Size="Larger" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                        <SelectedRowStyle BackColor="#3a85e0" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F8FAFA" />
                        <SortedAscendingHeaderStyle BackColor="#246B61" />
                        <SortedDescendingCellStyle BackColor="#D4DFE1" />
                        <SortedDescendingHeaderStyle BackColor="#15524A" />
                    </asp:GridView>
               



        </form>
        
    </div>--%>


    <section class="container">
        <header>Registration Form</header>
        <form action="#" class="form" runat="server">
            <div class="column">
              <div class="input-box">
                <asp:Label ID="Label1" runat="server" Text="ID" ForeColor="White" ></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" Width="100px"  placeholder="ID" ></asp:TextBox>
              </div>
              <div class="input-box">
                <asp:Label ID="Label2" runat="server" Text="Name" ForeColor="White"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" Width="100px"  placeholder="Name"></asp:TextBox>
              </div>
            </div>
              <div class="column">
                <div class="input-box">
                <asp:Label ID="Label3" runat="server" Text="DOB" ForeColor="White"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server" Width="100px"  TextMode="Date" placeholder="DOB"></asp:TextBox>
                </div>
                <div class="input-box">
                <asp:Label ID="Label4" runat="server" Text="Email" ForeColor="White"></asp:Label>
                <asp:TextBox ID="TextBox4" runat="server" Width="100px"  placeholder="Email"></asp:TextBox>
                </div>
              </div>
            <div class="column">
              <div class="input-box">
                  <asp:Label ID="Label5" runat="server" Text="Contact" ForeColor="White"></asp:Label>
                  <asp:TextBox ID="TextBox5" runat="server" Width="100px"  placeholder="Contact"></asp:TextBox>
              </div>
              <div class="input-box">
                  <asp:Label ID="Label6" runat="server" Text="Salary" ForeColor="White"></asp:Label>
                  <asp:TextBox ID="TextBox6" runat="server" Width="100px"  placeholder="Salary"></asp:TextBox>
              </div>
            </div>
            <div class="column">
              <div class="input-box">
                  <asp:Label ID="Label7" runat="server" Text="Gender" ForeColor="White"></asp:Label>
                  <asp:DropDownList ID="DropDown" runat="server" Width="100px" CssClass="Gender" placeholder="Geneder">
                      <asp:ListItem>Male</asp:ListItem>
                      <asp:ListItem>Female</asp:ListItem>
                      <asp:ListItem>Other</asp:ListItem>
                  </asp:DropDownList>
              </div>
              <div class="input-box">
                  <asp:Label ID="Label8" runat="server" Text="Passwd" ForeColor="White"></asp:Label>
                  <asp:TextBox ID="TextBox7" runat="server" Width="100px"  placeholder="Passwd"></asp:TextBox>
              </div>
            </div>
          

            <div class="Buttons">  
                <asp:Button ID="Button1" runat="server" Text="ADD" CssClass="B1"   OnClick="ADD_Click" />
                <asp:Button ID="Button2" runat="server" Text="DELETE" CssClass="B2" OnClick="DELETE_Click" />
                <asp:Button ID="Button3" runat="server" Text="UPDATE" CssClass="B3" OnClick="EDIT_Click" />
                <asp:Button ID="Button4" runat="server" Text="VIEW" CssClass="B4" OnClick="VIEW_Click" />
            </div>


            <asp:GridView ID="GridView1" runat="server" CellPadding="2"  AllowPaging="true" PageSize="5" ForeColor="#333333"  GridLines="None"   Width="100%" CssClass="emp_table" OnRowDataBound="GridView1_RowDataBound" OnPageIndexChanging="GridView1_PageIndexChanging" AutoGenerateSelectButton="true" Height="300px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                            <AlternatingRowStyle BackColor="White" />
                            <EditRowStyle BackColor="#7C6F57" />
                            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White"/>
                            <HeaderStyle BackColor="#6c6d78" Font-Bold="True" ForeColor="White" Font-Size="Larger" />
                            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#E3EAEB" />
                            <SelectedRowStyle BackColor="#3a85e0" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F8FAFA" />
                            <SortedAscendingHeaderStyle BackColor="#246B61" />
                            <SortedDescendingCellStyle BackColor="#D4DFE1" />
                            <SortedDescendingHeaderStyle BackColor="#15524A" />
                        </asp:GridView>


        </form>
    </section>
</div>

 


</body>
</html>
