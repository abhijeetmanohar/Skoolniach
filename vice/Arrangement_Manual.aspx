<%@ Page Title="Arrangement" Language="C#" MasterPageFile="~/vice/viceMasterPage.master" AutoEventWireup="true" CodeFile="Arrangement_Manual.aspx.cs" Inherits="Arrangement" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
   
    <asp:Panel ID="panel1" runat="server">
        <table align="center" style="width: 100%">
            <tr>
                <td colspan="2">

                    <asp:ImageButton ID="btnBack" runat="server" ImageUrl="~/images/Arrow Back.png" OnClick="btnBack_Click" />
                </td>

                <td style="text-align: right"><strong>Today's Day and Date:-</strong>
                    <asp:Label ID="lblDayArr" runat="server" Text=""></asp:Label>
                    <asp:Label ID="lblDateArr" runat="server" Text=""></asp:Label></td>
            </tr>

            <tr>
                <td colspan="3" style="text-align: center; font-weight: 700;" class="auto-style5">
                    <img src="../images/ma.png" />&nbsp;&nbsp; MAKE ARRANGEMENT</td>

            </tr>

            <tr>
                <td class="auto-style3" colspan="2"><strong>Day :</strong>
                    <asp:Label ID="lblDay" runat="server" Text="" Style="color: #FF0000; font-weight: 700;"></asp:Label>
                    <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            

        </table>
        <style type="text/css">
            body {
                font-family: Arial;
                font-size: 10pt;
            }

            .modalBackground {
                background-color: Black;
                filter: alpha(opacity=40);
                opacity: 0.4;
            }

            .modalPopup {
                background-color: #FFFFFF;
                width: 500px;
                border: 3px solid #0DA9D0;
            }

                .modalPopup .header {
                    background-color: #2FBDF1;
                    height: 30px;
                    color: White;
                    line-height: 30px;
                    text-align: center;
                    font-weight: bold;
                }

                .modalPopup .body {
                    min-height: 50px;
                    line-height: 30px;
                    text-align: center;
                    padding: 5px;
                }

                .modalPopup .footer {
                    padding: 3px;
                }

                .modalPopup .button {
                    height: 23px;
                    color: White;
                    line-height: 23px;
                    text-align: center;
                    font-weight: bold;
                    cursor: pointer;
                    background-color: #9F9F9F;
                    border: 1px solid #5C5C5C;
                }

                .modalPopup td {
                    text-align: left;
                }

            .auto-style1 {
                width: 161px;
            }

            .auto-style22 {
                width: 145px;
            }

            .auto-style3 {
            }

            .auto-style4 {
                height: 28px;
            }

            .auto-style5 {
                font-size: x-large;
            }

            .auto-style6 {
                height: 28px;
                width: 131px;
            }

            .auto-style11 {
                text-align: center;
                font-weight: 700;
                color: #000033;
            }

            .auto-style12 {
                width: 40%;
                background-color: yellowgreen;
            }

            .auto-style13 {
                text-align: center;
            }
        </style>
        <br />
        <cc1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></cc1:ToolkitScriptManager>

        <asp:GridView ID="GridView1" Width="100%" HeaderStyle-BackColor="Black" HeaderStyle-ForeColor="White" runat="server" OnSelectedIndexChanged="OnSelectedIndexChanged1" Caption='<table border="2" width="100%" cellpadding="0" cellspacing="0" bgcolor="darkblue"><tr class="auto-style11"><td>Search Results</td></tr></table>' CaptionAlign="Top" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>

                <asp:TemplateField HeaderText="Mark As Absent">
                    <ItemTemplate>
                        <asp:ImageButton ID="Select" runat="server" CommandName="Select" ImageUrl="~/images/Arrangement.png" ImageAlign="Middle" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#2FBDF1" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
        <br />
        <asp:LinkButton Text="" ID="lnkFake" runat="server" />
        <cc1:ModalPopupExtender ID="mpe" runat="server" PopupControlID="pnlPopup" TargetControlID="lnkFake"
            CancelControlID="btnClose" BackgroundCssClass="modalBackground">
        </cc1:ModalPopupExtender>
        <asp:Panel ID="pnlPopup" runat="server" CssClass="modalPopup" Style="display: none">
            <div class="header">
                Add Absentees
            </div>
            <div class="body">
                <table style="width: 100%; height: 0">
                    <tr>
                        <td class="auto-style22">
                            <b>Id: </b>
                        </td>
                        <td class="auto-style1">
                            <asp:Label ID="lblId" runat="server" />
                        </td>

                    </tr>
                    <tr>
                        <td class="auto-style22">
                            <b>Name: </b>
                        </td>
                        <td class="auto-style1">
                            <asp:Label ID="lblName" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style22">
                            <b>Initial: </b>
                        </td>
                        <td class="auto-style1">
                            <asp:Label ID="lblInitial" runat="server" />

                        </td>
                    </tr>

                </table>
            </div>
            <div class="footer" align="right">
                <asp:Button ID="btnArrangement" runat="server" Text="Mark as absent" OnClick="btnArrangement_Click" CssClass="button" />
                <asp:Button ID="btnClose" runat="server" Text="Close" CssClass="button" />
            </div>
        </asp:Panel>
        <asp:GridView ID="GridView2" Width="100%" EmptyDataText="None of the teachers are added to the Absentees List." HeaderStyle-BackColor="Black" HeaderStyle-ForeColor="White" runat="server" OnSelectedIndexChanged="OnSelectedIndexChanged2" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnRowDeleting="OnRowDeleting" Caption='<table border="2" width="100%" cellpadding="0" cellspacing="0" bgcolor="darkblue"><tr class="auto-style11"><td>Absentees</td></tr></table>' CaptionAlign="Top" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:TemplateField HeaderText="">
                    <ItemTemplate>
                        <asp:ImageButton ID="Select" runat="server" CommandName="Select" ImageUrl="~/images/Arrangement.png" ImageAlign="Middle" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="On_Off" HeaderText="On_Off" SortExpression="On_Off" />
                <asp:CommandField ShowDeleteButton="True" ButtonType="Button" HeaderText="Delete"></asp:CommandField>
                <asp:BoundField DataField="Daay" HeaderText="Day" SortExpression="Daay" />
                <asp:BoundField DataField="AbsentTeacherId" HeaderText="AbsentTeacherId" SortExpression="AbsentTeacherId" />
                <asp:BoundField DataField="Subject" HeaderText="Subject" SortExpression="Subject" />
                <asp:BoundField DataField="ZeroPeriod" HeaderText="ZeroPeriod" SortExpression="ZeroPeriod" />
                <asp:BoundField DataField="FirstPeriod" HeaderText="FirstPeriod" SortExpression="FirstPeriod" />
                <asp:BoundField DataField="SecondPeriod" HeaderText="SecondPeriod" SortExpression="SecondPeriod" />
                <asp:BoundField DataField="ThirdPeriod" HeaderText="ThirdPeriod" SortExpression="ThirdPeriod" />
                <asp:BoundField DataField="FourthPeriod" HeaderText="FourthPeriod" SortExpression="FourthPeriod" />
                <asp:BoundField DataField="FifthPeriod" HeaderText="FifthPeriod" SortExpression="FifthPeriod" />
                <asp:BoundField DataField="SixthPeriod" HeaderText="SixthPeriod" SortExpression="SixthPeriod" />
                <asp:BoundField DataField="SeventhPeriod" HeaderText="SeventhPeriod" SortExpression="SeventhPeriod" />
                <asp:BoundField DataField="EighthPeriod" HeaderText="EighthPeriod" SortExpression="EighthPeriod" />
                <asp:BoundField DataField="NinethPeriod" HeaderText="NinethPeriod" SortExpression="NinethPeriod" />
            </Columns>

            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />

            <HeaderStyle BackColor="#000084" ForeColor="White" Font-Bold="True"></HeaderStyle>
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#2FBDF1" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SkoolniachConnectionString %>" SelectCommand="SELECT [On_Off], [Daay], [AbsentTeacherId],[Subject] ,[ZeroPeriod], [FirstPeriod], [SecondPeriod], [ThirdPeriod], [FourthPeriod], [FifthPeriod], [SixthPeriod], [SeventhPeriod], [EighthPeriod], [NinethPeriod] FROM [Arrangement] WHERE ([Daay] = @Daay)" DeleteCommand="DELETE Arrangement WHERE AbsentTeacherId='GridView2.Rows[e.RowIndex].Cells[4].Text' and Daay='GridView2.Rows[e.RowIndex].Cells[3].Text'">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblDayArr" DefaultValue="" Name="Daay" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:LinkButton Text="" ID="lnkFake2" runat="server" />
        <cc1:ModalPopupExtender ID="mpe2" runat="server" PopupControlID="pnlPopup2" TargetControlID="lnkFake2"
            CancelControlID="btnClose" BackgroundCssClass="modalBackground">
        </cc1:ModalPopupExtender>
        <asp:Panel ID="pnlPopup2" runat="server" CssClass="modalPopup" Style="display: none">
            <div class="header">
                Make Arrangement
            </div>
            <div class="body">
                <table style="width: 100%; height: 0">
                    <tr>

                        <td>
                           Id:
                        </td>
                        <td>
                            <asp:Label ID="lblId2" runat="server" />
                        </td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td class="auto-style22">
                            <b>Period</b>
                        </td>
                        <td class="auto-style1">
                            <b>Class</b>
                        </td>
                        <td>
                            <b>Teacher</b>
                        </td>

                    </tr>

                    <tr>
                        <td class="auto-style22">Zero Period</td>
                        <td class="auto-style1">
                            <asp:Label ID="lblZeroP" runat="server" />
                        </td>

                        <td style="width: 77px">
                            <asp:DropDownList ID="ddlIdZPD" runat="server">
                            </asp:DropDownList>
                        </td>

                    </tr>

                    <tr>
                        <td class="auto-style22">First Period</td>
                        <td class="auto-style1">
                            <asp:Label ID="lblFirstP" runat="server" />
                        </td>

                        <td style="width: 77px">
                            <asp:DropDownList ID="ddlIdFPD" runat="server">
                            </asp:DropDownList>
                        </td>

                    </tr>



                    <tr>
                        <td class="auto-style22">Second Period</td>
                        <td class="auto-style1">
                            <asp:Label ID="lblSecondP" runat="server"></asp:Label>
                        </td>

                        <td style="width: 77px">
                            <asp:DropDownList ID="ddlIdSPD" runat="server">
                            </asp:DropDownList>
                        </td>

                    </tr>


                    <tr>
                        <td class="auto-style22">Third Period</td>
                        <td class="auto-style1">
                            <asp:Label ID="lblThirdP" runat="server"></asp:Label>
                        </td>

                        <td style="width: 77px">
                            <asp:DropDownList ID="ddlIdTPD" runat="server">
                            </asp:DropDownList>
                        </td>

                    </tr>


                    <tr>
                        <td class="auto-style22">Fourth Period</td>
                        <td class="auto-style1">
                            <asp:Label ID="lblFourthP" runat="server"></asp:Label>
                        </td>
                        <td style="width: 77px">
                            <asp:DropDownList ID="ddlIdFOPD" runat="server">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style22">Fifth Period</td>
                        <td class="auto-style1">
                            <asp:Label ID="lblFifthP" runat="server"></asp:Label>
                        </td>

                        <td style="width: 77px">
                            <asp:DropDownList ID="ddlIdFIPD" runat="server">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style22">Sixth Period</td>
                        <td class="auto-style1">
                            <asp:Label ID="lblSixthP" runat="server"></asp:Label>
                        </td>
                        <td style="width: 77px">
                            <asp:DropDownList ID="ddlIdSIPD" runat="server">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style22">Seventh Period</td>
                        <td class="auto-style1">
                            <asp:Label ID="lblSeventhP" runat="server"></asp:Label>
                        </td>
                        <td style="width: 77px">
                            <asp:DropDownList ID="ddlIdSEPD" runat="server">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style22">Eighth Period </td>
                        <td class="auto-style1">
                            <asp:Label ID="lblEighthP" runat="server"></asp:Label>
                        </td>

                        <td style="width: 77px">
                            <asp:DropDownList ID="ddlIdEPD" runat="server">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style22">Nineth Period</td>
                        <td class="auto-style1">
                            <asp:Label ID="lblNinethP" runat="server"></asp:Label>
                        </td>
                        <td style="width: 77px">
                            <asp:DropDownList ID="ddlIdNPD" runat="server">
                            </asp:DropDownList>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="footer" align="right">

                <asp:Button ID="btnMakeArrangement" runat="server" Text="Make Arrangement" OnClick="btnMakeArrangement_Click" CssClass="button" />
                <asp:Button ID="Button2" runat="server" Text="Close" CssClass="button" />
            </div>

        </asp:Panel>
        <br />
        <asp:GridView ID="GridView3" runat="server" EmptyDataText="None of the teachers are added to the Absentees List." Width="100%" HeaderStyle-BackColor="Black" HeaderStyle-ForeColor="White" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" Caption='<table border="2" width="100%" cellpadding="0" cellspacing="0" bgcolor="darkblue"><tr class="auto-style11"><td>Arrangement Made</td></tr></table>' CaptionAlign="Top" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="AbsentTeacherId" HeaderText="AbsentTeacherId" SortExpression="AbsentTeacherId" />
                <asp:BoundField DataField="ZPDTArrName" HeaderText="ZPDTArrName" SortExpression="ZPDTArrName" />
                <asp:BoundField DataField="FPDTArrName" HeaderText="FPDTArrName" SortExpression="FPDTArrName" />
                <asp:BoundField DataField="SPDTArrName" HeaderText="SPDTArrName" SortExpression="SPDTArrName" />
                <asp:BoundField DataField="TPDTArrName" HeaderText="TPDTArrName" SortExpression="TPDTArrName" />
                <asp:BoundField DataField="FOPDTArrName" HeaderText="FOPDTArrName" SortExpression="FOPDTArrName" />
                <asp:BoundField DataField="FIPDTArrName" HeaderText="FIPDTArrName" SortExpression="FIPDTArrName" />
                <asp:BoundField DataField="SIPDTArrName" HeaderText="SIPDTArrName" SortExpression="SIPDTArrName" />
                <asp:BoundField DataField="SEPDTArrName" HeaderText="SEPDTArrName" SortExpression="SEPDTArrName" />
                <asp:BoundField DataField="EPDTArrName" HeaderText="EPDTArrName" SortExpression="EPDTArrName" />
                <asp:BoundField DataField="NPDTArrName" HeaderText="NPDTArrName" SortExpression="NPDTArrName" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" ForeColor="White" Font-Bold="True"></HeaderStyle>
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#2FBDF1" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SkoolniachConnectionString %>" SelectCommand="SELECT [AbsentTeacherId], [ZPDTArrName], [FPDTArrName], [SPDTArrName], [TPDTArrName], [FOPDTArrName], [FIPDTArrName], [SIPDTArrName], [SEPDTArrName], [EPDTArrName], [NPDTArrName] FROM [Arrangement] WHERE ([Daay] = @Daay)">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblDayArr" Name="Daay" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <table width="100%">
            <tr>
                <td style="text-align: right">
                    <br>
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="panel2" runat="server">
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
                <td class="auto-style13">
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddlDay" Display="Dynamic" ErrorMessage="*" Style="color: #FF0000" ValidationGroup="q1"></asp:RequiredFieldValidator>
                    <asp:DropDownList ID="ddlDay" runat="server" AutoPostBack="True">
                        <asp:ListItem>Monday</asp:ListItem>
                        <asp:ListItem>Tuesday</asp:ListItem>
                        <asp:ListItem>Wednesday</asp:ListItem>
                        <asp:ListItem>Thursday</asp:ListItem>
                        <asp:ListItem>Friday</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Button ID="btnSaturday" runat="server" Text="MAKE ARRANGEMENT FOR SATURDAY" class="button" OnClick="btnSaturday_Click" ValidationGroup="q1" />

                </td>
            </tr>

            <tr>
                <td class="auto-style13">
                    <asp:Label ID="lblmsgs" runat="server" Text="School does not open on Sunday ..."></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

