<%@ Page Title="Add Teacher" Language="C#" MasterPageFile="~/admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="AddTeacher.aspx.cs" Inherits="AddTeachers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" />
    <script type="text/javascript">
        function HideLabel() {
            var seconds = 5;
            setTimeout(function () {

                document.getElementById("<%=lblMonMessage.ClientID %>").style.display = "none";
                document.getElementById("<%=lblTueMessage.ClientID %>").style.display = "none";
                document.getElementById("<%=lblWedMessage.ClientID %>").style.display = "none";
                document.getElementById("<%=lblThursMessage.ClientID %>").style.display = "none";
                document.getElementById("<%=lblFriMessage.ClientID %>").style.display = "none";
            }, seconds * 1000);
        };
    </script>
  <table style="width: 100%">
        <tr>
            <td style="width: 101px; height: 26px; text-align: left">
                <strong>
                <asp:ImageButton ID="btnBack" runat="server" ImageUrl="~/images/Arrow Back.png" OnClick="btnBack_Click" />
                </strong>
            </td>

        </tr>
    </table>
    <asp:Panel ID="Panel1" runat="server">
        <table style="width: 100%">
            <tr>
                <td style="height: 43px; text-align: center;">
                    <img src="../images/at.png" />
                    <span style="font-size: x-large">&nbsp;&nbsp;<strong> ADD A NEW TEACHER</strong></span> </td>
            </tr>
            <tr>
                <td style="height: 26px;">
                    <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label></td>
            </tr>
            <tr>
                <asp:Panel ID="Panel8" runat="server">
                    <table style="width: 50%" align="center">
                        <tr>
                            <td style="height: 26px; text-align: left">Teacher&#39;s Name : 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator48" runat="server" ControlToValidate="txtName" Display="Dynamic" ErrorMessage="*" Style="color: #FF0000" ValidationGroup="g1"></asp:RequiredFieldValidator>

                            </td>
                            <td style="height: 26px; text-align: left">
                                <asp:TextBox ID="txtName" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="height: 26px; text-align: left">Teacher&#39;s Initial :
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator51" runat="server" ControlToValidate="txtInitial" Display="Dynamic" ErrorMessage="*" Style="color: #FF0000" ValidationGroup="g1"></asp:RequiredFieldValidator>
                            </td>
                            <td style="height: 26px; text-align: left">
                                <asp:TextBox ID="txtInitial" runat="server" ValidationGroup="g1"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="height: 26px; text-align: left">Email :
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator52" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="*" Style="color: #FF0000" ValidationGroup="g1"></asp:RequiredFieldValidator>

                                <td style="height: 26px; text-align: left">
                                    <asp:TextBox ID="txtEmail" runat="server" ValidationGroup="g1"></asp:TextBox></td>
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 26px; text-align: left">Subject :
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator53" runat="server" ControlToValidate="Subject" Display="Dynamic" ErrorMessage="*" Style="color: #FF0000" ValidationGroup="g1"></asp:RequiredFieldValidator>

                            </td>
                            <td style="height: 26px; text-align: left">
                                <asp:UpdatePanel runat="server" ID="UpdatePanel1" UpdateMode="Conditional">

                                    <ContentTemplate>
                                        <asp:DropDownList ID="Subject" runat="server" AutoPostBack="True">
                                        </asp:DropDownList><br />
                                    </ContentTemplate>
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="Subject" EventName="SelectedIndexChanged" />
                                    </Triggers>
                                </asp:UpdatePanel>
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 26px; text-align: left">Class Teacher :
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator54" runat="server" ControlToValidate="ClassTeacher" Display="Dynamic" ErrorMessage="*" Style="color: #FF0000" ValidationGroup="g1"></asp:RequiredFieldValidator>
                            </td>
                            <td style="height: 26px; text-align: left">
                                <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">

                                    <ContentTemplate>
                                        <asp:DropDownList ID="ClassTeacher" runat="server" AutoPostBack="True">
                                        </asp:DropDownList>
                                    </ContentTemplate>
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="ClassTeacher" EventName="SelectedIndexChanged" />
                                    </Triggers>
                                </asp:UpdatePanel>
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 26px; text-align: left">House :
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator55" runat="server" ControlToValidate="ddlHouse" Display="Dynamic" ErrorMessage="*" Style="color: #FF0000" ValidationGroup="g1"></asp:RequiredFieldValidator>
                            </td>
                            <td style="height: 26px; text-align: left">
                                <asp:UpdatePanel ID="UpdatePanel3" runat="server" UpdateMode="Conditional">

                                    <ContentTemplate>
                                        <asp:DropDownList ID="ddlHouse" runat="server" AutoPostBack="True">
                                            <asp:ListItem Value="">--Select House--</asp:ListItem>
                                            <asp:ListItem>Ganga</asp:ListItem>
                                            <asp:ListItem>Jamuna</asp:ListItem>
                                            <asp:ListItem>Raavi</asp:ListItem>
                                            <asp:ListItem>Chenab</asp:ListItem>
                                            <asp:ListItem>Sutlej</asp:ListItem>
                                            <asp:ListItem>Jhelum</asp:ListItem>
                                        </asp:DropDownList>
                                    </ContentTemplate>
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="ddlHouse" EventName="SelectedIndexChanged" />
                                    </Triggers>
                                </asp:UpdatePanel>
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 26px; text-align: left">Position In House :
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator56" runat="server" ControlToValidate="ddlPosition" Display="Dynamic" ErrorMessage="*" Style="color: #FF0000" ValidationGroup="g1"></asp:RequiredFieldValidator>
                            </td>
                            <td style="height: 26px; text-align: left">
                                <asp:UpdatePanel ID="UpdatePanel4" runat="server" UpdateMode="Conditional">

                                    <ContentTemplate>
                                        <asp:DropDownList ID="ddlPosition" runat="server" AutoPostBack="True">
                                            <asp:ListItem Value="">--Select Position--</asp:ListItem>
                                            <asp:ListItem>House Warden</asp:ListItem>
                                            <asp:ListItem>Other</asp:ListItem>
                                        </asp:DropDownList>
                                    </ContentTemplate>
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="ddlPosition" EventName="SelectedIndexChanged" />
                                    </Triggers>
                                </asp:UpdatePanel>
                            </td>
                        </tr>
                        <tr>



                            <td style="height: 26px; text-align: left">
                                <asp:Label ID="lblti" runat="server" Text="Teacher Id :"></asp:Label>
                            </td>
                            <td style="height: 26px; text-align: left">
                                <asp:Label ID="lblTeacherId" runat="server" Style="font-weight: 700"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 26px; text-align: left">
                                <asp:Label ID="lbltp" runat="server" Text="Teacher Password : "></asp:Label>


                            </td>
                            <td style="height: 26px; text-align: left">
                                <asp:Label ID="lblPassword" runat="server" Style="font-weight: 700"></asp:Label></td>

                        </tr>

                        <tr>
                            <td style="height: 26px; text-align: center;">

                                <asp:Button ID="btnTeacherId" runat="server" OnClick="btnTeacherId_Click" Text="Generate Id" ValidationGroup="g1" />


                            </td>
                            <td>
                                <asp:Button ID="btnPassword" runat="server" OnClick="btnPassword_Click" Text="Generate Password" /></td>

                        </tr>

                        <tr>
                            <td>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid Email" Style="color: #FF0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="g1"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblLogin" runat="server" Style="color: #FF0000; font-weight: 700; font-size: large;"></asp:Label></td>
                        </tr>
                    </table>
                </asp:Panel>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel00" runat="server">
        <table style="width: 100%">
            <tr>
                <td style="height: 26px; text-align: center; font-size: large">
                    <asp:Panel ID="Panel7" runat="server"><strong>Make Timetable For This Teacher</strong></asp:Panel>
                </td>
            </tr>

        </table>
    </asp:Panel>
    <table style="width: 80%">
        <tr>
            <asp:Panel ID="Panel2" runat="server">
                <td>
                    <table class="nav-justified">
                        <tr>
                            <td><strong>Monday</strong></td>
                            <td></td>
                            <td></td>

                            <td></td>

                            <td></td>

                            <td></td>

                            <td></td>

                            <td></td>

                            <td></td>
                            <td></td>


                        </tr>

                        <tr>
                            <td>Period : </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="MonFirstP" Display="Dynamic" ErrorMessage="*" Style="color: #FF0000" ValidationGroup="q1"></asp:RequiredFieldValidator>
                                <asp:UpdatePanel ID="UpdatePanel" runat="server" UpdateMode="Conditional">
                                    <ContentTemplate>
                                        <asp:DropDownList ID="MonFirstP" runat="server" AutoPostBack="True">
                                        </asp:DropDownList>
                                    </ContentTemplate>
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="MonFirstP" EventName="SelectedIndexChanged" />
                                    </Triggers>
                                </asp:UpdatePanel>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="MonSecondP" Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationGroup="q1"></asp:RequiredFieldValidator>
                                <asp:UpdatePanel runat="server" ID="UpdatePanel5" UpdateMode="Conditional">

                                    <ContentTemplate>
                                        <asp:DropDownList ID="MonSecondP" runat="server" AutoPostBack="True"></asp:DropDownList>
                                    </ContentTemplate>
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="MonSecondP" EventName="SelectedIndexChanged" />
                                    </Triggers>
                                </asp:UpdatePanel>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="MonThirdP" Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationGroup="q1"></asp:RequiredFieldValidator>
                                <asp:UpdatePanel runat="server" ID="UpdatePanel6" UpdateMode="Conditional">

                                    <ContentTemplate>
                                        <asp:DropDownList ID="MonThirdP" runat="server" AutoPostBack="True"></asp:DropDownList>
                                    </ContentTemplate>
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="MonThirdP" EventName="SelectedIndexChanged" />
                                    </Triggers>
                                </asp:UpdatePanel>
                            </td>
                            <td>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="MonFourthP" Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationGroup="q1"></asp:RequiredFieldValidator>
                                <asp:UpdatePanel ID="UpdatePanel7" runat="server" UpdateMode="Conditional">

                                    <ContentTemplate>
                                        <asp:DropDownList ID="MonFourthP" runat="server" AutoPostBack="True"></asp:DropDownList>
                                    </ContentTemplate>
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="MonFourthP" EventName="SelectedIndexChanged" />
                                    </Triggers>
                                </asp:UpdatePanel>

                            </td>

                            <td>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="MonFifthP" Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationGroup="q1"></asp:RequiredFieldValidator>
                                <asp:UpdatePanel ID="UpdatePanel8" runat="server" UpdateMode="Conditional">

                                    <ContentTemplate>
                                        <asp:DropDownList ID="MonFifthP" runat="server" AutoPostBack="True"></asp:DropDownList>
                                    </ContentTemplate>
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="MonFifthP" EventName="SelectedIndexChanged" />
                                    </Triggers>
                                </asp:UpdatePanel>


                            </td>

                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator46" runat="server" ControlToValidate="MonSixthP" Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationGroup="q1"></asp:RequiredFieldValidator>
                                <asp:UpdatePanel ID="UpdatePanel9" runat="server" UpdateMode="Conditional">

                                    <ContentTemplate>
                                        <asp:DropDownList ID="MonSixthP" runat="server" AutoPostBack="True"></asp:DropDownList>

                                    </ContentTemplate>
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="MonSixthP" EventName="SelectedIndexChanged" />
                                    </Triggers>
                                </asp:UpdatePanel>
                            </td>

                            <td>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="MonSeventhP" Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationGroup="q1"></asp:RequiredFieldValidator>
                                <asp:UpdatePanel ID="UpdatePanel10" runat="server" UpdateMode="Conditional">

                                    <ContentTemplate>
                                        <asp:DropDownList ID="MonSeventhP" runat="server" AutoPostBack="True"></asp:DropDownList>

                                    </ContentTemplate>
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="MonSeventhP" EventName="SelectedIndexChanged" />
                                    </Triggers>
                                </asp:UpdatePanel>

                            </td>

                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="MonEighthP" Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationGroup="q1"></asp:RequiredFieldValidator>
                                <asp:UpdatePanel ID="UpdatePanel11" runat="server" UpdateMode="Conditional">

                                    <ContentTemplate>
                                        <asp:DropDownList ID="MonEighthP" runat="server" AutoPostBack="True"></asp:DropDownList>
                                    </ContentTemplate>
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="MonEighthP" EventName="SelectedIndexChanged" />
                                    </Triggers>
                                </asp:UpdatePanel>


                            </td>

                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="MonNinethP" Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationGroup="q1"></asp:RequiredFieldValidator>
                                <asp:UpdatePanel ID="UpdatePanel12" runat="server" UpdateMode="Conditional">

                                    <ContentTemplate>
                                        <asp:DropDownList ID="MonNinethP" runat="server" AutoPostBack="True"></asp:DropDownList>
                                    </ContentTemplate>
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="MonNinethP" EventName="SelectedIndexChanged" />
                                    </Triggers>
                                </asp:UpdatePanel>

                            </td>

                            <td>
                                <asp:Button ID="btnMonday" runat="server" OnClick="btnMonday_Click" Text="Next" ValidationGroup="q1" />
                            </td>
                            <td>
                                <asp:Label ID="lblMonMessage" runat="server" Style="color: #FF0000"></asp:Label>
                            </td>


                        </tr>

                    </table>
                </td>
            </asp:Panel>
        </tr>
        <tr>
            <asp:Panel ID="Panel3" runat="server">
                <td>
                    <table class="nav-justified">
                        <tr>
                            <td><strong>Tuesday</strong></td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>Period : </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="TueFirstP" Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationGroup="q1"></asp:RequiredFieldValidator>
                                <asp:UpdatePanel ID="UpdatePanel13" runat="server" UpdateMode="Conditional">

                                    <ContentTemplate>
                                        <asp:DropDownList ID="TueFirstP" runat="server" AutoPostBack="True"></asp:DropDownList>

                                    </ContentTemplate>
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="TueFirstP" EventName="SelectedIndexChanged" />
                                    </Triggers>
                                </asp:UpdatePanel>
                            </td>

                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="TueSecondP" Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationGroup="q1"></asp:RequiredFieldValidator>
                                <asp:UpdatePanel ID="UpdatePanel14" runat="server" UpdateMode="Conditional">

                                    <ContentTemplate>
                                        <asp:DropDownList ID="TueSecondP" runat="server" AutoPostBack="True"></asp:DropDownList>

                                    </ContentTemplate>
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="TueSecondP" EventName="SelectedIndexChanged" />
                                    </Triggers>
                                </asp:UpdatePanel>
                            </td>

                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="TueThirdP" Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationGroup="q1"></asp:RequiredFieldValidator>
                                <asp:UpdatePanel ID="UpdatePanel15" runat="server" UpdateMode="Conditional">

                                    <ContentTemplate>
                                        <asp:DropDownList ID="TueThirdP" runat="server" AutoPostBack="True"></asp:DropDownList>

                                    </ContentTemplate>
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="TueThirdP" EventName="SelectedIndexChanged" />
                                    </Triggers>
                                </asp:UpdatePanel>
                            </td>

                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="TueFourthP" Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationGroup="q1"></asp:RequiredFieldValidator>
                                <asp:UpdatePanel ID="UpdatePanel16" runat="server" UpdateMode="Conditional">

                                    <ContentTemplate>
                                        <asp:DropDownList ID="TueFourthP" runat="server" AutoPostBack="True"></asp:DropDownList>
                                    </ContentTemplate>
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="TueFourthP" EventName="SelectedIndexChanged" />
                                    </Triggers>
                                </asp:UpdatePanel>

                            </td>

                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="TueFifthP" Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationGroup="q1"></asp:RequiredFieldValidator>
                                <asp:UpdatePanel ID="UpdatePanel17" runat="server" UpdateMode="Conditional">

                                    <ContentTemplate>
                                        <asp:DropDownList ID="TueFifthP" runat="server" AutoPostBack="True"></asp:DropDownList>

                                    </ContentTemplate>
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="TueFifthP" EventName="SelectedIndexChanged" />
                                    </Triggers>
                                </asp:UpdatePanel>
                            </td>

                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="TueSixthP" Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationGroup="q1"></asp:RequiredFieldValidator>
                                <asp:UpdatePanel ID="UpdatePanel18" runat="server" UpdateMode="Conditional">

                                    <ContentTemplate>
                                        <asp:DropDownList ID="TueSixthP" runat="server" AutoPostBack="True"></asp:DropDownList>

                                    </ContentTemplate>
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="TueSixthP" EventName="SelectedIndexChanged" />
                                    </Triggers>
                                </asp:UpdatePanel>
                            </td>

                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="TueSeventhP" Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationGroup="q1"></asp:RequiredFieldValidator>
                                <asp:UpdatePanel ID="UpdatePanel19" runat="server" UpdateMode="Conditional">

                                    <ContentTemplate>
                                        <asp:DropDownList ID="TueSeventhP" runat="server" AutoPostBack="True"></asp:DropDownList>
                                    </ContentTemplate>
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="TueSeventhP" EventName="SelectedIndexChanged" />
                                    </Triggers>
                                </asp:UpdatePanel>

                            </td>

                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="TueEighthP" Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationGroup="q1"></asp:RequiredFieldValidator>
                                <asp:UpdatePanel ID="UpdatePanel20" runat="server" UpdateMode="Conditional">

                                    <ContentTemplate>
                                        <asp:DropDownList ID="TueEighthP" runat="server" AutoPostBack="True"></asp:DropDownList>
                                    </ContentTemplate>
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="TueEighthP" EventName="SelectedIndexChanged" />
                                    </Triggers>
                                </asp:UpdatePanel>

                            </td>

                            <td>
                                <asp:Button ID="btnTuesday" runat="server" Text="Next" OnClick="btnTuesday_Click" ValidationGroup="q1" />
                            </td>

                            <td>
                                <asp:Label ID="lblTueMessage" runat="server" Style="color: #FF0000"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </asp:Panel>
        </tr>
        <tr>
            <asp:Panel ID="Panel4" runat="server">
                <td>
                    <table class="nav-justified">
                        <tr>
                            <td><strong>Wednesday</strong></td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>Period : </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ControlToValidate="WedFirstP" Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationGroup="q1"></asp:RequiredFieldValidator>
                                <asp:UpdatePanel ID="UpdatePanel21" runat="server" UpdateMode="Conditional">

                                    <ContentTemplate>
                                        <asp:DropDownList ID="WedFirstP" runat="server" AutoPostBack="True"></asp:DropDownList>
                                    </ContentTemplate>
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="WedFirstP" EventName="SelectedIndexChanged" />
                                    </Triggers>
                                </asp:UpdatePanel>

                            </td>


                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ControlToValidate="WedSecondP" Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationGroup="q1"></asp:RequiredFieldValidator>
                                <asp:UpdatePanel ID="UpdatePanel22" runat="server" UpdateMode="Conditional">

                                    <ContentTemplate>
                                        <asp:DropDownList ID="WedSecondP" runat="server" AutoPostBack="True"></asp:DropDownList>
                                    </ContentTemplate>
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="WedSecondP" EventName="SelectedIndexChanged" />
                                    </Triggers>
                                </asp:UpdatePanel>

                            </td>


                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ControlToValidate="WedThirdP" Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationGroup="q1"></asp:RequiredFieldValidator>
                                <asp:UpdatePanel ID="UpdatePanel23" runat="server" UpdateMode="Conditional">

                                    <ContentTemplate>
                                        <asp:DropDownList ID="WedThirdP" runat="server" AutoPostBack="True"></asp:DropDownList>
                                    </ContentTemplate>
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="WedThirdP" EventName="SelectedIndexChanged" />
                                    </Triggers>
                                </asp:UpdatePanel>

                            </td>


                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" ControlToValidate="WedFourthP" Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationGroup="q1"></asp:RequiredFieldValidator>
                                <asp:UpdatePanel ID="UpdatePanel24" runat="server" UpdateMode="Conditional">

                                    <ContentTemplate>
                                        <asp:DropDownList ID="WedFourthP" runat="server" AutoPostBack="True"></asp:DropDownList>
                                    </ContentTemplate>
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="WedFourthP" EventName="SelectedIndexChanged" />
                                    </Triggers>
                                </asp:UpdatePanel>

                            </td>

                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator47" runat="server" ControlToValidate="WedFifthP" Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationGroup="q1"></asp:RequiredFieldValidator>
                                <asp:UpdatePanel ID="UpdatePanel25" runat="server" UpdateMode="Conditional">

                                    <ContentTemplate>
                                        <asp:DropDownList ID="WedFifthP" runat="server" AutoPostBack="True"></asp:DropDownList>
                                    </ContentTemplate>
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="WedFifthP" EventName="SelectedIndexChanged" />
                                    </Triggers>
                                </asp:UpdatePanel>

                            </td>

                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" ControlToValidate="WedSixthP" Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationGroup="q1"></asp:RequiredFieldValidator>
                                <asp:UpdatePanel ID="UpdatePanel26" runat="server" UpdateMode="Conditional">

                                    <ContentTemplate>
                                        <asp:DropDownList ID="WedSixthP" runat="server" AutoPostBack="True"></asp:DropDownList>
                                    </ContentTemplate>
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="WedSixthP" EventName="SelectedIndexChanged" />
                                    </Triggers>
                                </asp:UpdatePanel>

                            </td>

                            <td>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator27" runat="server" ControlToValidate="WedSeventhP" Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationGroup="q1"></asp:RequiredFieldValidator>
                                <asp:UpdatePanel ID="UpdatePanel27" runat="server" UpdateMode="Conditional">

                                    <ContentTemplate>
                                        <asp:DropDownList ID="WedSeventhP" runat="server" AutoPostBack="True"></asp:DropDownList>
                                    </ContentTemplate>
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="WedSeventhP" EventName="SelectedIndexChanged" />
                                    </Triggers>
                                </asp:UpdatePanel>

                            </td>

                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator28" runat="server" ControlToValidate="WedEighthP" Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationGroup="q1"></asp:RequiredFieldValidator>
                                <asp:UpdatePanel ID="UpdatePanel28" runat="server" UpdateMode="Conditional">

                                    <ContentTemplate>
                                        <asp:DropDownList ID="WedEighthP" runat="server" AutoPostBack="True"></asp:DropDownList>
                                    </ContentTemplate>
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="WedEighthP" EventName="SelectedIndexChanged" />
                                    </Triggers>
                                </asp:UpdatePanel>

                            </td>


                            <td>
                                <asp:Button ID="btnWednesday" runat="server" Text="Next" OnClick="btnWednesday_Click" ValidationGroup="q1" />
                            </td>

                            <td>
                                <asp:Label ID="lblWedMessage" runat="server" Style="color: #FF0000"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </asp:Panel>
        </tr>
        <tr>
            <asp:Panel ID="Panel5" runat="server">
                <td>
                    <asp:Panel ID="Panel12" runat="server">
                        <table class="nav-justified">
                            <tr>
                                <td><strong>Thursday</strong></td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>Period : </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator29" runat="server" ControlToValidate="ThursFifthP" Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationGroup="q1"></asp:RequiredFieldValidator>
                                    <asp:UpdatePanel ID="UpdatePanel29" runat="server" UpdateMode="Conditional">

                                        <ContentTemplate>
                                            <asp:DropDownList ID="ThursFirstP" runat="server" AutoPostBack="True"></asp:DropDownList>
                                        </ContentTemplate>
                                        <Triggers>
                                            <asp:AsyncPostBackTrigger ControlID="ThursFirstP" EventName="SelectedIndexChanged" />
                                        </Triggers>
                                    </asp:UpdatePanel>

                                </td>

                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator30" runat="server" ControlToValidate="ThursSecondP" Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationGroup="q1"></asp:RequiredFieldValidator>
                                    <asp:UpdatePanel ID="UpdatePanel30" runat="server" UpdateMode="Conditional">

                                        <ContentTemplate>
                                            <asp:DropDownList ID="ThursSecondP" runat="server" AutoPostBack="True"></asp:DropDownList>
                                        </ContentTemplate>
                                        <Triggers>
                                            <asp:AsyncPostBackTrigger ControlID="ThursSecondP" EventName="SelectedIndexChanged" />
                                        </Triggers>
                                    </asp:UpdatePanel>

                                </td>

                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator31" runat="server" ControlToValidate="ThursThirdP" Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationGroup="q1"></asp:RequiredFieldValidator>
                                    <asp:UpdatePanel ID="UpdatePanel31" runat="server" UpdateMode="Conditional">

                                        <ContentTemplate>
                                            <asp:DropDownList ID="ThursThirdP" runat="server" AutoPostBack="True"></asp:DropDownList>
                                        </ContentTemplate>
                                        <Triggers>
                                            <asp:AsyncPostBackTrigger ControlID="ThursThirdP" EventName="SelectedIndexChanged" />
                                        </Triggers>
                                    </asp:UpdatePanel>

                                </td>

                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator32" runat="server" ControlToValidate="ThursFourthP" Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationGroup="q1"></asp:RequiredFieldValidator>
                                    <asp:UpdatePanel ID="UpdatePanel32" runat="server" UpdateMode="Conditional">

                                        <ContentTemplate>
                                            <asp:DropDownList ID="ThursFourthP" runat="server" AutoPostBack="True"></asp:DropDownList>
                                        </ContentTemplate>
                                        <Triggers>
                                            <asp:AsyncPostBackTrigger ControlID="ThursFourthP" EventName="SelectedIndexChanged" />
                                        </Triggers>
                                    </asp:UpdatePanel>

                                </td>

                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator33" runat="server" ControlToValidate="ThursFifthP" Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationGroup="q1"></asp:RequiredFieldValidator>
                                    <asp:UpdatePanel ID="UpdatePanel33" runat="server" UpdateMode="Conditional">

                                        <ContentTemplate>
                                            <asp:DropDownList ID="ThursFifthP" runat="server" AutoPostBack="True"></asp:DropDownList>

                                        </ContentTemplate>
                                        <Triggers>
                                            <asp:AsyncPostBackTrigger ControlID="ThursFifthP" EventName="SelectedIndexChanged" />
                                        </Triggers>
                                    </asp:UpdatePanel>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator34" runat="server" ControlToValidate="ThursSixthP" Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationGroup="q1"></asp:RequiredFieldValidator>
                                    <asp:UpdatePanel ID="UpdatePanel34" runat="server" UpdateMode="Conditional">

                                        <ContentTemplate>
                                            <asp:DropDownList ID="ThursSixthP" runat="server" AutoPostBack="True"></asp:DropDownList>
                                        </ContentTemplate>
                                        <Triggers>
                                            <asp:AsyncPostBackTrigger ControlID="ThursSixthP" EventName="SelectedIndexChanged" />
                                        </Triggers>
                                    </asp:UpdatePanel>

                                </td>

                                <td>

                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator35" runat="server" ControlToValidate="ThursSeventhP" Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationGroup="q1"></asp:RequiredFieldValidator>
                                    <asp:UpdatePanel ID="UpdatePanel35" runat="server" UpdateMode="Conditional">

                                        <ContentTemplate>
                                            <asp:DropDownList ID="ThursSeventhP" runat="server" AutoPostBack="True"></asp:DropDownList>
                                        </ContentTemplate>
                                        <Triggers>
                                            <asp:AsyncPostBackTrigger ControlID="ThursSeventhP" EventName="SelectedIndexChanged" />
                                        </Triggers>
                                    </asp:UpdatePanel>

                                </td>

                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator36" runat="server" ControlToValidate="ThursEighthP" Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationGroup="q1"></asp:RequiredFieldValidator>
                                    <asp:UpdatePanel ID="UpdatePanel36" runat="server" UpdateMode="Conditional">

                                        <ContentTemplate>
                                            <asp:DropDownList ID="ThursEighthP" runat="server" AutoPostBack="True"></asp:DropDownList>
                                        </ContentTemplate>
                                        <Triggers>
                                            <asp:AsyncPostBackTrigger ControlID="ThursEighthP" EventName="SelectedIndexChanged" />
                                        </Triggers>
                                    </asp:UpdatePanel>

                                </td>

                                <td>
                                    <asp:Button ID="btnThursday" runat="server" OnClick="btnThursday_Click" Text="Next" ValidationGroup="q1" />
                                </td>

                                <td>
                                    <asp:Label ID="lblThursMessage" runat="server" Style="color: #FF0000"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </asp:Panel>
        </tr>
        <tr>
            <asp:Panel ID="Panel6" runat="server">
                <td>
                    <asp:Panel ID="Panel13" runat="server">
                        <table class="nav-justified">
                            <tr>
                                <td><strong>Friday</strong></td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>Period : </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator37" runat="server" ControlToValidate="FriFirstP" Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationGroup="q1"></asp:RequiredFieldValidator>
                                    <asp:UpdatePanel ID="UpdatePanel37" runat="server" UpdateMode="Conditional">
                                        <ContentTemplate>
                                            <asp:DropDownList ID="FriFirstP" runat="server" AutoPostBack="True">
                                            </asp:DropDownList>
                                        </ContentTemplate>
                                        <Triggers>
                                            <asp:AsyncPostBackTrigger ControlID="FriFirstP" EventName="SelectedIndexChanged" />
                                        </Triggers>
                                    </asp:UpdatePanel>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator38" runat="server" ControlToValidate="FriSecondP" Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationGroup="q1"></asp:RequiredFieldValidator>
                                    <asp:UpdatePanel ID="UpdatePanel39" runat="server" UpdateMode="Conditional">
                                        <ContentTemplate>
                                            <asp:DropDownList ID="FriSecondP" runat="server" AutoPostBack="True">
                                            </asp:DropDownList>
                                        </ContentTemplate>
                                        <Triggers>
                                            <asp:AsyncPostBackTrigger ControlID="FriSecondP" EventName="SelectedIndexChanged" />
                                        </Triggers>
                                    </asp:UpdatePanel>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator39" runat="server" ControlToValidate="FriFourthP" Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationGroup="q1"></asp:RequiredFieldValidator>
                                    <asp:UpdatePanel ID="UpdatePanel38" runat="server" UpdateMode="Conditional">
                                        <ContentTemplate>
                                            <asp:DropDownList ID="FriThirdP" runat="server" AutoPostBack="True">
                                            </asp:DropDownList>
                                        </ContentTemplate>
                                        <Triggers>
                                            <asp:AsyncPostBackTrigger ControlID="FriThirdP" EventName="SelectedIndexChanged" />
                                        </Triggers>
                                    </asp:UpdatePanel>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator40" runat="server" ControlToValidate="FriFourthP" Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationGroup="q1"></asp:RequiredFieldValidator>
                                    <asp:UpdatePanel ID="UpdatePanel40" runat="server" UpdateMode="Conditional">
                                        <ContentTemplate>
                                            <asp:DropDownList ID="FriFourthP" runat="server" AutoPostBack="True">
                                            </asp:DropDownList>
                                        </ContentTemplate>
                                        <Triggers>
                                            <asp:AsyncPostBackTrigger ControlID="FriFourthP" EventName="SelectedIndexChanged" />
                                        </Triggers>
                                    </asp:UpdatePanel>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator41" runat="server" ControlToValidate="FriFifthP" Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationGroup="q1"></asp:RequiredFieldValidator>
                                    <asp:UpdatePanel ID="UpdatePanel41" runat="server" UpdateMode="Conditional">
                                        <ContentTemplate>
                                            <asp:DropDownList ID="FriFifthP" runat="server" AutoPostBack="True">
                                            </asp:DropDownList>
                                        </ContentTemplate>
                                        <Triggers>
                                            <asp:AsyncPostBackTrigger ControlID="FriFifthP" EventName="SelectedIndexChanged" />
                                        </Triggers>
                                    </asp:UpdatePanel>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator42" runat="server" ControlToValidate="FriSixthP" Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationGroup="q1"></asp:RequiredFieldValidator>
                                    <asp:UpdatePanel ID="UpdatePanel42" runat="server" UpdateMode="Conditional">
                                        <ContentTemplate>
                                            <asp:DropDownList ID="FriSixthP" runat="server" AutoPostBack="True">
                                            </asp:DropDownList>
                                        </ContentTemplate>
                                        <Triggers>
                                            <asp:AsyncPostBackTrigger ControlID="FriSixthP" EventName="SelectedIndexChanged" />
                                        </Triggers>
                                    </asp:UpdatePanel>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator43" runat="server" ControlToValidate="FriSeventhP" Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationGroup="q1"></asp:RequiredFieldValidator>
                                    <asp:UpdatePanel ID="UpdatePanel43" runat="server" UpdateMode="Conditional">
                                        <ContentTemplate>
                                            <asp:DropDownList ID="FriSeventhP" runat="server" AutoPostBack="True">
                                            </asp:DropDownList>
                                        </ContentTemplate>
                                        <Triggers>
                                            <asp:AsyncPostBackTrigger ControlID="FriSeventhP" EventName="SelectedIndexChanged" />
                                        </Triggers>
                                    </asp:UpdatePanel>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator44" runat="server" ControlToValidate="FriEighthP" Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationGroup="q1"></asp:RequiredFieldValidator>
                                    <asp:UpdatePanel ID="UpdatePanel44" runat="server" UpdateMode="Conditional">
                                        <ContentTemplate>
                                            <asp:DropDownList ID="FriEighthP" runat="server" AutoPostBack="True">
                                            </asp:DropDownList>
                                        </ContentTemplate>
                                        <Triggers>
                                            <asp:AsyncPostBackTrigger ControlID="FriEighthP" EventName="SelectedIndexChanged" />
                                        </Triggers>
                                    </asp:UpdatePanel>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator45" runat="server" ControlToValidate="FriNinethP" Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationGroup="q1"></asp:RequiredFieldValidator>
                                    <asp:UpdatePanel ID="UpdatePanel45" runat="server" UpdateMode="Conditional">
                                        <ContentTemplate>
                                            <asp:DropDownList ID="FriNinethP" runat="server" AutoPostBack="True">
                                            </asp:DropDownList>
                                        </ContentTemplate>
                                        <Triggers>
                                            <asp:AsyncPostBackTrigger ControlID="FriNinethP" EventName="SelectedIndexChanged" />
                                        </Triggers>
                                    </asp:UpdatePanel>
                                </td>
                                <td>
                                    <asp:Button ID="btnFriday" runat="server" OnClick="btnFriday_Click" Text="Next" ValidationGroup="q1" />
                                    <asp:Label ID="lblFriMessage" runat="server" Style="color: #FF0000"></asp:Label>
                                </td>
                            </tr>

                        </table>
                    </asp:Panel>
                </td>
            </asp:Panel>
        </tr>
        <tr>
            <asp:Panel ID="Panel9" runat="server">
                <
                <td>
                    <asp:Panel ID="Panel10" runat="server">
                        <br />

                        <table class="nav-justified">
                            <tr>
                                <td><strong>Profile Picture :  </strong>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="FileUpload1" Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationGroup="zz1"></asp:RequiredFieldValidator></td>
                                <td>
                                    <asp:FileUpload ID="FileUpload1" runat="server" /><asp:Label ID="lblMessage" runat="server" Font-Names="Arial" Text=""></asp:Label>
                                </td>

                            </tr>
                            <tr>
                                <td><strong>Saving : 

                                    <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="Save" ValidationGroup="zz1" />
                                    <asp:Label ID="lblSave" runat="server" Style="color: #FF0000"></asp:Label>
                                </strong>
                                </td>
                            </tr>

                        </table>
                    </asp:Panel>
                </td>
            </asp:Panel>
        </tr>

    </table>


</asp:Content>

