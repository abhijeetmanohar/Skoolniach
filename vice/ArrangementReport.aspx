<%@ Page Title="Arrangement Report" Language="C#" MasterPageFile="~/vice/viceMasterPage1.master" AutoEventWireup="true" CodeFile="ArrangementReport.aspx.cs" Inherits="ArrangementReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style type="text/css" media="print">
        .noprint {
            display: none;
        }
    </style>
    <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" HeaderStyle-BackColor="Black" HeaderStyle-ForeColor="White" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:BoundField DataField="AbsentTeacherId" HeaderText="AbsentTeacherId" SortExpression="AbsentTeacherId" />
            <asp:BoundField DataField="ZeroP_Arr" HeaderText="0" SortExpression="ZeroP_Arr" />
            <asp:BoundField DataField="FirstP_Arr" HeaderText="1" SortExpression="FirstP_Arr" />
            <asp:BoundField DataField="SecondP_Arr" HeaderText="2" SortExpression="SecondP_Arr" />
            <asp:BoundField DataField="ThirdP_Arr" HeaderText="3" SortExpression="ThirdP_Arr" />
            <asp:BoundField DataField="FourthP_Arr" HeaderText="4" SortExpression="FourthP_Arr" />
            <asp:BoundField DataField="FifthP_Arr" HeaderText="5" SortExpression="FifthP_Arr" />
            <asp:BoundField DataField="SixthP_Arr" HeaderText="6" SortExpression="SixthP_Arr" />
            <asp:BoundField DataField="SeventhP_Arr" HeaderText="7" SortExpression="SeventhP_Arr" />
            <asp:BoundField DataField="EighthP_Arr" HeaderText="8" SortExpression="EighthP_Arr" />
            <asp:BoundField DataField="NinethP_Arr" HeaderText="9" SortExpression="NinethP_Arr" />
        </Columns>

        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />

        <HeaderStyle BackColor="#000084" ForeColor="White" Font-Bold="True"></HeaderStyle>

        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />

    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SkoolniachConnectionString %>" SelectCommand="SELECT [AbsentTeacherId],  [ZeroP_Arr], [FirstP_Arr], [SecondP_Arr], [ThirdP_Arr], [FourthP_Arr], [FifthP_Arr], [SixthP_Arr], [SeventhP_Arr], [EighthP_Arr], [NinethP_Arr] FROM [Arrangement] WHERE ([Daay] = @Daay)">
        <SelectParameters>
            <asp:ControlParameter ControlID="lblARDay" Name="Daay" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <div style="text-align: right">
        <br />
        <asp:Label ID="lblARDay" runat="server" Text=""></asp:Label>
        <asp:Label ID="lblARDate" runat="server" Text=""></asp:Label>
        <asp:ImageButton ID="btnBack"  runat="server" ImageUrl="~/images/Arrow Back.png" OnClick="btnBack_Click" CssClass="noprint" />
        <asp:ImageButton ID="btnPrint" runat="server" ImageUrl="~/images/Print.png" OnClick="btnPrint_Click" OnClientClick="javascript:window.print()" Text-align="" Text="Print" CssClass="noprint" />

    </div>
</asp:Content>

