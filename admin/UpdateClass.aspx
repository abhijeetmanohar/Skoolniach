<%@ Page Title="Update Class" Language="C#" MasterPageFile="~/admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="UpdateClass.aspx.cs" Inherits="Default3" %>

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
          <p class="top-menu" style="text-align: center"> <img src="../images/addclass.png" /> <span style="font-size: x-large">  &nbsp;&nbsp; <strong>UPDATE CLASS</strong></span></p>
                  
                   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource1" EmptyDataText="No records has been added." GridLines="Vertical">
                       <AlternatingRowStyle BackColor="#DCDCDC" />
                       <Columns>
                           <asp:BoundField DataField="Class" HeaderText="Class" ItemStyle-Width="100">
                           <ItemStyle Width="100px" />
                           </asp:BoundField>
                          
                           <asp:CommandField ButtonType="Link" ItemStyle-Width="100" ShowEditButton="true">
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
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SkoolniachConnectionString %>" SelectCommand="SELECT [Id], [Class] FROM [Classes]" UpdateCommand="UPDATE Classes SET Class = @Class WHERE Id = @Id">
                       <UpdateParameters>
                           <asp:Parameter Name="Id" Type="Object"/>
                           <asp:Parameter Name="Class" Type="String" />
                          
                       </UpdateParameters>
                   </asp:SqlDataSource>
                  
</asp:Content>

