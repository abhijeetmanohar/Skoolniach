<%@ Page Title="" Language="C#" MasterPageFile="~/teacher/TeacherMasterPage.master" AutoEventWireup="true" CodeFile="Aut_DeleteQuestions.aspx.cs" Inherits="teacher_DeleteParticipants" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style148 {
            width: 50%;
        }
        .auto-style149 {
            text-align: center;
            font-size: xx-large;
        }
        .auto-style150 {
        }
        .auto-style151 {
        }
        .auto-style152 {
            width: 194px;
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="auto-style148">
        <tr>
            <td class="auto-style149" colspan="2"><strong>Delete Questions <span class="auto-style3">(Authorized)</span></strong></td>
        </tr>
        <tr>
            <td class="auto-style150" colspan="2">
               <p><asp:Label ID="lblError" runat="server" style="font-weight: 700"></asp:Label>
                   <asp:Label ID="lblMsg" runat="server" style="font-weight: 700"></asp:Label>
                </p> 
            </td>
        </tr>
        <tr>
            <td class="auto-style152">Quiz Id:</td>
            <td>
                <asp:DropDownList ID="ddlQuizId" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlQuizId_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style152">
                <asp:Label ID="Label1" runat="server" Text="Question Id : "></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlQI" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style151" colspan="2">
                <p>
                    <asp:Button ID="btnDelete" runat="server" OnClick="Button1_Click" Text="Delete" />
                </p>
              
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="QuestionId">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:BoundField DataField="QuizId" HeaderText="QuizId" SortExpression="QuizId" />
                        <asp:BoundField DataField="QuestionId" HeaderText="QuestionId" SortExpression="QuestionId" ReadOnly="True" />
                        <asp:BoundField DataField="Question" HeaderText="Question" SortExpression="Question" />
                        <asp:BoundField DataField="Answer" HeaderText="Answer" SortExpression="Answer" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SkoolniachConnectionString %>" SelectCommand="SELECT [QuizId], [QuestionId], [Question], [Answer] FROM [Questions] WHERE ([QuizId] = @QuizId)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddlQuizId" Name="QuizId" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
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
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SkoolniachConnectionString %>" SelectCommand="SELECT [QuizId], [QuestionId], [Options], [OptionName] FROM [Options] WHERE ([QuizId] = @QuizId)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddlQuizId" Name="QuizId" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

