<%@ Page Title="" Language="C#" MasterPageFile="~/teacher/TeacherMasterPage.master" AutoEventWireup="true" CodeFile="Aut_AddParticipants.aspx.cs" Inherits="teacher_AddStudentsForQuiz" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 80%;
        }

        .auto-style3 {
            width: 80%;
            font-size: x-large;
        }

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

        .auto-style11 {
            text-align: center;
            font-weight: 700;
            color: #000033;
        }

        .auto-style23 {
            text-align: center;
            height: 22px;
        }

        .auto-style26 {
            width: 58px;
        }

        .auto-style27 {
            width: 91%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table align="center" class="auto-style2">
        <tr>
            <td class="pop_up2" colspan="2"><strong><span class="auto-style3">Add Participants(Authorized)</span></strong></td>
        </tr>
        <tr>
            <td class="auto-style23" colspan="2">
                <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style26">Quiz Id : </td>
            <td class="auto-style27">
                <asp:DropDownList ID="ddlQuizId" runat="server">
                </asp:DropDownList>
                <asp:Label ID="lblQuizId" runat="server"></asp:Label>
                <asp:Button ID="btnDone" runat="server" Text="Done" OnClick="btnDone_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style26">
                <asp:Label ID="Label1" runat="server" Text="Search :"></asp:Label>
            </td>
            <td class="auto-style27">
                <asp:TextBox ID="txtSearch" runat="server" AutoPostBack="True" OnTextChanged="txtSearch_TextChanged"></asp:TextBox>
                <asp:Label ID="lblSearchMsg" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <br />
                <cc1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></cc1:ToolkitScriptManager>
                <asp:GridView ID="GridView1" OnSelectedIndexChanged="OnSelectedIndexChanged1" Caption='<table border="2" width="100%" cellpadding="0" cellspacing="0" bgcolor="darkblue"><tr class="auto-style11"><td>Search Results</td></tr></table>' runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>

                        <asp:TemplateField HeaderText="Add">
                            <ItemTemplate>
                                <asp:ImageButton ID="Select" runat="server" CommandName="Select" ImageUrl="~/images/Arrangement.png" ImageAlign="Middle" />
                            </ItemTemplate>
                        </asp:TemplateField>
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
                <asp:LinkButton Text="" ID="lnkFake" runat="server" />
                <cc1:ModalPopupExtender ID="mpe" runat="server" PopupControlID="pnlPopup" TargetControlID="lnkFake"
                    CancelControlID="btnClose" BackgroundCssClass="modalBackground">
                </cc1:ModalPopupExtender>
                <asp:Panel ID="pnlPopup" runat="server" CssClass="modalPopup" Style="display: none">
                    <div class="header">
                        Add Students For Quiz
                    </div>
                    <div class="body">
                        <table style="width: 100%; height: 0">
                            <tr>
                                <td class="auto-style22">
                                    <b>Class: </b>
                                </td>
                                <td class="auto-style1">
                                    <asp:Label ID="lblClass" runat="server" />
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
                                    <b>House: </b>
                                </td>
                                <td class="auto-style1">
                                    <asp:Label ID="lblHouse" runat="server" />

                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style22">
                                    <b>Admission Number: </b>
                                </td>
                                <td class="auto-style1">
                                    <asp:Label ID="lblAdmissionNo" runat="server" />

                                </td>
                            </tr>
                        </table>
                    </div>
                    <div class="footer" align="right">
                        <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" CssClass="button" />
                        <asp:Button ID="btnClose" runat="server" Text="Close" CssClass="button" />
                    </div>
                </asp:Panel>
                <br />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView2" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Caption='<table border="2" width="100%" cellpadding="0" cellspacing="0" bgcolor="darkblue"><tr class="auto-style11"><td>Participants added to the above Quiz Id</td></tr></table>'>
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:BoundField DataField="QuizId" HeaderText="QuizId" SortExpression="QuizId" />
                        <asp:BoundField DataField="AdmissionNumber" HeaderText="AdmissionNumber" SortExpression="AdmissionNumber" />
                        <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="House" HeaderText="House" SortExpression="House" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SkoolniachConnectionString %>" SelectCommand="SELECT [QuizId], [AdmissionNumber], [Class], [Name], [House] FROM [Participants] WHERE ([QuizId] = @QuizId)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddlQuizId" Name="QuizId" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

