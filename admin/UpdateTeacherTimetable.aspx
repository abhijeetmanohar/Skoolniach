<%@ Page Title="Update Teacher Timetable" Language="C#" MasterPageFile="~/admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="UpdateTeacherTimetable.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
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
        <span style="font-size: x-large">&nbsp;&nbsp; <strong>UPDATE TEACHER TIMETABLE</strong></span>
    </p>
    
    <asp:Panel ID="Panel2" runat="server">
        <table>
            <tr>
                <td><strong>MONDAY</strong></td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource1" EmptyDataText="No records has been added." GridLines="Vertical">
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SkoolniachConnectionString %>" SelectCommand="SELECT [Id], [Name], [Initial], [Subject], [ZeroPeriod], [FirstPeriod], [SecondPeriod], [ThirdPeriod], [FourthPeriod], [FifthPeriod], [SixthPeriod], [SeventhPeriod], [EighthPeriod], [NinethPeriod] FROM [Monday]" UpdateCommand="UPDATE Monday SET  Name = @Name, Initial = @Initial, Subject = @Subject, ZeroPeriod = @ZeroPeriod, FirstPeriod = @FirstPeriod, SecondPeriod = @SecondPeriod, ThirdPeriod = @ThirdPeriod, FourthPeriod = @FourthPeriod, FifthPeriod = @FifthPeriod, SixthPeriod = @SixthPeriod, SeventhPeriod = @SeventhPeriod, EighthPeriod = @EighthPeriod, NinethPeriod = @NinethPeriod WHERE Id = @Id">
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
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource2" EmptyDataText="No records has been added." GridLines="Vertical">
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
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SkoolniachConnectionString %>" SelectCommand="SELECT [Id], [Name], [Initial], [Subject], [ZeroPeriod], [FirstPeriod], [SecondPeriod], [ThirdPeriod], [FourthPeriod], [FifthPeriod], [SixthPeriod], [SeventhPeriod], [EighthPeriod] FROM [TUESDAY]" UpdateCommand="UPDATE TUESDAY SET  Name = @Name, Initial = @Initial, Subject = @Subject, ZeroPeriod = @ZeroPeriod, FirstPeriod = @FirstPeriod, SecondPeriod = @SecondPeriod, ThirdPeriod = @ThirdPeriod, FourthPeriod = @FourthPeriod, FifthPeriod = @FifthPeriod, SixthPeriod = @SixthPeriod, SeventhPeriod = @SeventhPeriod, EighthPeriod = @EighthPeriod WHERE Id = @Id">
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
                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource3" EmptyDataText="No records has been added." GridLines="Vertical">
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
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:SkoolniachConnectionString %>" SelectCommand="SELECT [Id], [Name], [Initial], [Subject], [ZeroPeriod], [FirstPeriod], [SecondPeriod], [ThirdPeriod], [FourthPeriod], [FifthPeriod], [SixthPeriod], [SeventhPeriod], [EighthPeriod] FROM [Wednesday]" UpdateCommand="UPDATE Wednesday SET  Name = @Name, Initial = @Initial, Subject = @Subject, ZeroPeriod = @ZeroPeriod, FirstPeriod = @FirstPeriod, SecondPeriod = @SecondPeriod, ThirdPeriod = @ThirdPeriod, FourthPeriod = @FourthPeriod, FifthPeriod = @FifthPeriod, SixthPeriod = @SixthPeriod, SeventhPeriod = @SeventhPeriod, EighthPeriod = @EighthPeriod WHERE Id = @Id">
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
                    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource4" EmptyDataText="No records has been added." GridLines="Vertical">
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
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:SkoolniachConnectionString %>" SelectCommand="SELECT [Id], [Name], [Initial], [Subject], [ZeroPeriod], [FirstPeriod], [SecondPeriod], [ThirdPeriod], [FourthPeriod], [FifthPeriod], [SixthPeriod], [SeventhPeriod], [EighthPeriod] FROM [Thursday]" UpdateCommand="UPDATE Thursday SET  Name = @Name, Initial = @Initial, Subject = @Subject, ZeroPeriod = @ZeroPeriod, FirstPeriod = @FirstPeriod, SecondPeriod = @SecondPeriod, ThirdPeriod = @ThirdPeriod, FourthPeriod = @FourthPeriod, FifthPeriod = @FifthPeriod, SixthPeriod = @SixthPeriod, SeventhPeriod = @SeventhPeriod, EighthPeriod = @EighthPeriod WHERE Id = @Id">
                        <UpdateParameters>
                            <asp:Parameter Name="Id" Type="String" />
                            <asp:Parameter Name="Name" Type="String" />
                            <asp:Parameter Name="Initial" Type="String" />
                            <asp:Parameter Name="Subject" Type="String" />
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
                    <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource5" EmptyDataText="No records has been added." GridLines="Vertical">
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
                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:SkoolniachConnectionString %>" SelectCommand="SELECT [Id], [Name], [Initial], [Subject], [ZeroPeriod], [FirstPeriod], [SecondPeriod], [ThirdPeriod], [FourthPeriod], [FifthPeriod], [SixthPeriod], [SeventhPeriod], [EighthPeriod], [NinethPeriod] FROM [Friday]" UpdateCommand="UPDATE Friday SET  Name = @Name, Initial = @Initial, Subject = @Subject,  ZeroPeriod = @ZeroPeriod, FirstPeriod = @FirstPeriod, SecondPeriod = @SecondPeriod, ThirdPeriod = @ThirdPeriod, FourthPeriod = @FourthPeriod, FifthPeriod = @FifthPeriod, SixthPeriod = @SixthPeriod, SeventhPeriod = @SeventhPeriod, EighthPeriod = @EighthPeriod, NinethPeriod = @NinethPeriod WHERE Id = @Id">
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

