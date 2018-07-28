<%@ Page Title="" Language="C#" MasterPageFile="~/student/studentMasterPage.master" AutoEventWireup="true" CodeFile="Profile.aspx.cs" Inherits="vice_Profile1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 80%;
            background-image: url('../images/2.jpg');
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="codes">
        <div class="agile-container">
            <div class="grid_3 grid_5 wow fadeInUp animated" data-wow-delay=".5s">
                <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
                <div class="col-md-5" style="text-align: right">
                    <asp:Image ID="Image4" runat="server" Height="300px" ImageUrl="ViewCode.aspx?ImageID=1" ToolTip="Profile Pic." Width="300   px" />
                </div>
                <div class="col-md-5">

                    <div class="list-group list-group-alternate">
                        <a href="#" class="list-group-item"><span class="badge">
                            <asp:Label ID="lblName" runat="server" Text=""></asp:Label></span>Name </a>
                        <a href="#" class="list-group-item"><span class="badge badge-primary">
                            <asp:Label ID="lblClass" runat="server" Text=""></asp:Label></span>Class </a>
                        <a href="#" class="list-group-item"><span class="badge">
                            <asp:Label ID="lblAN" runat="server" Text=""></asp:Label></span>Admission Number  </a>
                        <a href="#" class="list-group-item"><span class="badge">
                            <asp:Label ID="lblGender" runat="server" Text=""></asp:Label></span>Gender </a>
                        <a href="#" class="list-group-item"><span class="badge badge-warning">
                            <asp:Label ID="lblHouse" runat="server" Text=""></asp:Label></span>House </a>
                        <a href="#" class="list-group-item"><span class="badge badge-warning">
                            <asp:Label ID="lblFatherName" runat="server" Text=""></asp:Label></span>Father Name </a>

                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
</asp:Content>

