<%@ Page Title="Add Subject" Language="C#" MasterPageFile="~/admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="AddSubject.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script type="text/javascript">
        function HideLabel() {
            var seconds = 5;
            setTimeout(function () {
                document.getElementById("<%=lblASMsgs.ClientID %>").style.display = "none";
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
        <img src="../images/addsubject.png" />
        <span style="font-size: x-large">&nbsp;&nbsp; <strong>ADD A NEW SUBJECT</strong></span></p>
    <table align="center" style="width: 50%">

        <tr>
            <td>&nbsp;</td>
            <td style="text-align: left">&nbsp;</td>
        </tr>

        <tr>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtAddSub" Display="Dynamic" ErrorMessage="*" Style="color: #FF0000" ValidationGroup="q1"></asp:RequiredFieldValidator>
                Enter a new subject</td>
            <td style="text-align: left">
                <asp:TextBox ID="txtAddSub" runat="server"></asp:TextBox>
                <asp:Button ID="btnAddSub" runat="server" OnClick="btnAddSub_Click" Text="ADD" ValidationGroup="q1" />
                <asp:Label ID="lblASMsgs" runat="server" Style="color: #FF0000"></asp:Label>
            </td>
        </tr>

        <tr>
            <td colspan="2">
                &nbsp;</td>
        </tr>

        <tr>
            <td colspan="2">
                <div style="text-align:center">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource1" GridLines="Vertical" Width="80px">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:BoundField DataField="Subject" HeaderText="Subject" SortExpression="Subject" />
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
                    </div>
            </td>
        </tr>
    </table>
    <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SkoolniachConnectionString %>" SelectCommand="SELECT [Id], [Subject] FROM [Subject]"></asp:SqlDataSource>
</asp:Content>

<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="head">
    
</asp:Content>


