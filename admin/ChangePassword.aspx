<%@ Page Title="Change Password" Language="C#" MasterPageFile="~/admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="admin_ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
       
        .auto-style5 {
            width: 164px;
        }
        .auto-style6 {
            width: 59%;
        }
        .auto-style7 {
            text-align: center;
            color: #0033CC;
            font-size: x-large;
        }
    </style>
    <script type="text/javascript">
        function HideLabel() {
            var seconds = 5;
            setTimeout(function () {
                document.getElementById("<%=lblMsg.ClientID %>").style.display = "none";
            }, seconds * 1000);
        };
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <table style="width: 100%">
        <tr>
            <td style="width: 101px; height: 26px; text-align: left;">
                <strong>
                <asp:ImageButton ID="btnBack" runat="server" ImageUrl="~/images/Arrow Back.png" OnClick="btnBack_Click" />
                </strong>
            </td>

        </tr>
    </table>
    <table align="center" style="width:50%">
        <tr>
            <td class="auto-style7" colspan="2"><strong>Change Password</strong></td>
        </tr>
        <tr>
            <td class="auto-style5">User Id</td>
            <td class="auto-style6">
                <asp:TextBox ID="txtUI" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtUI" Display="Dynamic" ErrorMessage="*" style="color: #FF0000" ValidationGroup="q1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Old Password</td>
            <td class="auto-style6">
                <asp:TextBox ID="txtOP" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtOP" Display="Dynamic" ErrorMessage="*" style="color: #FF0000" ValidationGroup="q1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">New Password</td>
            <td class="auto-style6">
                <asp:TextBox ID="txtNP" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNP" Display="Dynamic" ErrorMessage="*" style="color: #FF0000" ValidationGroup="q1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Confirm New Password</td>
            <td class="auto-style6">
                <asp:TextBox ID="txtCNP" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtCNP" Display="Dynamic" ErrorMessage="*" style="color: #FF0000" ValidationGroup="q1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style6">
                <asp:Button ID="btnSave" runat="server" OnClick="Save_Click" Text="Save" ValidationGroup="q1" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="lblMsg" runat="server" style="text-align: center; color: #FF0000"></asp:Label>
                <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

