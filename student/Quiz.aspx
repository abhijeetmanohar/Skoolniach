<%@ Page Title="" Language="C#" MasterPageFile="~/student/studentMasterPage.master" AutoEventWireup="true" CodeFile="Quiz.aspx.cs" Inherits="student_Quiz" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
   
    <style type="text/css">
        .auto-style2 {
            width: 50%;
        }

        .auto-style3 {
            text-align: center;
            color: #FF0000;
        }

        .auto-style4 {
            font-size: 40pt;
            text-align: center;
        }

        .auto-style7 {
            height: 22px;
            color: #FF0000;
            font-weight: bold;
            text-align: center;
        }

        .auto-style8 {
            color: #FF0000;
            font-weight: bold;
            text-align: center;
        }

        .auto-style9 {
            font-weight: bold;
            text-align: center;
        }

        .auto-style10 {
            color: #FF0000;
        }

        .auto-style11 {
            color: #000099;
            font-weight: 700;
        }

        .auto-style12 {
            color: #000099;
            font-weight: bold;
            text-align: center;
        }

        .auto-style15 {
        }

        .auto-style16 {
            width: 73%;
        }

        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <table align="center" class="auto-style2">
        <tr>
            <td>
                <p>
                    <asp:Label ID="lblError" runat="server" Style="font-size: medium; color: #FF0000"></asp:Label>
                    <asp:Label ID="lbl" runat="server"></asp:Label>
                </p>
            </td>
        </tr>
        <tr>
            <td class="auto-style4"><strong>QUIZ</strong></td>
        </tr>
        <tr>
            <td>
                <asp:Panel ID="Panel1" runat="server">

                    <table align="center">
                        <tr>
                            <td colspan="2" class="auto-style3"><strong>Fill out the form below to start your Quiz</strong></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlQuizId" Display="Dynamic" ErrorMessage="*" Style="color: #FF0000" ValidationGroup="q1"></asp:RequiredFieldValidator>
                                Quiz Id :</td>
                            <td>
                                <asp:DropDownList ID="ddlQuizId" runat="server" AutoPostBack="True">
                                </asp:DropDownList>
                                <asp:Button ID="btnOK" runat="server" Text="Start Quiz" OnClick="btnOK_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                <asp:Label ID="lblMsg" runat="server" Style="color: #FF0000"></asp:Label>
                            </td>
                        </tr>
                    </table>

                </asp:Panel>

                <asp:Panel ID="Panel2" runat="server">
                    <table align="center" class="nav-justified">
                        <tr>
                            <td class="auto-style7">Start Time</td>
                            <td class="auto-style7">Total Questions</td>
                            <td class="auto-style7">End Time</td>
                        </tr>
                        <tr>
                            <td class="pop_up2">
                                <asp:Label ID="lblStartTime" runat="server" CssClass="auto-style11"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="TotalQuestions" runat="server" CssClass="auto-style11"></asp:Label>
                            </td>
                            <td class="pop_up2">
                                <asp:Label ID="lblEndTime" runat="server" CssClass="auto-style11"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style8">Total Time</td>
                            <td class="auto-style9">&nbsp;<span class="auto-style10">Questions Completed</span></td>
                            <td class="auto-style8">Timer</td>
                        </tr>
                        <tr>
                            <td class="auto-style12">
                                <asp:Label ID="TotalTime" runat="server"></asp:Label>
                                <span class="auto-style11"></span></td>
                            <td class="pop_up2">
                                <asp:Label ID="NoOfQuestionsCompleted" runat="server" Style="color: #000099; font-weight: 700"></asp:Label>
                            </td>
                            <td class="auto-style9">
                                <asp:ScriptManager runat="server" ID="ScriptManager1">
                                </asp:ScriptManager>
                                <asp:UpdatePanel runat="server" ID="UpdatePanel1">
                                    <ContentTemplate>
                                        <asp:Timer runat="server" ID="Timer1" Interval="1" OnTick="Timer1_Tick"></asp:Timer>
                                        <asp:Label ID="lblTimer" runat="server" Text="" Style="color: #000099"></asp:Label>
                                    </ContentTemplate>
                                </asp:UpdatePanel>

                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style12" colspan="3">
                                <asp:Label ID="lblQuizId" runat="server" Style="font-size: xx-large"></asp:Label>
                            </td>
                        </tr>
                    </table>
                    <table class="nav-justified">
                        <tr>
                            <td colspan="2">
                                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                                    <AlternatingRowStyle BackColor="#DCDCDC" />
                                    <Columns>
                                        <asp:BoundField DataField="Instructions" HeaderText="Instructions" SortExpression="Instructions" />
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
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SkoolniachConnectionString %>" SelectCommand="SELECT [Instructions] FROM [Instruction] WHERE ([QuizId] = @QuizId)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="lblQuizId" Name="QuizId" PropertyName="Text" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style15">
                                <asp:Label ID="txt1" runat="server" Text="Question :" Style="font-weight: 700"></asp:Label>
                            </td>
                            <td class="auto-style16">
                                <asp:Label ID="lblQuestionId" runat="server"></asp:Label>
                                <asp:Label ID="lblQuestion" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style15"><strong>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="rbl" Display="Dynamic" ErrorMessage="*" Style="color: #FF0000" ValidationGroup="q1"></asp:RequiredFieldValidator>
                            </strong>
                                <asp:Label ID="txt2" runat="server" Text="Options :" Style="font-weight: 700"></asp:Label>
                            </td>
                            <td class="auto-style16">
                                <asp:RadioButtonList ID="rbl" runat="server" RepeatColumns="4" RepeatDirection="Horizontal">
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style17" colspan="2">
                                <p>
                                    <asp:Button ID="btnNext" runat="server" OnClick="btnNext_Click" Text="Next" />
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style17" colspan="2">
                                <p>
                                    <asp:Label ID="lblQC" runat="server" Text="You have solved all the questions of the above quiz." Style="font-weight: 700; font-size: x-large"></asp:Label>
                                </p>
                                <p>
                                    <asp:Button ID="btnBack" runat="server" OnClick="btnBack_Click" Text="Back To Dashborad" />
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style15" colspan="2">
                                <p>
                                    <asp:Label ID="lblQuizMsg" runat="server" Style="text-align: center"></asp:Label>
                                </p>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
    </table>


</asp:Content>

