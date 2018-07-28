<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form action="#" method="post" id="form1" runat="server">
        <input class="text" type="text" id="txtUserId" runat="server" placeholder="Username" required="" />
        <input class="text" type="password" id="txtPassword" runat="server" placeholder="Password" required="" />
        <br />
        <asp:DropDownList ID="ddlCategory" runat="server" Height="40px" Width="100%" CssClass="text" Font-Size="1em">
            <asp:ListItem>Select Category</asp:ListItem>
            <asp:ListItem>Admin</asp:ListItem>
            <asp:ListItem>Vice Principal</asp:ListItem>
            <asp:ListItem>Teacher</asp:ListItem>
            <asp:ListItem>Student</asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="btnSubmit" Text="Login" runat="server" OnClick="Submit" />

        <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
        <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
    </form>

</asp:Content>

