<%@ Page Title="" Language="C#" MasterPageFile="~/vice/viceMasterPage.master" AutoEventWireup="true" CodeFile="ArrangementStarter.aspx.cs" Inherits="vice_ArrangementStarter" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 80%;
            text-align: center;
        }
        .auto-style4 {
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="auto-style3">
        <tr>
            <td>
                <b>Do you want to make an arrangement for today ? If yes, then click on Yes button below.</b></td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnNext" runat="server" Text="Yes" OnClick="btnNext_Click" BorderStyle="Solid" />
              
                <asp:Label ID="lblError" runat="server" ForeColor="Red" style="text-align: center; font-size: medium; font-weight: 700;"></asp:Label>
              
            </td>
        </tr>
    </table>
</asp:Content>

