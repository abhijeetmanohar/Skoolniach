<%@ Page Title="" Language="C#" MasterPageFile="~/teacher/TeacherMasterPage.master" AutoEventWireup="true" CodeFile="AddQuestions.aspx.cs" Inherits="teacher_AddQuestions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 50%;
        }

        .auto-style3 {
            width: 70%;
            font-size: x-large;
        }

        .auto-style4 {
        }
        .auto-style148 {
            width: 112px;
        }
    </style>
    <script type="text/javascript">
        function HideLabel() {
            var seconds = 5;
            setTimeout(function () {

                document.getElementById("<%=lblMsg.ClientID %>").style.display = "none";
                document.getElementById("<%=lblError.ClientID %>").style.display = "none";
            }, seconds * 1000);
        };
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table align="center" class="auto-style2">
        <tr>
            <td class="pop_up2" colspan="2"><strong><span class="auto-style3">Add Questions</span></strong></td>
        </tr>
        <tr>
            <td class="auto-style148">Quiz ID :</td>
            <td>
                <asp:DropDownList ID="ddlQuizId" runat="server" AutoPostBack="True">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlQuizId" Display="Dynamic" ErrorMessage="*" Style="color: #FF0000" ValidationGroup="q1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style148">Type : </td>
            <td>
                <asp:DropDownList ID="ddlType" runat="server" AutoPostBack="True">
                    <asp:ListItem Text="--Select Type--"  Value=""></asp:ListItem>
                    <asp:ListItem Text="Level-1/Junior" Value="Level-1/Junior"></asp:ListItem>
                    <asp:ListItem Text="Level-2/Junior" Value="Level-2/Junior"></asp:ListItem>
                    <asp:ListItem Text="Level-1/Senior" Value="Level-1/Senior"></asp:ListItem>
                    <asp:ListItem Text="Level-2/Senior" Value="Level-2/Senior"></asp:ListItem>

                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="ddlType" Display="Dynamic" ErrorMessage="*" Style="color: #FF0000" ValidationGroup="q1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style148">Question :</td>
            <td>
                <asp:TextBox ID="txtQuestion" runat="server" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtQuestion" Display="Dynamic" ErrorMessage="*" Style="color: #FF0000" ValidationGroup="q1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style148">Option A : </td>
            <td>
                <asp:TextBox ID="txtA" runat="server" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtA" Display="Dynamic" ErrorMessage="*" Style="color: #FF0000" ValidationGroup="q1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style148">Option B :</td>
            <td>
                <asp:TextBox ID="txtB" runat="server" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtB" Display="Dynamic" ErrorMessage="*" Style="color: #FF0000" ValidationGroup="q1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style148">Option C : </td>
            <td>
                <asp:TextBox ID="txtC" runat="server" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtC" Display="Dynamic" ErrorMessage="*" Style="color: #FF0000" ValidationGroup="q1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style148">Option D : </td>
            <td>
                <asp:TextBox ID="txtD" runat="server" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtD" Display="Dynamic" ErrorMessage="*" Style="color: #FF0000" ValidationGroup="q1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style148">Correct Option :</td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatColumns="4" RepeatDirection="Horizontal">
                    <asp:ListItem>A</asp:ListItem>
                    <asp:ListItem>B</asp:ListItem>
                    <asp:ListItem>C</asp:ListItem>
                    <asp:ListItem>D</asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="RadioButtonList1" Display="Dynamic" ErrorMessage="*" Style="color: #FF0000" ValidationGroup="q1"></asp:RequiredFieldValidator>

            </td>
        </tr>
        <tr>
            <td class="auto-style4" colspan="2">
                <p>
                    <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" ValidationGroup="q1" /></p>
            </td>
        </tr>
        <tr>
            <td class="auto-style148">&nbsp;</td>
            <td>
                <asp:Label ID="lblMsg" runat="server" ForeColor="Red"></asp:Label>
                <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="QuestionId" DataSourceID="SqlDataSource1" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:BoundField DataField="QuizId" HeaderText="QuizId" SortExpression="QuizId" />
                        <asp:BoundField DataField="QuestionId" HeaderText="QuestionId" ReadOnly="True" SortExpression="QuestionId" />
                        <asp:BoundField DataField="Question" HeaderText="Question" SortExpression="Question" />
                        <asp:BoundField DataField="Answer" HeaderText="Answer" SortExpression="Answer" />
                        <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SkoolniachConnectionString %>" SelectCommand="SELECT [QuizId], [QuestionId], [Question], [Answer], [Type] FROM [Questions] WHERE ([QuizId] = @QuizId)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddlQuizId" Name="QuizId" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource2" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:BoundField DataField="QuizId" HeaderText="QuizId" SortExpression="QuizId" />
                        <asp:BoundField DataField="QuestionId" HeaderText="QuestionId" SortExpression="QuestionId" />
                        <asp:BoundField DataField="Options" HeaderText="Options" SortExpression="Options" />
                        <asp:BoundField DataField="OptionName" HeaderText="OptionName" SortExpression="OptionName" />
                        <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
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
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SkoolniachConnectionString %>" SelectCommand="SELECT [QuizId], [QuestionId], [Options], [OptionName], [Type] FROM [Options] WHERE ([QuizId] = @QuizId)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddlQuizId" Name="QuizId" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

