<%@ Page Title="" Language="C#" MasterPageFile="~/teacher/TeacherMasterPage.master" AutoEventWireup="true" CodeFile="AddStudents.aspx.cs" Inherits="teacher_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script type="text/javascript">
        function HideLabel() {
            var seconds = 5;
            setTimeout(function () {

                document.getElementById("<%=lblMsg.ClientID %>").style.display = "none";
                document.getElementById("<%=lblMessage.ClientID %>").style.display = "none";

            }, seconds * 1000);
        };
    </script>
    <style type="text/css">
        .auto-style3 {
            height: 16px;
        }

        .auto-style4 {
            text-align: center;
        }

        .auto-style5 {
            text-align: left;
        }

        .auto-style8 {
            text-align: left;
            width: 171px;
        }

        .auto-style9 {
            font-size: x-large;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table align="center" style="width: 50%; font-weight: 700;">
        <tr>
            <td class="auto-style9" colspan="2">Add Students</td>
        </tr>
        <tr>
            <td class="auto-style5">



                <asp:Panel ID="Panel1" runat="server">
                    <table align="center">
                        <tr>
                            <td class="auto-style3" colspan="2" style="text-align: center">
                                <asp:Label ID="lblClassMsg" runat="server" Style="text-align: center; color: #FF0000"></asp:Label>
                                <asp:Label ID="lblClass" runat="server" Style="text-align: center; color: #FF0000"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" Display="Dynamic" ErrorMessage="*" Style="color: #FF0000" ValidationGroup="q1"></asp:RequiredFieldValidator>
                                Name</td>
                            <td class="auto-style8">
                                <asp:TextBox ID="txtName" runat="server" Width="150px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddlGender" Display="Dynamic" ErrorMessage="*" Style="color: #FF0000" ValidationGroup="q1"></asp:RequiredFieldValidator>
                                Gender</td>
                            <td class="auto-style8">
                                <asp:DropDownList ID="ddlGender" runat="server" Width="150px">
                                    <asp:ListItem Value="">--Select Gender--</asp:ListItem>
                                    <asp:ListItem>Male</asp:ListItem>
                                    <asp:ListItem>Female</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtFather" Display="Dynamic" ErrorMessage="*" Style="color: #FF0000" ValidationGroup="q1"></asp:RequiredFieldValidator>
                                Father&#39;s Name</td>
                            <td class="auto-style8">
                                <asp:TextBox ID="txtFather" runat="server" Width="150px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="ddlHouse" Display="Dynamic" ErrorMessage="*" Style="color: #FF0000" ValidationGroup="q1"></asp:RequiredFieldValidator>
                                House</td>
                            <td class="auto-style8">
                                <asp:DropDownList ID="ddlHouse" runat="server" Width="150px">
                                    <asp:ListItem Value="">--Select House--</asp:ListItem>
                                    <asp:ListItem>Ganga</asp:ListItem>
                                    <asp:ListItem>Jamuna</asp:ListItem>
                                    <asp:ListItem>Raavi</asp:ListItem>
                                    <asp:ListItem>Chenab</asp:ListItem>
                                    <asp:ListItem>Sutlej</asp:ListItem>
                                    <asp:ListItem>Jhelum</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtAN" Display="Dynamic" ErrorMessage="*" Style="color: #FF0000" ValidationGroup="q1"></asp:RequiredFieldValidator>
                                Admission Number (User Name)</td>
                            <td class="auto-style8">
                                <asp:TextBox ID="txtAN" runat="server" Width="150px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtSI" Display="Dynamic" ErrorMessage="*" Style="color: #FF0000" ValidationGroup="q1"></asp:RequiredFieldValidator>
                                Student Id (Password)</td>
                            <td class="auto-style8">
                                <asp:TextBox ID="txtSI" runat="server" TextMode="Password" Width="150px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5"><strong>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="FileUpload1" Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationGroup="q1"></asp:RequiredFieldValidator>
                                Profile Picture :</strong></td>
                            <td class="auto-style8">
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                            </td>

                        </tr>
                        <tr>
                            <td class="auto-style4" colspan="2">
                                <br />
                                <asp:Button ID="btnSave" runat="server" OnClick="Save_Click" Text="Save" ValidationGroup="q1" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">&nbsp;</td>
                            <td class="auto-style8">&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:Label ID="lblMessage" runat="server" Font-Names="Arial" Text="" Style="color: #FF0000"></asp:Label>
                <asp:Label ID="lblMsg" runat="server" Style="text-align: center; color: #FF0000"></asp:Label>
                <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

