<%@ Page Title="Delete Teacher" Language="C#" MasterPageFile="~/admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="DeleteTeacher.aspx.cs" Inherits="Default2" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style type="text/css">
       

        .auto-style1 {
            width: 161px;
        }

        .auto-style2 {
            width: 145px;
        }

        </style>
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
        <img src="../images/at.png" />
        <span style="font-size: x-large">&nbsp;&nbsp; <strong>DELETE TEACHER TIMETABLE</strong></span></p>
   <br /> <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource1" EmptyDataText="No records has been added." GridLines="Vertical">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" ItemStyle-Width="100">
            <ItemStyle Width="100px" />
            </asp:BoundField>
            <asp:BoundField DataField="Name" HeaderText="Name" ItemStyle-Width="100">
            <ItemStyle Width="100px" />
            </asp:BoundField>
            <asp:BoundField DataField="Initial" HeaderText="Initial" ItemStyle-Width="100">
            <ItemStyle Width="100px" />
            </asp:BoundField>
            <asp:BoundField DataField="Subject" HeaderText="Subject" ItemStyle-Width="100">
            <ItemStyle Width="100px" />
            </asp:BoundField>
            <asp:CommandField ButtonType="Link" ItemStyle-Width="100" ShowDeleteButton="true">
            <ItemStyle Width="100px" />
            </asp:CommandField>
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SkoolniachConnectionString %>" SelectCommand="SELECT [Id], [Name], [Initial], [Subject], [FirstPeriod], [SecondPeriod], [ThirdPeriod], [FourthPeriod], [FifthPeriod], [SixthPeriod], [SeventhPeriod], [EighthPeriod], [NinethPeriod] FROM [Monday]" DeleteCommand="DELETE FROM Monday WHERE Id = @Id ; DELETE FROM Tuesday WHERE Id = @Id; DELETE FROM Wednesday WHERE Id = @Id; DELETE FROM Thursday WHERE Id = @Id; DELETE FROM Friday WHERE Id = @Id; DELETE FROM No_Of_Arrangement WHERE TeacherId = @Id; DELETE FROM Arrangement WHERE AbsentTeacherId = @Id; DELETE FROM Login WHERE UserId = @Id">
         <DeleteParameters>
            <asp:Parameter Name="Id" Type="String" />
        </DeleteParameters>
    </asp:SqlDataSource>

</asp:Content>

