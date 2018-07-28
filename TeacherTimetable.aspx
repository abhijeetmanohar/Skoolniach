<%@ Page Title="Update Teacher Timetable" Language="C#" MasterPageFile="~/DefaultMasterPage.master" AutoEventWireup="true" CodeFile="TeacherTimetable.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="width: 101px; height: 26px;">
                <asp:ImageButton ID="btnBack" runat="server" ImageUrl="~/images/Arrow Back.png" OnClick="btnBack_Click" style="width: 30px" />
            </td>

        </tr>
    </table>
    <p class="top-menu" style="text-align: center">
        <img src="images/at.png" />
        <span style="font-size: x-large">&nbsp;&nbsp; <strong>TEACHER TIMETABLE</strong></span>
    </p>
    <asp:Panel ID="panel1" runat="server">
        <style type="text/css">
            .auto-style12 {
                width: 40%;
                background-color: rgba(13, 169, 208, 0.26);
            }

            .auto-style13 {
                text-align: center;
            }
        </style>
        <table align="center" class="auto-style12">
            <tr>
                <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
                <td class="auto-style13">
                    <br />
                    <asp:DropDownList ID="ddlDay" runat="server">
                        <asp:ListItem>---Select Day---</asp:ListItem>
                        <asp:ListItem Value="Monday"></asp:ListItem>
                        <asp:ListItem Value="Tuesday">Tuesday</asp:ListItem>
                        <asp:ListItem Value="Wednesday">Wednesday</asp:ListItem>
                        <asp:ListItem Value="Thursday">Thursday</asp:ListItem>
                        <asp:ListItem Value="Friday">Friday</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                    <br />
                    <br />
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <table>
            <tr>
                <td><strong>MONDAY</strong></td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource1" EmptyDataText="No record found." GridLines="Vertical">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <Columns>
                            <asp:BoundField DataField="Name" HeaderText="Name" ItemStyle-Width="100">
                                <ItemStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Initial" HeaderText="Initial" ItemStyle-Width="100">
                                <ItemStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Subject" HeaderText="Subject" ItemStyle-Width="100">
                                <ItemStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ZeroPeriod" HeaderText="ZeroPeriod" ItemStyle-Width="100">
                                <ItemStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="FirstPeriod" HeaderText="FirstPeriod" ItemStyle-Width="100">
                                <ItemStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="SecondPeriod" HeaderText="SecondPeriod" ItemStyle-Width="100">
                                <ItemStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ThirdPeriod" HeaderText="ThirdPeriod" ItemStyle-Width="100">
                                <ItemStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="FourthPeriod" HeaderText="FourthPeriod" ItemStyle-Width="100">
                                <ItemStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="FifthPeriod" HeaderText="FifthPeriod" ItemStyle-Width="100">
                                <ItemStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="SixthPeriod" HeaderText="SixthPeriod" ItemStyle-Width="100">
                                <ItemStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="SeventhPeriod" HeaderText="SeventhPeriod" ItemStyle-Width="100">
                                <ItemStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="EighthPeriod" HeaderText="EighthPeriod" ItemStyle-Width="100">
                                <ItemStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="NinethPeriod" HeaderText="NinethPeriod" ItemStyle-Width="100">
                                <ItemStyle Width="100px" />
                            </asp:BoundField>
                           
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SkoolniachConnectionString %>" SelectCommand="SELECT [Id], [Name], [Initial], [Subject],[ZeroPeriod], [FirstPeriod], [SecondPeriod], [ThirdPeriod], [FourthPeriod], [FifthPeriod], [SixthPeriod], [SeventhPeriod], [EighthPeriod], [NinethPeriod] FROM [Monday]" UpdateCommand="UPDATE Monday SET  Name = @Name, Initial = @Initial, Subject = @Subject, FirstPeriod = @FirstPeriod, SecondPeriod = @SecondPeriod, ThirdPeriod = @ThirdPeriod, FourthPeriod = @FourthPeriod, FifthPeriod = @FifthPeriod, SixthPeriod = @SixthPeriod, SeventhPeriod = @SeventhPeriod, EighthPeriod = @EighthPeriod, NinethPeriod = @NinethPeriod WHERE Id = @Id">
                        <UpdateParameters>
                            <asp:Parameter Name="Id" Type="String" />
                            <asp:Parameter Name="Name" Type="String" />
                            <asp:Parameter Name="Initial" Type="String" />
                            <asp:Parameter Name="Subject" Type="String" />
                            <asp:Parameter Name="ZeroPeriod" Type="String" />
                            <asp:Parameter Name="FirstPeriod" Type="String" />
                            <asp:Parameter Name="SecondPeriod" Type="String" />
                            <asp:Parameter Name="ThirdPeriod" Type="String" />
                            <asp:Parameter Name="FourthPeriod" Type="String" />
                            <asp:Parameter Name="FifthPeriod" Type="String" />
                            <asp:Parameter Name="SixthPeriod" Type="String" />
                            <asp:Parameter Name="SeventhPeriod" Type="String" />
                            <asp:Parameter Name="EighthPeriod" Type="String" />
                            <asp:Parameter Name="NinethPeriod" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server">
        <table>
            <tr>
                <td><strong>TUESDAY</strong></td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource2" EmptyDataText="No record found." GridLines="Vertical">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <Columns>
                            <asp:BoundField DataField="Name" HeaderText="Name" ItemStyle-Width="100">
                                <ItemStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Initial" HeaderText="Initial" ItemStyle-Width="100">
                                <ItemStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Subject" HeaderText="Subject" ItemStyle-Width="100">
                                <ItemStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ZeroPeriod" HeaderText="ZeroPeriod" ItemStyle-Width="100">
                                <ItemStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="FirstPeriod" HeaderText="FirstPeriod" ItemStyle-Width="100">
                                <ItemStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="SecondPeriod" HeaderText="SecondPeriod" ItemStyle-Width="100">
                                <ItemStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ThirdPeriod" HeaderText="ThirdPeriod" ItemStyle-Width="100">
                                <ItemStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="FourthPeriod" HeaderText="FourthPeriod" ItemStyle-Width="100">
                                <ItemStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="FifthPeriod" HeaderText="FifthPeriod" ItemStyle-Width="100">
                                <ItemStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="SixthPeriod" HeaderText="SixthPeriod" ItemStyle-Width="100">
                                <ItemStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="SeventhPeriod" HeaderText="SeventhPeriod" ItemStyle-Width="100">
                                <ItemStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="EighthPeriod" HeaderText="EighthPeriod" ItemStyle-Width="100">
                                <ItemStyle Width="100px" />
                            </asp:BoundField>
                            
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
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SkoolniachConnectionString %>" SelectCommand="SELECT [Id], [Name], [Initial], [Subject], [ZeroPeriod],  [FirstPeriod], [SecondPeriod], [ThirdPeriod], [FourthPeriod], [FifthPeriod], [SixthPeriod], [SeventhPeriod], [EighthPeriod] FROM [TUESDAY]" UpdateCommand="UPDATE TUESDAY SET  Name = @Name, Initial = @Initial, Subject = @Subject, FirstPeriod = @FirstPeriod, SecondPeriod = @SecondPeriod, ThirdPeriod = @ThirdPeriod, FourthPeriod = @FourthPeriod, FifthPeriod = @FifthPeriod, SixthPeriod = @SixthPeriod, SeventhPeriod = @SeventhPeriod, EighthPeriod = @EighthPeriod WHERE Id = @Id">
                        <UpdateParameters>
                            <asp:Parameter Name="Id" Type="String" />
                            <asp:Parameter Name="Name" Type="String" />
                            <asp:Parameter Name="Initial" Type="String" />
                            <asp:Parameter Name="Subject" Type="String" />
                            <asp:Parameter Name="ZeroPeriod" Type="String" />
                            <asp:Parameter Name="FirstPeriod" Type="String" />
                            <asp:Parameter Name="SecondPeriod" Type="String" />
                            <asp:Parameter Name="ThirdPeriod" Type="String" />
                            <asp:Parameter Name="FourthPeriod" Type="String" />
                            <asp:Parameter Name="FifthPeriod" Type="String" />
                            <asp:Parameter Name="SixthPeriod" Type="String" />
                            <asp:Parameter Name="SeventhPeriod" Type="String" />
                            <asp:Parameter Name="EighthPeriod" Type="String" />

                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table>
            <tr>
                <td><strong>WEDNESDAY</strong></td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource3" EmptyDataText="No record found." GridLines="Vertical">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <Columns>
                            <asp:BoundField DataField="Name" HeaderText="Name" ItemStyle-Width="100">
                                <ItemStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Initial" HeaderText="Initial" ItemStyle-Width="100">
                                <ItemStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Subject" HeaderText="Subject" ItemStyle-Width="100">
                                <ItemStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ZeroPeriod" HeaderText="ZeroPeriod" ItemStyle-Width="100">
                                <ItemStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="FirstPeriod" HeaderText="FirstPeriod" ItemStyle-Width="100">
                                <ItemStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="SecondPeriod" HeaderText="SecondPeriod" ItemStyle-Width="100">
                                <ItemStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ThirdPeriod" HeaderText="ThirdPeriod" ItemStyle-Width="100">
                                <ItemStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="FourthPeriod" HeaderText="FourthPeriod" ItemStyle-Width="100">
                                <ItemStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="FifthPeriod" HeaderText="FifthPeriod" ItemStyle-Width="100">
                                <ItemStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="SixthPeriod" HeaderText="SixthPeriod" ItemStyle-Width="100">
                                <ItemStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="SeventhPeriod" HeaderText="SeventhPeriod" ItemStyle-Width="100">
                                <ItemStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="EighthPeriod" HeaderText="EighthPeriod" ItemStyle-Width="100">
                                <ItemStyle Width="100px" />
                            </asp:BoundField>

                           
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
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:SkoolniachConnectionString %>" SelectCommand="SELECT [Id], [Name], [Initial], [Subject], [ZeroPeriod],[FirstPeriod], [SecondPeriod], [ThirdPeriod], [FourthPeriod], [FifthPeriod], [SixthPeriod], [SeventhPeriod], [EighthPeriod] FROM [Wednesday]" UpdateCommand="UPDATE Wednesday SET  Name = @Name, Initial = @Initial, Subject = @Subject, FirstPeriod = @FirstPeriod, SecondPeriod = @SecondPeriod, ThirdPeriod = @ThirdPeriod, FourthPeriod = @FourthPeriod, FifthPeriod = @FifthPeriod, SixthPeriod = @SixthPeriod, SeventhPeriod = @SeventhPeriod, EighthPeriod = @EighthPeriod WHERE Id = @Id">
                        <UpdateParameters>
                            <asp:Parameter Name="Id" Type="String" />
                            <asp:Parameter Name="Name" Type="String" />
                            <asp:Parameter Name="Initial" Type="String" />
                            <asp:Parameter Name="Subject" Type="String" />
                            <asp:Parameter Name="ZeroPeriod" Type="String" />
                            <asp:Parameter Name="FirstPeriod" Type="String" />
                            <asp:Parameter Name="SecondPeriod" Type="String" />
                            <asp:Parameter Name="ThirdPeriod" Type="String" />
                            <asp:Parameter Name="FourthPeriod" Type="String" />
                            <asp:Parameter Name="FifthPeriod" Type="String" />
                            <asp:Parameter Name="SixthPeriod" Type="String" />
                            <asp:Parameter Name="SeventhPeriod" Type="String" />
                            <asp:Parameter Name="EighthPeriod" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
    </asp:Panel>

    <asp:Panel ID="Panel5" runat="server">
        <table>
            <tr>
                <td><strong>THURSDAY</strong></td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource4" EmptyDataText="No record found." GridLines="Vertical">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <Columns>
                            <asp:BoundField DataField="Name" HeaderText="Name" ItemStyle-Width="100">
                                <ItemStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Initial" HeaderText="Initial" ItemStyle-Width="100">
                                <ItemStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Subject" HeaderText="Subject" ItemStyle-Width="100">
                                <ItemStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ZeroPeriod" HeaderText="ZeroPeriod" ItemStyle-Width="100">
                                <ItemStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="FirstPeriod" HeaderText="FirstPeriod" ItemStyle-Width="100">
                                <ItemStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="SecondPeriod" HeaderText="SecondPeriod" ItemStyle-Width="100">
                                <ItemStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ThirdPeriod" HeaderText="ThirdPeriod" ItemStyle-Width="100">
                                <ItemStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="FourthPeriod" HeaderText="FourthPeriod" ItemStyle-Width="100">
                                <ItemStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="FifthPeriod" HeaderText="FifthPeriod" ItemStyle-Width="100">
                                <ItemStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="SixthPeriod" HeaderText="SixthPeriod" ItemStyle-Width="100">
                                <ItemStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="SeventhPeriod" HeaderText="SeventhPeriod" ItemStyle-Width="100">
                                <ItemStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="EighthPeriod" HeaderText="EighthPeriod" ItemStyle-Width="100">
                                <ItemStyle Width="100px" />
                            </asp:BoundField>

                            
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
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:SkoolniachConnectionString %>" SelectCommand="SELECT [Id], [Name], [Initial], [Subject], [ZeroPeriod], [FirstPeriod], [SecondPeriod], [ThirdPeriod], [FourthPeriod], [FifthPeriod], [SixthPeriod], [SeventhPeriod], [EighthPeriod] FROM [Thursday]" UpdateCommand="UPDATE Thursday SET  Name = @Name, Initial = @Initial, Subject = @Subject, FirstPeriod = @FirstPeriod, SecondPeriod = @SecondPeriod, ThirdPeriod = @ThirdPeriod, FourthPeriod = @FourthPeriod, FifthPeriod = @FifthPeriod, SixthPeriod = @SixthPeriod, SeventhPeriod = @SeventhPeriod, EighthPeriod = @EighthPeriod WHERE Id = @Id">
                        <UpdateParameters>
                            <asp:Parameter Name="Id" Type="String" />
                            <asp:Parameter Name="Name" Type="String" />
                            <asp:Parameter Name="Initial" Type="String" />
                            <asp:Parameter Name="Subject" Type="String" />
                            <asp:Parameter Name="ZeroPeriod" Type="String" />
                            <asp:Parameter Name="FirstPeriod" Type="String" />
                            <asp:Parameter Name="SecondPeriod" Type="String" />
                            <asp:Parameter Name="ThirdPeriod" Type="String" />
                            <asp:Parameter Name="FourthPeriod" Type="String" />
                            <asp:Parameter Name="FifthPeriod" Type="String" />
                            <asp:Parameter Name="SixthPeriod" Type="String" />
                            <asp:Parameter Name="SeventhPeriod" Type="String" />
                            <asp:Parameter Name="EighthPeriod" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel6" runat="server">
        <table>
            <tr>
                <td><strong>FRIDAY</strong></td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource5" EmptyDataText="No record found." GridLines="Vertical">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <Columns>
                            <asp:BoundField DataField="Name" HeaderText="Name" ItemStyle-Width="100">
                                <ItemStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Initial" HeaderText="Initial" ItemStyle-Width="100">
                                <ItemStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Subject" HeaderText="Subject" ItemStyle-Width="100">
                                <ItemStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ZeroPeriod" HeaderText="ZeroPeriod" ItemStyle-Width="100">
                                <ItemStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="FirstPeriod" HeaderText="FirstPeriod" ItemStyle-Width="100">
                                <ItemStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="SecondPeriod" HeaderText="SecondPeriod" ItemStyle-Width="100">
                                <ItemStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ThirdPeriod" HeaderText="ThirdPeriod" ItemStyle-Width="100">
                                <ItemStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="FourthPeriod" HeaderText="FourthPeriod" ItemStyle-Width="100">
                                <ItemStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="FifthPeriod" HeaderText="FifthPeriod" ItemStyle-Width="100">
                                <ItemStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="SixthPeriod" HeaderText="SixthPeriod" ItemStyle-Width="100">
                                <ItemStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="SeventhPeriod" HeaderText="SeventhPeriod" ItemStyle-Width="100">
                                <ItemStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="EighthPeriod" HeaderText="EighthPeriod" ItemStyle-Width="100">
                                <ItemStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="NinethPeriod" HeaderText="NinethPeriod" ItemStyle-Width="100">
                                <ItemStyle Width="100px" />
                            </asp:BoundField>
                            
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
                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:SkoolniachConnectionString %>" SelectCommand="SELECT [Id], [Name], [Initial], [Subject], [ZeroPeriod], [FirstPeriod], [SecondPeriod], [ThirdPeriod], [FourthPeriod], [FifthPeriod], [SixthPeriod], [SeventhPeriod], [EighthPeriod], [NinethPeriod] FROM [Friday]" UpdateCommand="UPDATE Monday SET  Name = @Name, Initial = @Initial, Subject = @Subject, FirstPeriod = @FirstPeriod, SecondPeriod = @SecondPeriod, ThirdPeriod = @ThirdPeriod, FourthPeriod = @FourthPeriod, FifthPeriod = @FifthPeriod, SixthPeriod = @SixthPeriod, SeventhPeriod = @SeventhPeriod, EighthPeriod = @EighthPeriod, NinethPeriod = @NinethPeriod WHERE Id = @Id">
                        <UpdateParameters>
                            <asp:Parameter Name="Id" Type="String" />
                            <asp:Parameter Name="Name" Type="String" />
                            <asp:Parameter Name="Initial" Type="String" />
                            <asp:Parameter Name="Subject" Type="String" />
                            <asp:Parameter Name="ZeroPeriod" Type="String" />
                            <asp:Parameter Name="FirstPeriod" Type="String" />
                            <asp:Parameter Name="SecondPeriod" Type="String" />
                            <asp:Parameter Name="ThirdPeriod" Type="String" />
                            <asp:Parameter Name="FourthPeriod" Type="String" />
                            <asp:Parameter Name="FifthPeriod" Type="String" />
                            <asp:Parameter Name="SixthPeriod" Type="String" />
                            <asp:Parameter Name="SeventhPeriod" Type="String" />
                            <asp:Parameter Name="EighthPeriod" Type="String" />
                            <asp:Parameter Name="NinethPeriod" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
    </asp:Panel>

</asp:Content>

