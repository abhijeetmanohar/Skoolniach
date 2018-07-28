<%@ Page Title="Add Vice Principal" Language="C#" MasterPageFile="~/admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="AddVice.aspx.cs" Inherits="AddVice" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script type="text/javascript">
        function HideLabel() {
            var seconds = 5;
            setTimeout(function () {
                document.getElementById("<%=lblAUMsgs.ClientID %>").style.display = "none";
                document.getElementById("<%=lblMessage.ClientID %>").style.display = "none";
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
    <p class="top-menu" style="text-align: center">
        <strong>
        <img src="../images/add-user.png" /></strong>
        <span style="font-size: x-large"><strong>&nbsp;&nbsp; ADD A NEW VICE PRINCIPAL</strong></span></p>
    <table align="center" style="width: 50%">

        <tr>
            <td style="text-align: left;" class="auto-style2"><strong></strong></td>
            <td style="text-align: left"><strong></strong></td>
        </tr>

        <tr>
            <td style="text-align: left;" class="auto-style2">
                <strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserId" Display="Dynamic" ErrorMessage="*" Style="color: #FF0000" ValidationGroup="q1"></asp:RequiredFieldValidator>
                Enter a new User Id :</strong></td>
            <td style="text-align: left">
                <strong>
                <asp:TextBox ID="txtUserId" runat="server" Width="154px"></asp:TextBox>
                </strong>
            </td>
        </tr>

        <tr>
            <td style="text-align: left;" class="auto-style2">
                <strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" Display="Dynamic" ErrorMessage="*" Style="color: #FF0000" ValidationGroup="q1"></asp:RequiredFieldValidator>
                Password :</strong></td>
            <td>
                <strong>
                <asp:Button ID="btnGeneratePassword" runat="server" Text="Generate Password" OnClick="btnGeneratePassword_Click" Width="161px" />
                <asp:TextBox ID="txtPassword" runat="server" Width="156px"></asp:TextBox>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="FileUpload1" Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationGroup="q1"></asp:RequiredFieldValidator>
                Profile Picture :</strong></td>
            <td class="auto-style8">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>

        </tr>
        <tr>
            <td style="text-align: center;" class="auto-style3" colspan="2"><strong>
                <asp:Button ID="btnAddUser" runat="server" OnClick="btnAddSub_Click" Text="ADD" ValidationGroup="q1" />
                </strong></td>
        </tr>

        <tr>
            <td style="text-align: center;" class="auto-style3" colspan="2"><strong>
                <asp:Label ID="lblAUMsgs" runat="server" Style="color: #FF0000"></asp:Label>
                <asp:Label ID="lblError" runat="server" ForeColor="Red" style="text-align: center"></asp:Label>
                <asp:Label ID="lblMessage" runat="server" Font-Names="Arial" Text="" Style="color: #FF0000"></asp:Label>
                </strong></td>
        </tr>

        <tr>
            <td style="text-align: left;" class="auto-style3" colspan="2"><strong></strong></td>
        </tr>

        <tr>
            <td style="text-align: left;" class="auto-style3" colspan="2">
                <strong>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="UserId" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:BoundField DataField="UserId" HeaderText="UserId" ReadOnly="True" SortExpression="UserId" />
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
                </strong></td>
        </tr>

    </table>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SkoolniachConnectionString %>" SelectCommand="SELECT [UserId] FROM [Login] WHERE ([Category] = @Category)">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="Vice Principal" Name="Category" QueryStringField="Vice Principal" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="head">
    <style type="text/css">
        .auto-style2 {
            width: 168px;
        }

        .auto-style3 {
            height: 31px;
        }

        .auto-style4 {
            height: 31px;
        }
        .auto-style5 {
            text-align: left;
        }
    </style>
</asp:Content>


