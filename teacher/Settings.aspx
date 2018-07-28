<%@ Page Title="" Language="C#" MasterPageFile="~/teacher/TeacherMasterPage.master" AutoEventWireup="true" CodeFile="Settings.aspx.cs" Inherits="teacher_Settings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style148 {
        width: 50%;
    }
    .auto-style149 {
        text-align: center;
        font-size: x-large;
        height: 34px;
    }
    .auto-style150 {
        font-size: xx-small;
        text-align: center;
            height: 29px;
        }
    .auto-style151 {
    }
        .auto-style152 {
            height: 22px;
            font-size: x-large;
            text-align: center;
        }
        .auto-style153 {
            font-size: x-large;
            text-align: center;
        }
        .auto-style154 {
            height: 22px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="auto-style148">
    <tr>
        <td class="auto-style149" colspan="2"><strong>Add Authorization</strong></td>
    </tr>
    <tr>
        <td class="auto-style150" colspan="2">(You can give authority to any teacher for adding questions and addinig participants .)</td>
    </tr>
    <tr>
        <td>Quiz Id : </td>
        <td>
            <asp:DropDownList ID="ddlQuizId" runat="server" AutoPostBack="True">
            </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddlQuizId" Display="Dynamic" ErrorMessage="*" Style="color: #FF0000" ValidationGroup="q1"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>Teacher Id :</td>
        <td>
            <asp:DropDownList ID="ddlTeacherId" runat="server" AutoPostBack="True">
            </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddlTeacherId" Display="Dynamic" ErrorMessage="*" Style="color: #FF0000" ValidationGroup="q1"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="btnOK" runat="server" Text="Add" OnClick="btnOK_Click" ValidationGroup="q1" />
        </td>
    </tr>
    <tr>
        <td class="auto-style151"></td>
        <td class="auto-style151">
            <asp:Label ID="lblMsg" runat="server" ForeColor="Red"></asp:Label>
            <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style151" colspan="2">
            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:BoundField DataField="QuizId" HeaderText="QuizId" SortExpression="QuizId" />
                    <asp:BoundField DataField="TeacherId" HeaderText="TeacherId" SortExpression="TeacherId" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SkoolniachConnectionString %>" SelectCommand="SELECT [QuizId], [TeacherId] FROM [Authority] WHERE ([QuizId] = @QuizId)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlQuizId" Name="QuizId" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="auto-style152" colspan="2">
            <strong>Delete Quiz</strong></td>
    </tr>
    <tr>
        <td class="auto-style151">
            Quiz Id :
        </td>
        <td class="auto-style151">
            <asp:DropDownList ID="ddlQuizId1" runat="server" AutoPostBack="True">
            </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddlQuizId1" Display="Dynamic" ErrorMessage="*" Style="color: #FF0000" ValidationGroup="p1"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style151">
            &nbsp;</td>
        <td class="auto-style151">
            <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete" ValidationGroup="p1" />
        </td>
    </tr>
    <tr>
        <td class="auto-style151" colspan="2">
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource2" GridLines="Vertical">
                <AlternatingRowStyle BackColor="Gainsboro" />
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
                    <asp:BoundField DataField="QuizType" HeaderText="QuizType" SortExpression="QuizType" />
                    <asp:BoundField DataField="Teacher" HeaderText="Teacher" SortExpression="Teacher" />
                    <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" />
                    <asp:BoundField DataField="Activate" HeaderText="Activate" SortExpression="Activate" />
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                    <asp:BoundField DataField="StartTime" HeaderText="StartTime" SortExpression="StartTime" />
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
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SkoolniachConnectionString %>" SelectCommand="SELECT [ID], [QuizType], [Teacher], [Class], [Activate], [Description], [StartTime], [EndTime] FROM [Quiz] WHERE ([QuizID] = @QuizID)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlQuizId1" Name="QuizID" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="auto-style153" colspan="2">
            <strong>Add Instructions To Quiz</strong></td>
    </tr>
    <tr>
        <td class="auto-style151">
            Quiz Id :
        </td>
        <td class="auto-style151">
            <asp:DropDownList ID="ddlQuizId2" runat="server" AutoPostBack="True">
            </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddlQuizId2" Display="Dynamic" ErrorMessage="*" Style="color: #FF0000" ValidationGroup="r1"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style151">
            Instructions :</td>
        <td class="auto-style151">
            <asp:TextBox ID="txtAddInstructions" runat="server" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtAddInstructions" Display="Dynamic" ErrorMessage="*" Style="color: #FF0000" ValidationGroup="r1"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style151">
            &nbsp;</td>
        <td class="auto-style151">
            <asp:Button ID="txtAdd" runat="server" OnClick="txtAdd_Click" Text="Add " ValidationGroup="r1" />
            <asp:Label ID="lblAIMSG" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style151" colspan="2">
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource3" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:BoundField DataField="QuizId" HeaderText="QuizId" SortExpression="QuizId" />
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
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:SkoolniachConnectionString %>" SelectCommand="SELECT [QuizId], [Instructions] FROM [Instruction] WHERE ([QuizId] = @QuizId)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlQuizId2" Name="QuizId" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="auto-style153" colspan="2">
            <strong>Delete Instruction </strong></td>
    </tr>
    <tr>
        <td class="auto-style154">
            Quiz&nbsp; Id :</td>
        <td class="auto-style154">
            <asp:DropDownList ID="ddlQuizId3" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlQuizId3_SelectedIndexChanged">
            </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="ddlQuizId3" Display="Dynamic" ErrorMessage="*" Style="color: #FF0000" ValidationGroup="s1"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style151">
            Instruction :</td>
        <td class="auto-style151">
            <asp:DropDownList ID="ddlInstruction" runat="server">
            </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="ddlInstruction" Display="Dynamic" ErrorMessage="*" Style="color: #FF0000" ValidationGroup="s1"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style151">
            &nbsp;</td>
        <td class="auto-style151">
            <asp:Button ID="btnDeleteInstruction" runat="server" OnClick="btnDeleteInstruction_Click" Text="Delete" ValidationGroup="s1" />
        </td>
    </tr>
    <tr>
        <td class="auto-style151" colspan="2">
            <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource5" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:BoundField DataField="QuizId" HeaderText="QuizId" SortExpression="QuizId" />
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
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:SkoolniachConnectionString %>" SelectCommand="SELECT [QuizId], [Instructions] FROM [Instruction] WHERE ([QuizId] = @QuizId)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlQuizId3" Name="QuizId" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
        <tr>
        <td class="auto-style153" colspan="2">
            <strong>Delete Authorization</strong></td>
        </tr>
        <tr>
        <td class="auto-style154">
            Quiz&nbsp; Id :</td>
        <td class="auto-style154">
            <asp:DropDownList ID="ddlQuizId4" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlQuizId4_SelectedIndexChanged">
            </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="ddlQuizId4" Display="Dynamic" ErrorMessage="*" Style="color: #FF0000" ValidationGroup="t1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
        <td class="auto-style151">
            Teacher Id : </td>
        <td class="auto-style151">
            <asp:DropDownList ID="ddlTeacherId1" runat="server">
            </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="ddlTeacherId1" Display="Dynamic" ErrorMessage="*" Style="color: #FF0000" ValidationGroup="t1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
        <td class="auto-style151">
            &nbsp;</td>
        <td class="auto-style151">
            <asp:Button ID="btnDeleteAuthorization" runat="server" OnClick="btnDeleteAuthorization_Click" Text="Delete" ValidationGroup="t1" />
            </td>
        </tr>
        <tr>
        <td class="auto-style151" colspan="2">
            <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource4" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:BoundField DataField="QuizId" HeaderText="QuizId" SortExpression="QuizId" />
                    <asp:BoundField DataField="TeacherId" HeaderText="TeacherId" SortExpression="TeacherId" />
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
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:SkoolniachConnectionString %>" SelectCommand="SELECT [QuizId], [TeacherId] FROM [Authority] WHERE ([QuizId] = @QuizId)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlQuizId4" Name="QuizId" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

