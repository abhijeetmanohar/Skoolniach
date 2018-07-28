﻿<%@ Page Title="Delete Subject" Language="C#" MasterPageFile="~/admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="DeleteSubject.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
          <table style="width: 100%">
        <tr>
            <td style="width: 101px; height: 26px; text-align: left;">
                <strong>
                <asp:ImageButton ID="btnBack" runat="server" ImageUrl="~/images/Arrow Back.png" OnClick="btnBack_Click" />
                </strong>
            </td>

        </tr>
    </table>
          <p class="top-menu" style="text-align: center"> <img src="../images/addsubject.png" /> <span style="font-size: x-large">  &nbsp;&nbsp; <strong>DELETE SUBJECT</strong></span></p>
         <br /> <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource1" EmptyDataText="No records has been added." GridLines="Vertical">
              <AlternatingRowStyle BackColor="#DCDCDC" />
              <Columns>
                  <asp:BoundField DataField="Subject" HeaderText="Subject" ItemStyle-Width="100" SortExpression="Subject" />
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
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SkoolniachConnectionString %>" DeleteCommand="DELETE FROM Subject WHERE Id = @Id" SelectCommand="SELECT [Id], [Subject] FROM [Subject]">
              <DeleteParameters>
                  <asp:Parameter Name="Id" Type="Object" />
              </DeleteParameters>
          </asp:SqlDataSource>
</asp:Content>

