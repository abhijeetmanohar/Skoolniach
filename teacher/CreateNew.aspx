<%@ Page Title="" Language="C#" MasterPageFile="~/teacher/TeacherMasterPage.master" AutoEventWireup="true" CodeFile="CreateNew.aspx.cs" Inherits="teacher_AddNew" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 90%;
        }


        .auto-style3 {
            font-size: xx-large;
        }

        .auto-style4 {
            height: 45px;
        }

        .auto-style5 {
            font-weight: 700;
            text-align: center;
        }
        .auto-style6 {
            text-align: left;
        }
        .auto-style7 {
            width: 194px;
            font-weight: 700;
            text-align: left;
        }
        .auto-style9 {
            width: 89px;
            font-weight: bold;
            text-align: left;
        }
        .auto-style10 {
            width: 194px;
            font-weight: 700;
            text-align: left;
            height: 320px;
        }
        .auto-style11 {
            width: 89px;
            font-weight: 700;
            text-align: left;
        }
        .auto-style12 {
            width: 89px;
            font-weight: 700;
            text-align: left;
            height: 320px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table class="auto-style2" align="center">
        <tr>
            <td colspan="2" class="auto-style4">
                <p class="auto-style3"><strong>Create a new quiz</strong></p>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">Quiz ID : </td>
            <td class="auto-style7">
                <asp:Label ID="lblQuizID" runat="server" Style="font-weight: 700"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">Quiz Name :</td>
            <td class="auto-style7">
                <asp:TextBox ID="txtQN" runat="server" Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtQN" Display="Dynamic" ErrorMessage="*" Style="color: #FF0000" ValidationGroup="q1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">Quiz Type : </td>
            <td class="auto-style7">
                <asp:DropDownList ID="ddlType" runat="server" Width="150px">
                    <asp:ListItem Value="">--Select Type--</asp:ListItem>
                    <asp:ListItem>Inter-House</asp:ListItem>
                    <asp:ListItem>Class/Section Wise </asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="ddlType" Display="Dynamic" ErrorMessage="*" Style="color: #FF0000" ValidationGroup="q1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">Quiz for Class : </td>
            <td class="auto-style7">
                <asp:DropDownList ID="ddlClass" runat="server" Width="150px">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="ddlClass" Display="Dynamic" ErrorMessage="*" Style="color: #FF0000" ValidationGroup="q1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">Description : </td>
            <td class="auto-style7">
                <asp:TextBox ID="txtDes" runat="server" Height="24px" TextMode="MultiLine" Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtDes" Display="Dynamic" ErrorMessage="*" Style="color: #FF0000" ValidationGroup="q1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">Start On(Date and Time) : </td>
            <td class="auto-style10">
                <strong>Date :</strong>
                <asp:TextBox ID="txtST" runat="server" placeholder="Please select date from calendar below." Width="150px"></asp:TextBox>
                <strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="txtST" Display="Dynamic" ErrorMessage="*" Style="color: #FF0000" ValidationGroup="q1"></asp:RequiredFieldValidator>
                </strong>
                <asp:Calendar ID="Calendar1" runat="server" SelectionMode="DayWeekMonth" OnSelectionChanged="Calendar1_SelectionChanged" Font-Size="Small" Height="30%" Width="150px">
                    <DayHeaderStyle BackColor="#FF9966" Font-Size="Small" />
                    <DayStyle BackColor="#CCCCFF" Font-Size="Smaller" />
                    <NextPrevStyle ForeColor="Yellow" />
                    <OtherMonthDayStyle BackColor="Lime" />
                    <SelectedDayStyle BackColor="#000099" BorderColor="#FF66FF" BorderStyle="Double" />
                    <TitleStyle BackColor="#00CCFF" />
                    <TodayDayStyle BackColor="#CCFF33" Font-Bold="True" Font-Italic="False" Font-Size="XX-Small" ForeColor="#FF9900" />
                    <WeekendDayStyle BackColor="#009933" />
                </asp:Calendar>
                <strong>Time :
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="ddlSThh" Display="Dynamic" ErrorMessage="*" Style="color: #FF0000" ValidationGroup="q1"></asp:RequiredFieldValidator>
                </strong>
                <asp:DropDownList ID="ddlSThh" runat="server" Width="150px">
                    <asp:ListItem Value="">--Select Hour--</asp:ListItem>
                    <asp:ListItem>01</asp:ListItem>
                    <asp:ListItem>02</asp:ListItem>
                    <asp:ListItem>03</asp:ListItem>
                    <asp:ListItem>04</asp:ListItem>
                    <asp:ListItem>05</asp:ListItem>
                    <asp:ListItem>06</asp:ListItem>
                    <asp:ListItem>07</asp:ListItem>
                    <asp:ListItem>08</asp:ListItem>
                    <asp:ListItem>09</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                </asp:DropDownList>
                :<asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="ddlSTmm" Display="Dynamic" ErrorMessage="*" Style="color: #FF0000" ValidationGroup="q1"></asp:RequiredFieldValidator>
                <asp:DropDownList ID="ddlSTmm" runat="server" Width="150px">
                    <asp:ListItem Value="">--Select Minute--</asp:ListItem>
                    <asp:ListItem>00</asp:ListItem>
                    <asp:ListItem>05</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>15</asp:ListItem>
                    <asp:ListItem>20</asp:ListItem>
                    <asp:ListItem>25</asp:ListItem>
                    <asp:ListItem>30</asp:ListItem>
                    <asp:ListItem>35</asp:ListItem>
                    <asp:ListItem>40</asp:ListItem>
                    <asp:ListItem>45</asp:ListItem>
                    <asp:ListItem>50</asp:ListItem>
                    <asp:ListItem>55</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="ddlSTtt" Display="Dynamic" ErrorMessage="*" Style="color: #FF0000" ValidationGroup="q1"></asp:RequiredFieldValidator>
                <asp:DropDownList ID="ddlSTtt" runat="server" Width="150px">
                    <asp:ListItem Value="">--Select --</asp:ListItem>
                    <asp:ListItem>AM</asp:ListItem>
                    <asp:ListItem>PM</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style9">End On(Date and Time) : </td>
            <td class="auto-style6">
                <b>Date : </b>
                <asp:TextBox ID="txtET" runat="server" placeholder="Please select date from calendar below." Width="150px" CssClass="text-bold"></asp:TextBox>
                <b>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="txtET" Display="Dynamic" ErrorMessage="*" Style="color: #FF0000" ValidationGroup="q1"></asp:RequiredFieldValidator>
                </b><strong>
                <asp:Calendar ID="Calendar3" runat="server" SelectionMode="DayWeekMonth" OnSelectionChanged="Calendar3_SelectionChanged" Font-Size="Small" Height="30%" Width="150px">
                    <DayHeaderStyle BackColor="#FF9966" Font-Size="Small" />
                    <DayStyle BackColor="#CCCCFF" Font-Size="Smaller" />
                    <NextPrevStyle ForeColor="Yellow" />
                    <OtherMonthDayStyle BackColor="Lime" />
                    <SelectedDayStyle BackColor="#000099" BorderColor="#FF66FF" BorderStyle="Double" />
                    <TitleStyle BackColor="#00CCFF" />
                    <TodayDayStyle BackColor="#CCFF33" Font-Bold="True" Font-Italic="False" Font-Size="XX-Small" ForeColor="#FF9900" />
                    <WeekendDayStyle BackColor="#009933" />
                </asp:Calendar>
                </strong><b>Time :
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="ddlEThh" Display="Dynamic" ErrorMessage="*" Style="color: #FF0000" ValidationGroup="q1"></asp:RequiredFieldValidator>
                    </b>
                    <asp:DropDownList ID="ddlEThh" runat="server" CssClass="text-bold" Width="150px">
                        <asp:ListItem Value="">--Select Hour--</asp:ListItem>
                        <asp:ListItem>01</asp:ListItem>
                        <asp:ListItem>02</asp:ListItem>
                        <asp:ListItem>03</asp:ListItem>
                        <asp:ListItem>04</asp:ListItem>
                        <asp:ListItem>05</asp:ListItem>
                        <asp:ListItem>06</asp:ListItem>
                        <asp:ListItem>07</asp:ListItem>
                        <asp:ListItem>08</asp:ListItem>
                        <asp:ListItem>09</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                    </asp:DropDownList>
                    :<b><asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="ddlETmm" Display="Dynamic" ErrorMessage="*" Style="color: #FF0000" ValidationGroup="q1"></asp:RequiredFieldValidator>

                </b>
                <asp:DropDownList ID="ddlETmm" runat="server" CssClass="text-bold" Width="150px">
                        <asp:ListItem Value="">--Select Minute--</asp:ListItem>
                        <asp:ListItem>00</asp:ListItem>
                        <asp:ListItem>05</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                        <asp:ListItem>25</asp:ListItem>
                        <asp:ListItem>30</asp:ListItem>
                        <asp:ListItem>35</asp:ListItem>
                        <asp:ListItem>40</asp:ListItem>
                        <asp:ListItem>45</asp:ListItem>
                        <asp:ListItem>50</asp:ListItem>
                        <asp:ListItem>55</asp:ListItem>
                    </asp:DropDownList>

                <b>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="ddlETtt" Display="Dynamic" ErrorMessage="*" Style="color: #FF0000" ValidationGroup="q1"></asp:RequiredFieldValidator>

                </b>

                <asp:DropDownList ID="ddlETtt" runat="server" CssClass="text-bold" Width="150px">
                    <asp:ListItem Value="">--Select --</asp:ListItem>
                    <asp:ListItem>AM</asp:ListItem>
                    <asp:ListItem>PM</asp:ListItem>
                </asp:DropDownList>

            </td>
        </tr>
        <tr>
            <td class="auto-style5" colspan="2">
                <br />
                <asp:Button ID="btnCreate" runat="server" Text="Create" OnClick="btnCreate_Click" ValidationGroup="q1" />
                <asp:Label ID="lblMsg" runat="server" ForeColor="Red"></asp:Label>
                <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        </table>
</asp:Content>

