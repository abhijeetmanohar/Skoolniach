<%@ Page Title="" Language="C#" MasterPageFile="~/vice/viceMasterPage.master" AutoEventWireup="true" CodeFile="Profile.aspx.cs" Inherits="vice_Profile1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="codes">
        <div class="agile-container">
            <div class="grid_3 grid_5 wow fadeInUp animated" data-wow-delay=".5s">
                <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>



                <table align="center" class="col-md-13">
                    <tr>
                        <td>
                            <div class="col-md-13">
                                <asp:Image ID="Image4" runat="server" Height="300px" ImageUrl="ViewCode.aspx?ImageID=1" ToolTip="Profile Pic." Width="300   px" />
                                <div class="list-group list-group-alternate">
                                    <a href="#" class="list-group-item"><span class="badge">
                                        <asp:Label ID="lblName" runat="server" Text=""></asp:Label></span>User Id </a>
                                </div>
                            </div>
                        </td>
                    </tr>
                </table>



                <div class="clearfix"></div>
            </div>
        </div>
    </div>
</asp:Content>

