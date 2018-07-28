<%@ Page Title="" Language="C#" MasterPageFile="~/student/studentMasterPage.master" AutoEventWireup="true" CodeFile="ScoreBoard.aspx.cs" Inherits="student_ScoreCard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 80%;
        }
        .auto-style3 {
            height: 22px;
        }
    </style>
     
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table align="center" class="auto-style2">
        <tr>
            <td><p>    Score Board</p>

            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <p><asp:DropDownList ID="ddlSB" runat="server" AutoPostBack="True">
                </asp:DropDownList>
                    <asp:Label ID="lblError" runat="server" style="font-size: medium"></asp:Label>
            </p></td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" ReadOnly="True" />
                        <asp:BoundField DataField="QuizId" HeaderText="QuizId" SortExpression="QuizId" />
                        <asp:BoundField DataField="AdmissionNumber" HeaderText="AdmissionNumber" SortExpression="AdmissionNumber" />
                        <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="House" HeaderText="House" SortExpression="House" />
                        <asp:BoundField DataField="Score" HeaderText="Score" SortExpression="Score" />
                        <asp:BoundField DataField="TotalScore" HeaderText="TotalScore" SortExpression="TotalScore" />
                        <asp:BoundField DataField="P_Type" HeaderText="P_Type" SortExpression="P_Type" />
                        <asp:BoundField DataField="EndTime" HeaderText="EndTime" SortExpression="EndTime" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SkoolniachConnectionString %>" SelectCommand="SELECT * FROM [Participants] WHERE ([QuizId] = @QuizId)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddlSB" Name="QuizId" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

