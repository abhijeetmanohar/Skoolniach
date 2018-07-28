<%@ Page Title="Add Class" Language="C#" MasterPageFile="~/admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="AddClass.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script type="text/javascript">
        function HideLabel() {
            var seconds = 5;
            setTimeout(function () {
                document.getElementById("<%=lblACMsgs.ClientID %>").style.display = "none";
            }, seconds * 1000);
        };
    </script>
                <table style="width: 100%">
        <tr>
            <td style="width: 101px; height: 26px; text-align: left;">
                <strong>
                <asp:ImageButton ID="btnBack" runat="server" ImageUrl="~/images/Arrow Back.png" OnClick="btnBack_Click" />
                </strong>
            </td>

        </tr>
    </table>
          <p class="top-menu" style="text-align: center"> <img src="../images/addclass.png" /> <span style="font-size: x-large">  &nbsp;&nbsp; <strong>ADD A NEW CLASS</strong></span></p>
     <table align="center" style="width: 50%">
        
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        
        <tr>
            <td><span style="color: #FF0000">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtAddClass" Display="Dynamic" ErrorMessage="*" ValidationGroup="q1"></asp:RequiredFieldValidator>
                </span>Enter a new class</td>
            <td class="auto-style3">
    <asp:TextBox ID="txtAddClass" runat="server"></asp:TextBox>
    <asp:Button ID="btnAddClass" runat="server" OnClick="btnAddClass_Click" Text="ADD" ValidationGroup="q1" />
    <asp:Label ID="lblACMsgs" runat="server" style="color: #FF0000"></asp:Label>
            </td>
        </tr>
        
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        
        <tr>
            <td colspan="2"><asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" Width="50px">
              <AlternatingRowStyle BackColor="#DCDCDC" />
              <Columns>               
                  <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" />
              </Columns>
              <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
              <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
              <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
              <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
              <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
              <SortedAscendingCellStyle BackColor="#F1F1F1" />
              <SortedAscendingHeaderStyle BackColor="#0000A9" />
              <SortedDescendingCellStyle BackColor="#CAC9C9" />
              <SortedDescendingHeaderStyle BackColor="#000065" />
          </asp:GridView>
                <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        </table>
          
          
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SkoolniachConnectionString %>" SelectCommand="SELECT [Id], [Class] FROM [Classes]"></asp:SqlDataSource>
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style3 {
            height: 50px;
        }
        .auto-style4 {
            width: 128px;
        }
        .auto-style5 {
            height: 50px;
        }
    </style>
</asp:Content>


