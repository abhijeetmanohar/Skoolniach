<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SeatingArr.aspx.cs" Inherits="teacher_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Seating Arrangement</title>
    <style type="text/css" media="print">
        .noprint {
            display: none;
        }
    </style>
    <style>
        #mydiv {
            position: absolute;
            z-index: 9;
            background-color: #f1f1f1;
            text-align: center;
            border: 1px solid #d3d3d3;
            font-size: 12px;
        }

        #mydivheader {
            padding: 10px;
            cursor: move;
            z-index: 9;
            background-color: #2196F3;
            color: #fff;
        }

        #mydiv111 {
            position: absolute;
            z-index: 9;
            background-color: #f1f1f1;
            text-align: center;
            border: 1px solid #d3d3d3;
            font-size: 12px;
        }

        #mydiv111header {
            padding: 10px;
            cursor: move;
            z-index: 9;
            background-color: #2196F3;
            color: #fff;
        }


        #mydiv2 {
            position: absolute;
            z-index: 9;
            background-color: #f1f1f1;
            text-align: center;
            border: 1px solid #d3d3d3;
            font-size: 12px;
        }

        #mydiv2header {
            padding: 10px;
            cursor: move;
            z-index: 9;
            background-color: #2196F3;
            color: #fff;
        }

        #mydiv333 {
            position: absolute;
            z-index: 9;
            background-color: #f1f1f1;
            text-align: center;
            border: 1px solid #d3d3d3;
            font-size: 12px;
        }

        #mydiv333header {
            padding: 10px;
            cursor: move;
            z-index: 9;
            background-color: #2196F3;
            color: #fff;
        }


        #mydiv444 {
            position: absolute;
            z-index: 9;
            background-color: #f1f1f1;
            text-align: center;
            border: 1px solid #d3d3d3;
            font-size: 12px;
        }

        #mydiv444header {
            padding: 10px;
            cursor: move;
            z-index: 9;
            background-color: #2196F3;
            color: #fff;
        }

        #mydiv5 {
            position: absolute;
            z-index: 9;
            background-color: #f1f1f1;
            text-align: center;
            border: 1px solid #d3d3d3;
            font-size: 12px;
        }

        #mydiv5header {
            padding: 10px;
            cursor: move;
            z-index: 9;
            background-color: #2196F3;
            color: #fff;
        }


        #mydiv6 {
            position: absolute;
            z-index: 9;
            background-color: #f1f1f1;
            text-align: center;
            border: 1px solid #d3d3d3;
            font-size: 12px;
        }

        #mydiv6header {
            padding: 10px;
            cursor: move;
            z-index: 9;
            background-color: #2196F3;
            color: #fff;
        }

        #mydiv7 {
            position: absolute;
            z-index: 9;
            background-color: #f1f1f1;
            text-align: center;
            border: 1px solid #d3d3d3;
            font-size: 12px;
        }

        #mydiv7header {
            padding: 10px;
            cursor: move;
            z-index: 9;
            background-color: #2196F3;
            color: #fff;
        }


        #mydiv8 {
            position: absolute;
            z-index: 9;
            background-color: #f1f1f1;
            text-align: center;
            border: 1px solid #d3d3d3;
            font-size: 12px;
        }

        #mydiv8header {
            padding: 10px;
            cursor: move;
            z-index: 9;
            background-color: #2196F3;
            color: #fff;
        }

        #mydiv9 {
            position: absolute;
            z-index: 9;
            background-color: #f1f1f1;
            text-align: center;
            border: 1px solid #d3d3d3;
            font-size: 12px;
        }

        #mydiv9header {
            padding: 10px;
            cursor: move;
            z-index: 9;
            background-color: #2196F3;
            color: #fff;
        }

        #mydiv023 {
            position: absolute;
            z-index: 9;
            background-color: #f1f1f1;
            text-align: center;
            border: 1px solid #d3d3d3;
            font-size: 12px;
        }

        #mydiv023header {
            padding: 10px;
            cursor: move;
            z-index: 9;
            background-color: #2196F3;
            color: #fff;
        }

        #mydiv10 {
            position: absolute;
            z-index: 9;
            background-color: #f1f1f1;
            text-align: center;
            border: 1px solid #d3d3d3;
            font-size: 12px;
        }

        #mydiv10header {
            padding: 10px;
            cursor: move;
            z-index: 9;
            background-color: #2196F3;
            color: #fff;
        }

        #mydiv11 {
            position: absolute;
            z-index: 9;
            background-color: #f1f1f1;
            text-align: center;
            border: 1px solid #d3d3d3;
            font-size: 12px;
        }

        #mydiv11header {
            padding: 10px;
            cursor: move;
            z-index: 9;
            background-color: #2196F3;
            color: #fff;
        }


        #mydiv12 {
            position: absolute;
            z-index: 9;
            background-color: #f1f1f1;
            text-align: center;
            border: 1px solid #d3d3d3;
            font-size: 12px;
        }

        #mydiv12header {
            padding: 10px;
            cursor: move;
            z-index: 9;
            background-color: #2196F3;
            color: #fff;
        }

        #mydiv13 {
            position: absolute;
            z-index: 9;
            background-color: #f1f1f1;
            text-align: center;
            border: 1px solid #d3d3d3;
            font-size: 12px;
        }

        #mydiv13header {
            padding: 10px;
            cursor: move;
            z-index: 9;
            background-color: #2196F3;
            color: #fff;
        }


        #mydiv14 {
            position: absolute;
            z-index: 9;
            background-color: #f1f1f1;
            text-align: center;
            border: 1px solid #d3d3d3;
            font-size: 12px;
        }

        #mydiv14header {
            padding: 10px;
            cursor: move;
            z-index: 9;
            background-color: #2196F3;
            color: #fff;
        }

        #mydiv15 {
            position: absolute;
            z-index: 9;
            background-color: #f1f1f1;
            text-align: center;
            border: 1px solid #d3d3d3;
            font-size: 12px;
        }

        #mydiv15header {
            padding: 10px;
            cursor: move;
            z-index: 9;
            background-color: #2196F3;
            color: #fff;
        }


        #mydiv16 {
            position: absolute;
            z-index: 9;
            background-color: #f1f1f1;
            text-align: center;
            border: 1px solid #d3d3d3;
            font-size: 12px;
        }

        #mydiv16header {
            padding: 10px;
            cursor: move;
            z-index: 9;
            background-color: #2196F3;
            color: #fff;
        }

        #mydiv17 {
            position: absolute;
            z-index: 9;
            background-color: #f1f1f1;
            text-align: center;
            border: 1px solid #d3d3d3;
            font-size: 12px;
        }

        #mydiv17header {
            padding: 10px;
            cursor: move;
            z-index: 9;
            background-color: #2196F3;
            color: #fff;
        }


        #mydiv18 {
            position: absolute;
            z-index: 9;
            background-color: #f1f1f1;
            text-align: center;
            border: 1px solid #d3d3d3;
            font-size: 12px;
        }

        #mydiv18header {
            padding: 10px;
            cursor: move;
            z-index: 9;
            background-color: #2196F3;
            color: #fff;
        }

        #mydiv19 {
            position: absolute;
            z-index: 9;
            background-color: #f1f1f1;
            text-align: center;
            border: 1px solid #d3d3d3;
            font-size: 12px;
        }

        #mydiv19header {
            padding: 10px;
            cursor: move;
            z-index: 9;
            background-color: #2196F3;
            color: #fff;
        }


        #mydiv20 {
            position: absolute;
            z-index: 9;
            background-color: #f1f1f1;
            text-align: center;
            border: 1px solid #d3d3d3;
            font-size: 12px;
        }

        #mydiv20header {
            padding: 10px;
            cursor: move;
            z-index: 9;
            background-color: #2196F3;
            color: #fff;
        }

        #mydiv21 {
            position: absolute;
            z-index: 9;
            background-color: #f1f1f1;
            text-align: center;
            border: 1px solid #d3d3d3;
            font-size: 12px;
        }

        #mydiv21header {
            padding: 10px;
            cursor: move;
            z-index: 9;
            background-color: #2196F3;
            color: #fff;
        }


        #mydiv22 {
            position: absolute;
            z-index: 9;
            background-color: #f1f1f1;
            text-align: center;
            border: 1px solid #d3d3d3;
            font-size: 12px;
        }

        #mydiv22header {
            padding: 10px;
            cursor: move;
            z-index: 9;
            background-color: #2196F3;
            color: #fff;
        }

        #mydiv23 {
            position: absolute;
            z-index: 9;
            background-color: #f1f1f1;
            text-align: center;
            border: 1px solid #d3d3d3;
            font-size: 12px;
        }

        #mydivheader23 {
            padding: 10px;
            cursor: move;
            z-index: 9;
            background-color: #2196F3;
            color: #fff;
        }

        #mydiv24 {
            position: absolute;
            z-index: 9;
            background-color: #f1f1f1;
            text-align: center;
            border: 1px solid #d3d3d3;
            font-size: 12px;
        }

        #mydiv24header {
            padding: 10px;
            cursor: move;
            z-index: 9;
            background-color: #2196F3;
            color: #fff;
        }


        #mydiv25 {
            position: absolute;
            z-index: 9;
            background-color: #f1f1f1;
            text-align: center;
            border: 1px solid #d3d3d3;
            font-size: 12px;
        }

        #mydiv25header {
            padding: 10px;
            cursor: move;
            z-index: 9;
            background-color: #2196F3;
            color: #fff;
        }

        #mydiv26 {
            position: absolute;
            z-index: 9;
            background-color: #f1f1f1;
            text-align: center;
            border: 1px solid #d3d3d3;
            font-size: 12px;
        }

        #mydiv26header {
            padding: 10px;
            cursor: move;
            z-index: 9;
            background-color: #2196F3;
            color: #fff;
        }


        #mydiv27 {
            position: absolute;
            z-index: 9;
            background-color: #f1f1f1;
            text-align: center;
            border: 1px solid #d3d3d3;
            font-size: 12px;
        }

        #mydiv27header {
            padding: 10px;
            cursor: move;
            z-index: 9;
            background-color: #2196F3;
            color: #fff;
        }

        #mydiv28 {
            position: absolute;
            z-index: 9;
            background-color: #f1f1f1;
            text-align: center;
            border: 1px solid #d3d3d3;
            font-size: 12px;
        }

        #mydiv28header {
            padding: 10px;
            cursor: move;
            z-index: 9;
            background-color: #2196F3;
            color: #fff;
        }


        #mydiv29 {
            position: absolute;
            z-index: 9;
            background-color: #f1f1f1;
            text-align: center;
            border: 1px solid #d3d3d3;
            font-size: 12px;
        }

        #mydiv29header {
            padding: 10px;
            cursor: move;
            z-index: 9;
            background-color: #2196F3;
            color: #fff;
        }

        #mydiv300 {
            position: absolute;
            z-index: 9;
            background-color: #f1f1f1;
            text-align: center;
            border: 1px solid #d3d3d3;
            font-size: 12px;
        }

        #mydiv300header {
            padding: 10px;
            cursor: move;
            z-index: 9;
            background-color: #2196F3;
            color: #fff;
        }


        #mydiv31 {
            position: absolute;
            z-index: 9;
            background-color: #f1f1f1;
            text-align: center;
            border: 1px solid #d3d3d3;
            font-size: 12px;
        }

        #mydiv31header {
            padding: 10px;
            cursor: move;
            z-index: 9;
            background-color: #2196F3;
            color: #fff;
        }

        #mydiv32 {
            position: absolute;
            z-index: 9;
            background-color: #f1f1f1;
            text-align: center;
            border: 1px solid #d3d3d3;
            font-size: 12px;
        }

        #mydiv32header {
            padding: 10px;
            cursor: move;
            z-index: 9;
            background-color: #2196F3;
            color: #fff;
        }


        #mydiv33 {
            position: absolute;
            z-index: 9;
            background-color: #f1f1f1;
            text-align: center;
            border: 1px solid #d3d3d3;
            font-size: 12px;
        }

        #mydiv33header {
            padding: 10px;
            cursor: move;
            z-index: 9;
            background-color: #2196F3;
            color: #fff;
        }

        #mydiv34 {
            position: absolute;
            z-index: 9;
            background-color: #f1f1f1;
            text-align: center;
            border: 1px solid #d3d3d3;
            font-size: 12px;
        }

        #mydiv34header {
            padding: 10px;
            cursor: move;
            z-index: 9;
            background-color: #2196F3;
            color: #fff;
        }


        #mydiv35 {
            position: absolute;
            z-index: 9;
            background-color: #f1f1f1;
            text-align: center;
            border: 1px solid #d3d3d3;
            font-size: 12px;
        }

        #mydiv35header {
            padding: 10px;
            cursor: move;
            z-index: 9;
            background-color: #2196F3;
            color: #fff;
        }

        #mydiv36 {
            position: absolute;
            z-index: 9;
            background-color: #f1f1f1;
            text-align: center;
            border: 1px solid #d3d3d3;
            font-size: 12px;
        }

        #mydiv36header {
            padding: 10px;
            cursor: move;
            z-index: 9;
            background-color: #2196F3;
            color: #fff;
        }


        #mydiv37 {
            position: absolute;
            z-index: 9;
            background-color: #f1f1f1;
            text-align: center;
            border: 1px solid #d3d3d3;
            font-size: 12px;
        }

        #mydiv37header {
            padding: 10px;
            cursor: move;
            z-index: 9;
            background-color: #2196F3;
            color: #fff;
        }

        #mydiv38 {
            position: absolute;
            z-index: 9;
            background-color: #f1f1f1;
            text-align: center;
            border: 1px solid #d3d3d3;
            font-size: 12px;
        }

        #mydiv38header {
            padding: 10px;
            cursor: move;
            z-index: 9;
            background-color: #2196F3;
            color: #fff;
        }


        #mydiv39 {
            position: absolute;
            z-index: 9;
            background-color: #f1f1f1;
            text-align: center;
            border: 1px solid #d3d3d3;
            font-size: 12px;
        }

        #mydiv39header {
            padding: 10px;
            cursor: move;
            z-index: 9;
            background-color: #2196F3;
            color: #fff;
        }

        #mydiv40 {
            position: absolute;
            z-index: 9;
            background-color: #f1f1f1;
            text-align: center;
            border: 1px solid #d3d3d3;
            font-size: 12px;
        }

        #mydiv40header {
            padding: 10px;
            cursor: move;
            z-index: 9;
            background-color: #2196F3;
            color: #fff;
        }


        #mydiv41 {
            position: absolute;
            z-index: 9;
            background-color: #f1f1f1;
            text-align: center;
            border: 1px solid #d3d3d3;
            font-size: 12px;
        }

        #mydiv41header {
            padding: 10px;
            cursor: move;
            z-index: 9;
            background-color: #2196F3;
            color: #fff;
        }

        #mydiv42 {
            position: absolute;
            z-index: 9;
            background-color: #f1f1f1;
            text-align: center;
            border: 1px solid #d3d3d3;
            font-size: 12px;
        }

        #mydiv42header {
            padding: 10px;
            cursor: move;
            z-index: 9;
            background-color: #2196F3;
            color: #fff;
        }


        #mydiv43 {
            position: absolute;
            z-index: 9;
            background-color: #f1f1f1;
            text-align: center;
            border: 1px solid #d3d3d3;
            font-size: 12px;
        }

        #mydiv43header {
            padding: 10px;
            cursor: move;
            z-index: 9;
            background-color: #2196F3;
            color: #fff;
        }

        #mydiv44 {
            position: absolute;
            z-index: 9;
            background-color: #f1f1f1;
            text-align: center;
            border: 1px solid #d3d3d3;
            font-size: 12px;
        }

        #mydiv44header {
            padding: 10px;
            cursor: move;
            z-index: 9;
            background-color: #2196F3;
            color: #fff;
        }


        #mydiv45 {
            position: absolute;
            z-index: 9;
            background-color: #f1f1f1;
            text-align: center;
            border: 1px solid #d3d3d3;
            font-size: 12px;
        }

        #mydiv45header {
            padding: 10px;
            cursor: move;
            z-index: 9;
            background-color: #2196F3;
            color: #fff;
        }

        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            background-image: url("../images/SArr.png");
            background-repeat: no-repeat;
            background-position: center;
        }

       
        .auto-style7 {
            width: 47px;
        }
        .auto-style8 {
            width: 94%;
        }

       
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
                        <tr>
                <td class="auto-style9" colspan="2">
                    <img src="../images/dps - Copy.png" /></td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <p>Class   : </p>
                </td>
                <td class="auto-style8">
                    <asp:Label ID="lblClass" runat="server" Style="color: #FF0000"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    
                        <asp:Label ID="lblP" runat="server" Style="color: #000000">Period : </asp:Label>
                    
                </td>
                <td class="auto-style8">
                    <asp:DropDownList ID="ddlPeriod" runat="server">
                        <asp:ListItem Value="">--Select Period--</asp:ListItem>
                        <asp:ListItem>April - Mid April</asp:ListItem>
                        <asp:ListItem>Mid April - End of April</asp:ListItem>
                        <asp:ListItem>May - Mid May</asp:ListItem>
                        <asp:ListItem>Mid May - End of May</asp:ListItem>
                        <asp:ListItem>June - Mid June</asp:ListItem>
                        <asp:ListItem>Mid June - End of June</asp:ListItem>
                        <asp:ListItem>July - Mid July</asp:ListItem>
                        <asp:ListItem>Mid July - End of July</asp:ListItem>
                        <asp:ListItem>August - Mid August</asp:ListItem>
                        <asp:ListItem>Mid August - End of August</asp:ListItem>
                        <asp:ListItem>September - Mid September</asp:ListItem>
                        <asp:ListItem>Mid September - End of September</asp:ListItem>
                        <asp:ListItem>October - Mid October</asp:ListItem>
                        <asp:ListItem>Mid October - End of October</asp:ListItem>
                        <asp:ListItem>November - Mid November</asp:ListItem>
                        <asp:ListItem>Mid November - End of November</asp:ListItem>
                        <asp:ListItem>December - Mid December</asp:ListItem>
                        <asp:ListItem>Mid December - End of December</asp:ListItem>
                        <asp:ListItem>January - Mid January</asp:ListItem>
                        <asp:ListItem>Mid January - End of January</asp:ListItem>
                        <asp:ListItem>February - Mid February</asp:ListItem>
                        <asp:ListItem>Mid February - End of February</asp:ListItem>
                        <asp:ListItem>March - Mid March</asp:ListItem>
                        <asp:ListItem>Mid March - End of March</asp:ListItem>

                    </asp:DropDownList>
                    <asp:Label ID="lblPeriod" runat="server" Style="color: #FF0000"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style8">
                    <asp:Button ID="MSA" runat="server" Text="Submit" OnClick="Save_Click" />
                    <asp:Label ID="lblMsg" runat="server" Style="color: #FF0000"></asp:Label>
                </td>
            </tr>
        </table>
        <asp:Panel ID="Panel1" runat="server">
            <div>

                <table class="auto-style1">
                    <tr>
                        <td>
                            <div id="mydiv">
                                <div id="mydivheader">1</div>
                            </div>
                        </td>
                        <td>
                            <div id="mydiv111">
                                <div id="mydiv111header">2</div>

                            </div>
                        </td>
                        <td>
                            <div id="mydiv2">
                                <div id="mydiv2header">3</div>
                            </div>
                        </td>
                        <td>
                            <div id="mydiv333">
                                <div id="mydiv333header">4</div>

                            </div>
                        </td>
                        <td>
                            <div id="mydiv444">
                                <div id="mydiv444header">5</div>
                            </div>
                        </td>
                        <td>
                            <div id="mydiv5">
                                <div id="mydiv5header">6</div>

                            </div>
                        </td>
                        <td>
                            <div id="mydiv6">
                                <div id="mydiv6header">7</div>
                            </div>
                        </td>
                        <td>
                            <div id="mydiv7">
                                <div id="mydiv7header">8</div>

                            </div>
                        </td>
                        <td>
                            <div id="mydiv8">
                                <div id="mydiv8header">9</div>
                            </div>
                        </td>
                        <td>
                            <div id="mydiv9">
                                <div id="mydiv9header">10</div>

                            </div>
                        </td>
                        <td>
                            <div id="mydiv10">
                                <div id="mydiv10header">11</div>
                            </div>
                        </td>
                        <td>
                            <div id="mydiv11">
                                <div id="mydiv11header">12</div>

                            </div>
                        </td>
                        <td>
                            <div id="mydiv12">
                                <div id="mydiv12header">13</div>
                            </div>
                        </td>
                        <td>
                            <div id="mydiv13">
                                <div id="mydiv13header">14</div>

                            </div>
                        </td>
                        <td>
                            <div id="mydiv14">
                                <div id="mydiv14header">15</div>
                            </div>
                        </td>
                        <td>
                            <div id="mydiv15">
                                <div id="mydiv15header">16</div>

                            </div>
                        </td>
                        <td>
                            <div id="mydiv16">
                                <div id="mydiv16header">17</div>
                            </div>
                        </td>
                        <td>
                            <div id="mydiv17">
                                <div id="mydiv17header">18</div>

                            </div>
                        </td>
                        <td>
                            <div id="mydiv18">
                                <div id="mydiv18header">19</div>
                            </div>
                        </td>
                        <td>
                            <div id="mydiv19">
                                <div id="mydiv19header">20</div>

                            </div>
                        </td>

                        <td>
                            <div id="mydiv20">
                                <div id="mydiv20header">21</div>
                            </div>
                        </td>
                        <td>
                            <div id="mydiv21">
                                <div id="mydiv21header">22</div>

                            </div>
                        </td>
                    </tr>



                    <tr>
                        <td colspan="23">


                            <table>

                                <tr>

                                    <td class="auto-style2" style="height: 616px; width: 400px"></td>

                                </tr>
                            </table>
                        </td>

                    </tr>



                    <tr>
                        <td>
                            <div id="mydiv22">
                                <div id="mydiv22header">23</div>
                            </div>
                        </td>
                        <td>
                            <div id="mydiv023">
                                <div id="mydiv023header">24</div>
                            </div>
                        </td>
                        <td>
                            <div id="mydiv24">
                                <div id="mydiv24header">25</div>
                            </div>
                        </td>
                        <td>
                            <div id="mydiv25">
                                <div id="mydiv25header">26</div>

                            </div>
                        </td>
                        <td>
                            <div id="mydiv26">
                                <div id="mydiv26header">27</div>
                            </div>
                        </td>
                        <td>
                            <div id="mydiv27">
                                <div id="mydiv27header">28</div>

                            </div>
                        </td>
                        <td>
                            <div id="mydiv28">
                                <div id="mydiv28header">29</div>
                            </div>
                        </td>
                        <td>
                            <div id="mydiv29">
                                <div id="mydiv29header">30</div>

                            </div>
                        </td>
                        <td>
                            <div id="mydiv300">
                                <div id="mydiv300header">31</div>
                            </div>
                        </td>
                        <td>
                            <div id="mydiv31">
                                <div id="mydiv31header">32</div>

                            </div>
                        </td>
                        <td>
                            <div id="mydiv32">
                                <div id="mydiv32header">33</div>
                            </div>
                        </td>
                        <td>
                            <div id="mydiv33">
                                <div id="mydiv33header">34</div>

                            </div>
                        </td>
                        <td>
                            <div id="mydiv34">
                                <div id="mydiv34header">35</div>
                            </div>
                        </td>
                        <td>
                            <div id="mydiv35">
                                <div id="mydiv35header">36</div>

                            </div>
                        </td>
                        <td>
                            <div id="mydiv36">
                                <div id="mydiv36header">37</div>
                            </div>
                        </td>
                        <td>
                            <div id="mydiv37">
                                <div id="mydiv37header">38</div>

                            </div>
                        </td>
                        <td>
                            <div id="mydiv38">
                                <div id="mydiv38header">39</div>
                            </div>
                        </td>
                        <td>
                            <div id="mydiv39">
                                <div id="mydiv39header">40</div>

                            </div>
                        </td>
                        <td>
                            <div id="mydiv40">
                                <div id="mydiv40header">41</div>
                            </div>
                        </td>
                        <td>
                            <div id="mydiv41">
                                <div id="mydiv41header">42</div>

                            </div>
                        </td>

                        <td>
                            <div id="mydiv42">
                                <div id="mydiv42header">43</div>
                            </div>
                        </td>
                        <td>
                            <div id="mydiv43">
                                <div id="mydiv43header">44</div>

                            </div>
                        </td>
                        <td>
                            <div id="mydiv44">
                                <div id="mydiv44header">45</div>

                            </div>
                        </td>

                    </tr>
                </table>




                <script>
                    //Make the DIV element draggagle:
                    dragElement(document.getElementById(("mydiv")));

                    function dragElement(elmnt) {
                        var pos1 = 0, pos2 = 0, pos3 = 0, pos4 = 0;
                        if (document.getElementById(elmnt.id + "header")) {
                            /* if present, the header is where you move the DIV from:*/
                            document.getElementById(elmnt.id + "header").onmousedown = dragMouseDown;
                        } else {
                            /* otherwise, move the DIV from anywhere inside the DIV:*/
                            elmnt.onmousedown = dragMouseDown;
                        }

                        function dragMouseDown(e) {
                            e = e || window.event;
                            // get the mouse cursor position at startup:
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            document.onmouseup = closeDragElement;
                            // call a function whenever the cursor moves:
                            document.onmousemove = elementDrag;
                        }

                        function elementDrag(e) {
                            e = e || window.event;
                            // calculate the new cursor position:
                            pos1 = pos3 - e.clientX;
                            pos2 = pos4 - e.clientY;
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            // set the element's new position:
                            elmnt.style.top = (elmnt.offsetTop - pos2) + "px";
                            elmnt.style.left = (elmnt.offsetLeft - pos1) + "px";
                        }

                        function closeDragElement() {
                            /* stop moving when mouse button is released:*/
                            document.onmouseup = null;
                            document.onmousemove = null;
                        }
                    }
                </script>
                <script>
                    //Make the DIV element draggagle:
                    dragElement(document.getElementById(("mydiv111")));

                    function dragElement(elmnt) {
                        var pos1 = 0, pos2 = 0, pos3 = 0, pos4 = 0;
                        if (document.getElementById(elmnt.id + "111header")) {
                            /* if present, the header is where you move the DIV from:*/
                            document.getElementById(elmnt.id + "111header").onmousedown = dragMouseDown;
                        } else {
                            /* otherwise, move the DIV from anywhere inside the DIV:*/
                            elmnt.onmousedown = dragMouseDown;
                        }

                        function dragMouseDown(e) {
                            e = e || window.event;
                            // get the mouse cursor position at startup:
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            document.onmouseup = closeDragElement;
                            // call a function whenever the cursor moves:
                            document.onmousemove = elementDrag;
                        }

                        function elementDrag(e) {
                            e = e || window.event;
                            // calculate the new cursor position:
                            pos1 = pos3 - e.clientX;
                            pos2 = pos4 - e.clientY;
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            // set the element's new position:
                            elmnt.style.top = (elmnt.offsetTop - pos2) + "px";
                            elmnt.style.left = (elmnt.offsetLeft - pos1) + "px";
                        }

                        function closeDragElement() {
                            /* stop moving when mouse button is released:*/
                            document.onmouseup = null;
                            document.onmousemove = null;
                        }
                    }
                </script>

                <script>
                    //Make the DIV element draggagle:
                    dragElement(document.getElementById(("mydiv2")));

                    function dragElement(elmnt) {
                        var pos1 = 0, pos2 = 0, pos3 = 0, pos4 = 0;
                        if (document.getElementById(elmnt.id + "header2")) {
                            /* if present, the header is where you move the DIV from:*/
                            document.getElementById(elmnt.id + "header2").onmousedown = dragMouseDown;
                        } else {
                            /* otherwise, move the DIV from anywhere inside the DIV:*/
                            elmnt.onmousedown = dragMouseDown;
                        }

                        function dragMouseDown(e) {
                            e = e || window.event;
                            // get the mouse cursor position at startup:
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            document.onmouseup = closeDragElement;
                            // call a function whenever the cursor moves:
                            document.onmousemove = elementDrag;
                        }

                        function elementDrag(e) {
                            e = e || window.event;
                            // calculate the new cursor position:
                            pos1 = pos3 - e.clientX;
                            pos2 = pos4 - e.clientY;
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            // set the element's new position:
                            elmnt.style.top = (elmnt.offsetTop - pos2) + "px";
                            elmnt.style.left = (elmnt.offsetLeft - pos1) + "px";
                        }

                        function closeDragElement() {
                            /* stop moving when mouse button is released:*/
                            document.onmouseup = null;
                            document.onmousemove = null;
                        }
                    }
                </script>
                <script>
                    //Make the DIV element draggagle:
                    dragElement(document.getElementById(("mydiv333")));

                    function dragElement(elmnt) {
                        var pos1 = 0, pos2 = 0, pos3 = 0, pos4 = 0;
                        if (document.getElementById(elmnt.id + "333header")) {
                            /* if present, the header is where you move the DIV from:*/
                            document.getElementById(elmnt.id + "333header").onmousedown = dragMouseDown;
                        } else {
                            /* otherwise, move the DIV from anywhere inside the DIV:*/
                            elmnt.onmousedown = dragMouseDown;
                        }

                        function dragMouseDown(e) {
                            e = e || window.event;
                            // get the mouse cursor position at startup:
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            document.onmouseup = closeDragElement;
                            // call a function whenever the cursor moves:
                            document.onmousemove = elementDrag;
                        }

                        function elementDrag(e) {
                            e = e || window.event;
                            // calculate the new cursor position:
                            pos1 = pos3 - e.clientX;
                            pos2 = pos4 - e.clientY;
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            // set the element's new position:
                            elmnt.style.top = (elmnt.offsetTop - pos2) + "px";
                            elmnt.style.left = (elmnt.offsetLeft - pos1) + "px";
                        }

                        function closeDragElement() {
                            /* stop moving when mouse button is released:*/
                            document.onmouseup = null;
                            document.onmousemove = null;
                        }
                    }
                </script>

                <script>
                    //Make the DIV element draggagle:
                    dragElement(document.getElementById(("mydiv444")));

                    function dragElement(elmnt) {
                        var pos1 = 0, pos2 = 0, pos3 = 0, pos4 = 0;
                        if (document.getElementById(elmnt.id + "444header")) {
                            /* if present, the header is where you move the DIV from:*/
                            document.getElementById(elmnt.id + "444header").onmousedown = dragMouseDown;
                        } else {
                            /* otherwise, move the DIV from anywhere inside the DIV:*/
                            elmnt.onmousedown = dragMouseDown;
                        }

                        function dragMouseDown(e) {
                            e = e || window.event;
                            // get the mouse cursor position at startup:
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            document.onmouseup = closeDragElement;
                            // call a function whenever the cursor moves:
                            document.onmousemove = elementDrag;
                        }

                        function elementDrag(e) {
                            e = e || window.event;
                            // calculate the new cursor position:
                            pos1 = pos3 - e.clientX;
                            pos2 = pos4 - e.clientY;
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            // set the element's new position:
                            elmnt.style.top = (elmnt.offsetTop - pos2) + "px";
                            elmnt.style.left = (elmnt.offsetLeft - pos1) + "px";
                        }

                        function closeDragElement() {
                            /* stop moving when mouse button is released:*/
                            document.onmouseup = null;
                            document.onmousemove = null;
                        }
                    }
                </script>
                <script>
                    //Make the DIV element draggagle:
                    dragElement(document.getElementById(("mydiv5")));

                    function dragElement(elmnt) {
                        var pos1 = 0, pos2 = 0, pos3 = 0, pos4 = 0;
                        if (document.getElementById(elmnt.id + "5header")) {
                            /* if present, the header is where you move the DIV from:*/
                            document.getElementById(elmnt.id + "5header").onmousedown = dragMouseDown;
                        } else {
                            /* otherwise, move the DIV from anywhere inside the DIV:*/
                            elmnt.onmousedown = dragMouseDown;
                        }

                        function dragMouseDown(e) {
                            e = e || window.event;
                            // get the mouse cursor position at startup:
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            document.onmouseup = closeDragElement;
                            // call a function whenever the cursor moves:
                            document.onmousemove = elementDrag;
                        }

                        function elementDrag(e) {
                            e = e || window.event;
                            // calculate the new cursor position:
                            pos1 = pos3 - e.clientX;
                            pos2 = pos4 - e.clientY;
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            // set the element's new position:
                            elmnt.style.top = (elmnt.offsetTop - pos2) + "px";
                            elmnt.style.left = (elmnt.offsetLeft - pos1) + "px";
                        }

                        function closeDragElement() {
                            /* stop moving when mouse button is released:*/
                            document.onmouseup = null;
                            document.onmousemove = null;
                        }
                    }
                </script>

                <script>
                    //Make the DIV element draggagle:
                    dragElement(document.getElementById(("mydiv6")));

                    function dragElement(elmnt) {
                        var pos1 = 0, pos2 = 0, pos3 = 0, pos4 = 0;
                        if (document.getElementById(elmnt.id + "6header")) {
                            /* if present, the header is where you move the DIV from:*/
                            document.getElementById(elmnt.id + "6header").onmousedown = dragMouseDown;
                        } else {
                            /* otherwise, move the DIV from anywhere inside the DIV:*/
                            elmnt.onmousedown = dragMouseDown;
                        }

                        function dragMouseDown(e) {
                            e = e || window.event;
                            // get the mouse cursor position at startup:
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            document.onmouseup = closeDragElement;
                            // call a function whenever the cursor moves:
                            document.onmousemove = elementDrag;
                        }

                        function elementDrag(e) {
                            e = e || window.event;
                            // calculate the new cursor position:
                            pos1 = pos3 - e.clientX;
                            pos2 = pos4 - e.clientY;
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            // set the element's new position:
                            elmnt.style.top = (elmnt.offsetTop - pos2) + "px";
                            elmnt.style.left = (elmnt.offsetLeft - pos1) + "px";
                        }

                        function closeDragElement() {
                            /* stop moving when mouse button is released:*/
                            document.onmouseup = null;
                            document.onmousemove = null;
                        }
                    }
                </script>
                <script>
                    //Make the DIV element draggagle:
                    dragElement(document.getElementById(("mydiv7")));

                    function dragElement(elmnt) {
                        var pos1 = 0, pos2 = 0, pos3 = 0, pos4 = 0;
                        if (document.getElementById(elmnt.id + "7header")) {
                            /* if present, the header is where you move the DIV from:*/
                            document.getElementById(elmnt.id + "7header").onmousedown = dragMouseDown;
                        } else {
                            /* otherwise, move the DIV from anywhere inside the DIV:*/
                            elmnt.onmousedown = dragMouseDown;
                        }

                        function dragMouseDown(e) {
                            e = e || window.event;
                            // get the mouse cursor position at startup:
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            document.onmouseup = closeDragElement;
                            // call a function whenever the cursor moves:
                            document.onmousemove = elementDrag;
                        }

                        function elementDrag(e) {
                            e = e || window.event;
                            // calculate the new cursor position:
                            pos1 = pos3 - e.clientX;
                            pos2 = pos4 - e.clientY;
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            // set the element's new position:
                            elmnt.style.top = (elmnt.offsetTop - pos2) + "px";
                            elmnt.style.left = (elmnt.offsetLeft - pos1) + "px";
                        }

                        function closeDragElement() {
                            /* stop moving when mouse button is released:*/
                            document.onmouseup = null;
                            document.onmousemove = null;
                        }
                    }
                </script>
                <script>
                    //Make the DIV element draggagle:
                    dragElement(document.getElementById(("mydiv8")));

                    function dragElement(elmnt) {
                        var pos1 = 0, pos2 = 0, pos3 = 0, pos4 = 0;
                        if (document.getElementById(elmnt.id + "8header")) {
                            /* if present, the header is where you move the DIV from:*/
                            document.getElementById(elmnt.id + "8header").onmousedown = dragMouseDown;
                        } else {
                            /* otherwise, move the DIV from anywhere inside the DIV:*/
                            elmnt.onmousedown = dragMouseDown;
                        }

                        function dragMouseDown(e) {
                            e = e || window.event;
                            // get the mouse cursor position at startup:
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            document.onmouseup = closeDragElement;
                            // call a function whenever the cursor moves:
                            document.onmousemove = elementDrag;
                        }

                        function elementDrag(e) {
                            e = e || window.event;
                            // calculate the new cursor position:
                            pos1 = pos3 - e.clientX;
                            pos2 = pos4 - e.clientY;
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            // set the element's new position:
                            elmnt.style.top = (elmnt.offsetTop - pos2) + "px";
                            elmnt.style.left = (elmnt.offsetLeft - pos1) + "px";
                        }

                        function closeDragElement() {
                            /* stop moving when mouse button is released:*/
                            document.onmouseup = null;
                            document.onmousemove = null;
                        }
                    }
                </script>
                <script>
                    //Make the DIV element draggagle:
                    dragElement(document.getElementById(("mydiv9")));

                    function dragElement(elmnt) {
                        var pos1 = 0, pos2 = 0, pos3 = 0, pos4 = 0;
                        if (document.getElementById(elmnt.id + "9header")) {
                            /* if present, the header is where you move the DIV from:*/
                            document.getElementById(elmnt.id + "9header").onmousedown = dragMouseDown;
                        } else {
                            /* otherwise, move the DIV from anywhere inside the DIV:*/
                            elmnt.onmousedown = dragMouseDown;
                        }

                        function dragMouseDown(e) {
                            e = e || window.event;
                            // get the mouse cursor position at startup:
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            document.onmouseup = closeDragElement;
                            // call a function whenever the cursor moves:
                            document.onmousemove = elementDrag;
                        }

                        function elementDrag(e) {
                            e = e || window.event;
                            // calculate the new cursor position:
                            pos1 = pos3 - e.clientX;
                            pos2 = pos4 - e.clientY;
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            // set the element's new position:
                            elmnt.style.top = (elmnt.offsetTop - pos2) + "px";
                            elmnt.style.left = (elmnt.offsetLeft - pos1) + "px";
                        }

                        function closeDragElement() {
                            /* stop moving when mouse button is released:*/
                            document.onmouseup = null;
                            document.onmousemove = null;
                        }
                    }
                </script>

                <script>
                    //Make the DIV element draggagle:
                    dragElement(document.getElementById(("mydiv10")));

                    function dragElement(elmnt) {
                        var pos1 = 0, pos2 = 0, pos3 = 0, pos4 = 0;
                        if (document.getElementById(elmnt.id + "10header")) {
                            /* if present, the header is where you move the DIV from:*/
                            document.getElementById(elmnt.id + "10header").onmousedown = dragMouseDown;
                        } else {
                            /* otherwise, move the DIV from anywhere inside the DIV:*/
                            elmnt.onmousedown = dragMouseDown;
                        }

                        function dragMouseDown(e) {
                            e = e || window.event;
                            // get the mouse cursor position at startup:
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            document.onmouseup = closeDragElement;
                            // call a function whenever the cursor moves:
                            document.onmousemove = elementDrag;
                        }

                        function elementDrag(e) {
                            e = e || window.event;
                            // calculate the new cursor position:
                            pos1 = pos3 - e.clientX;
                            pos2 = pos4 - e.clientY;
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            // set the element's new position:
                            elmnt.style.top = (elmnt.offsetTop - pos2) + "px";
                            elmnt.style.left = (elmnt.offsetLeft - pos1) + "px";
                        }

                        function closeDragElement() {
                            /* stop moving when mouse button is released:*/
                            document.onmouseup = null;
                            document.onmousemove = null;
                        }
                    }
                </script>
                <script>
                    //Make the DIV element draggagle:
                    dragElement(document.getElementById(("mydiv11")));

                    function dragElement(elmnt) {
                        var pos1 = 0, pos2 = 0, pos3 = 0, pos4 = 0;
                        if (document.getElementById(elmnt.id + "11header")) {
                            /* if present, the header is where you move the DIV from:*/
                            document.getElementById(elmnt.id + "11header").onmousedown = dragMouseDown;
                        } else {
                            /* otherwise, move the DIV from anywhere inside the DIV:*/
                            elmnt.onmousedown = dragMouseDown;
                        }

                        function dragMouseDown(e) {
                            e = e || window.event;
                            // get the mouse cursor position at startup:
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            document.onmouseup = closeDragElement;
                            // call a function whenever the cursor moves:
                            document.onmousemove = elementDrag;
                        }

                        function elementDrag(e) {
                            e = e || window.event;
                            // calculate the new cursor position:
                            pos1 = pos3 - e.clientX;
                            pos2 = pos4 - e.clientY;
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            // set the element's new position:
                            elmnt.style.top = (elmnt.offsetTop - pos2) + "px";
                            elmnt.style.left = (elmnt.offsetLeft - pos1) + "px";
                        }

                        function closeDragElement() {
                            /* stop moving when mouse button is released:*/
                            document.onmouseup = null;
                            document.onmousemove = null;
                        }
                    }
                </script>

                <script>
                    //Make the DIV element draggagle:
                    dragElement(document.getElementById(("mydiv12")));

                    function dragElement(elmnt) {
                        var pos1 = 0, pos2 = 0, pos3 = 0, pos4 = 0;
                        if (document.getElementById(elmnt.id + "12header")) {
                            /* if present, the header is where you move the DIV from:*/
                            document.getElementById(elmnt.id + "12header").onmousedown = dragMouseDown;
                        } else {
                            /* otherwise, move the DIV from anywhere inside the DIV:*/
                            elmnt.onmousedown = dragMouseDown;
                        }

                        function dragMouseDown(e) {
                            e = e || window.event;
                            // get the mouse cursor position at startup:
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            document.onmouseup = closeDragElement;
                            // call a function whenever the cursor moves:
                            document.onmousemove = elementDrag;
                        }

                        function elementDrag(e) {
                            e = e || window.event;
                            // calculate the new cursor position:
                            pos1 = pos3 - e.clientX;
                            pos2 = pos4 - e.clientY;
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            // set the element's new position:
                            elmnt.style.top = (elmnt.offsetTop - pos2) + "px";
                            elmnt.style.left = (elmnt.offsetLeft - pos1) + "px";
                        }

                        function closeDragElement() {
                            /* stop moving when mouse button is released:*/
                            document.onmouseup = null;
                            document.onmousemove = null;
                        }
                    }
                </script>
                <script>
                    //Make the DIV element draggagle:
                    dragElement(document.getElementById(("mydiv13")));

                    function dragElement(elmnt) {
                        var pos1 = 0, pos2 = 0, pos3 = 0, pos4 = 0;
                        if (document.getElementById(elmnt.id + "13header")) {
                            /* if present, the header is where you move the DIV from:*/
                            document.getElementById(elmnt.id + "13header").onmousedown = dragMouseDown;
                        } else {
                            /* otherwise, move the DIV from anywhere inside the DIV:*/
                            elmnt.onmousedown = dragMouseDown;
                        }

                        function dragMouseDown(e) {
                            e = e || window.event;
                            // get the mouse cursor position at startup:
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            document.onmouseup = closeDragElement;
                            // call a function whenever the cursor moves:
                            document.onmousemove = elementDrag;
                        }

                        function elementDrag(e) {
                            e = e || window.event;
                            // calculate the new cursor position:
                            pos1 = pos3 - e.clientX;
                            pos2 = pos4 - e.clientY;
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            // set the element's new position:
                            elmnt.style.top = (elmnt.offsetTop - pos2) + "px";
                            elmnt.style.left = (elmnt.offsetLeft - pos1) + "px";
                        }

                        function closeDragElement() {
                            /* stop moving when mouse button is released:*/
                            document.onmouseup = null;
                            document.onmousemove = null;
                        }
                    }
                </script>
                <script>
                    //Make the DIV element draggagle:
                    dragElement(document.getElementById(("mydiv023")));

                    function dragElement(elmnt) {
                        var pos1 = 0, pos2 = 0, pos3 = 0, pos4 = 0;
                        if (document.getElementById(elmnt.id + "023header")) {
                            /* if present, the header is where you move the DIV from:*/
                            document.getElementById(elmnt.id + "023header").onmousedown = dragMouseDown;
                        } else {
                            /* otherwise, move the DIV from anywhere inside the DIV:*/
                            elmnt.onmousedown = dragMouseDown;
                        }

                        function dragMouseDown(e) {
                            e = e || window.event;
                            // get the mouse cursor position at startup:
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            document.onmouseup = closeDragElement;
                            // call a function whenever the cursor moves:
                            document.onmousemove = elementDrag;
                        }

                        function elementDrag(e) {
                            e = e || window.event;
                            // calculate the new cursor position:
                            pos1 = pos3 - e.clientX;
                            pos2 = pos4 - e.clientY;
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            // set the element's new position:
                            elmnt.style.top = (elmnt.offsetTop - pos2) + "px";
                            elmnt.style.left = (elmnt.offsetLeft - pos1) + "px";
                        }

                        function closeDragElement() {
                            /* stop moving when mouse button is released:*/
                            document.onmouseup = null;
                            document.onmousemove = null;
                        }
                    }
                </script>
                <script>
                    //Make the DIV element draggagle:
                    dragElement(document.getElementById(("mydiv14")));

                    function dragElement(elmnt) {
                        var pos1 = 0, pos2 = 0, pos3 = 0, pos4 = 0;
                        if (document.getElementById(elmnt.id + "14header")) {
                            /* if present, the header is where you move the DIV from:*/
                            document.getElementById(elmnt.id + "14header").onmousedown = dragMouseDown;
                        } else {
                            /* otherwise, move the DIV from anywhere inside the DIV:*/
                            elmnt.onmousedown = dragMouseDown;
                        }

                        function dragMouseDown(e) {
                            e = e || window.event;
                            // get the mouse cursor position at startup:
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            document.onmouseup = closeDragElement;
                            // call a function whenever the cursor moves:
                            document.onmousemove = elementDrag;
                        }

                        function elementDrag(e) {
                            e = e || window.event;
                            // calculate the new cursor position:
                            pos1 = pos3 - e.clientX;
                            pos2 = pos4 - e.clientY;
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            // set the element's new position:
                            elmnt.style.top = (elmnt.offsetTop - pos2) + "px";
                            elmnt.style.left = (elmnt.offsetLeft - pos1) + "px";
                        }

                        function closeDragElement() {
                            /* stop moving when mouse button is released:*/
                            document.onmouseup = null;
                            document.onmousemove = null;
                        }
                    }
                </script>
                <script>
                    //Make the DIV element draggagle:
                    dragElement(document.getElementById(("mydiv15")));

                    function dragElement(elmnt) {
                        var pos1 = 0, pos2 = 0, pos3 = 0, pos4 = 0;
                        if (document.getElementById(elmnt.id + "15header")) {
                            /* if present, the header is where you move the DIV from:*/
                            document.getElementById(elmnt.id + "15header").onmousedown = dragMouseDown;
                        } else {
                            /* otherwise, move the DIV from anywhere inside the DIV:*/
                            elmnt.onmousedown = dragMouseDown;
                        }

                        function dragMouseDown(e) {
                            e = e || window.event;
                            // get the mouse cursor position at startup:
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            document.onmouseup = closeDragElement;
                            // call a function whenever the cursor moves:
                            document.onmousemove = elementDrag;
                        }

                        function elementDrag(e) {
                            e = e || window.event;
                            // calculate the new cursor position:
                            pos1 = pos3 - e.clientX;
                            pos2 = pos4 - e.clientY;
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            // set the element's new position:
                            elmnt.style.top = (elmnt.offsetTop - pos2) + "px";
                            elmnt.style.left = (elmnt.offsetLeft - pos1) + "px";
                        }

                        function closeDragElement() {
                            /* stop moving when mouse button is released:*/
                            document.onmouseup = null;
                            document.onmousemove = null;
                        }
                    }
                </script>

                <script>
                    //Make the DIV element draggagle:
                    dragElement(document.getElementById(("mydiv16")));

                    function dragElement(elmnt) {
                        var pos1 = 0, pos2 = 0, pos3 = 0, pos4 = 0;
                        if (document.getElementById(elmnt.id + "16header")) {
                            /* if present, the header is where you move the DIV from:*/
                            document.getElementById(elmnt.id + "16header").onmousedown = dragMouseDown;
                        } else {
                            /* otherwise, move the DIV from anywhere inside the DIV:*/
                            elmnt.onmousedown = dragMouseDown;
                        }

                        function dragMouseDown(e) {
                            e = e || window.event;
                            // get the mouse cursor position at startup:
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            document.onmouseup = closeDragElement;
                            // call a function whenever the cursor moves:
                            document.onmousemove = elementDrag;
                        }

                        function elementDrag(e) {
                            e = e || window.event;
                            // calculate the new cursor position:
                            pos1 = pos3 - e.clientX;
                            pos2 = pos4 - e.clientY;
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            // set the element's new position:
                            elmnt.style.top = (elmnt.offsetTop - pos2) + "px";
                            elmnt.style.left = (elmnt.offsetLeft - pos1) + "px";
                        }

                        function closeDragElement() {
                            /* stop moving when mouse button is released:*/
                            document.onmouseup = null;
                            document.onmousemove = null;
                        }
                    }
                </script>
                <script>
                    //Make the DIV element draggagle:
                    dragElement(document.getElementById(("mydiv17")));

                    function dragElement(elmnt) {
                        var pos1 = 0, pos2 = 0, pos3 = 0, pos4 = 0;
                        if (document.getElementById(elmnt.id + "17header")) {
                            /* if present, the header is where you move the DIV from:*/
                            document.getElementById(elmnt.id + "17header").onmousedown = dragMouseDown;
                        } else {
                            /* otherwise, move the DIV from anywhere inside the DIV:*/
                            elmnt.onmousedown = dragMouseDown;
                        }

                        function dragMouseDown(e) {
                            e = e || window.event;
                            // get the mouse cursor position at startup:
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            document.onmouseup = closeDragElement;
                            // call a function whenever the cursor moves:
                            document.onmousemove = elementDrag;
                        }

                        function elementDrag(e) {
                            e = e || window.event;
                            // calculate the new cursor position:
                            pos1 = pos3 - e.clientX;
                            pos2 = pos4 - e.clientY;
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            // set the element's new position:
                            elmnt.style.top = (elmnt.offsetTop - pos2) + "px";
                            elmnt.style.left = (elmnt.offsetLeft - pos1) + "px";
                        }

                        function closeDragElement() {
                            /* stop moving when mouse button is released:*/
                            document.onmouseup = null;
                            document.onmousemove = null;
                        }
                    }
                </script>

                <script>
                    //Make the DIV element draggagle:
                    dragElement(document.getElementById(("mydiv18")));

                    function dragElement(elmnt) {
                        var pos1 = 0, pos2 = 0, pos3 = 0, pos4 = 0;
                        if (document.getElementById(elmnt.id + "18header")) {
                            /* if present, the header is where you move the DIV from:*/
                            document.getElementById(elmnt.id + "18header").onmousedown = dragMouseDown;
                        } else {
                            /* otherwise, move the DIV from anywhere inside the DIV:*/
                            elmnt.onmousedown = dragMouseDown;
                        }

                        function dragMouseDown(e) {
                            e = e || window.event;
                            // get the mouse cursor position at startup:
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            document.onmouseup = closeDragElement;
                            // call a function whenever the cursor moves:
                            document.onmousemove = elementDrag;
                        }

                        function elementDrag(e) {
                            e = e || window.event;
                            // calculate the new cursor position:
                            pos1 = pos3 - e.clientX;
                            pos2 = pos4 - e.clientY;
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            // set the element's new position:
                            elmnt.style.top = (elmnt.offsetTop - pos2) + "px";
                            elmnt.style.left = (elmnt.offsetLeft - pos1) + "px";
                        }

                        function closeDragElement() {
                            /* stop moving when mouse button is released:*/
                            document.onmouseup = null;
                            document.onmousemove = null;
                        }
                    }
                </script>
                <script>
                    //Make the DIV element draggagle:
                    dragElement(document.getElementById(("mydiv19")));

                    function dragElement(elmnt) {
                        var pos1 = 0, pos2 = 0, pos3 = 0, pos4 = 0;
                        if (document.getElementById(elmnt.id + "19header")) {
                            /* if present, the header is where you move the DIV from:*/
                            document.getElementById(elmnt.id + "19header").onmousedown = dragMouseDown;
                        } else {
                            /* otherwise, move the DIV from anywhere inside the DIV:*/
                            elmnt.onmousedown = dragMouseDown;
                        }

                        function dragMouseDown(e) {
                            e = e || window.event;
                            // get the mouse cursor position at startup:
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            document.onmouseup = closeDragElement;
                            // call a function whenever the cursor moves:
                            document.onmousemove = elementDrag;
                        }

                        function elementDrag(e) {
                            e = e || window.event;
                            // calculate the new cursor position:
                            pos1 = pos3 - e.clientX;
                            pos2 = pos4 - e.clientY;
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            // set the element's new position:
                            elmnt.style.top = (elmnt.offsetTop - pos2) + "px";
                            elmnt.style.left = (elmnt.offsetLeft - pos1) + "px";
                        }

                        function closeDragElement() {
                            /* stop moving when mouse button is released:*/
                            document.onmouseup = null;
                            document.onmousemove = null;
                        }
                    }
                </script>
                <script>
                    //Make the DIV element draggagle:
                    dragElement(document.getElementById(("mydiv20")));

                    function dragElement(elmnt) {
                        var pos1 = 0, pos2 = 0, pos3 = 0, pos4 = 0;
                        if (document.getElementById(elmnt.id + "20header")) {
                            /* if present, the header is where you move the DIV from:*/
                            document.getElementById(elmnt.id + "20header").onmousedown = dragMouseDown;
                        } else {
                            /* otherwise, move the DIV from anywhere inside the DIV:*/
                            elmnt.onmousedown = dragMouseDown;
                        }

                        function dragMouseDown(e) {
                            e = e || window.event;
                            // get the mouse cursor position at startup:
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            document.onmouseup = closeDragElement;
                            // call a function whenever the cursor moves:
                            document.onmousemove = elementDrag;
                        }

                        function elementDrag(e) {
                            e = e || window.event;
                            // calculate the new cursor position:
                            pos1 = pos3 - e.clientX;
                            pos2 = pos4 - e.clientY;
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            // set the element's new position:
                            elmnt.style.top = (elmnt.offsetTop - pos2) + "px";
                            elmnt.style.left = (elmnt.offsetLeft - pos1) + "px";
                        }

                        function closeDragElement() {
                            /* stop moving when mouse button is released:*/
                            document.onmouseup = null;
                            document.onmousemove = null;
                        }
                    }
                </script>
                <script>
                    //Make the DIV element draggagle:
                    dragElement(document.getElementById(("mydiv21")));

                    function dragElement(elmnt) {
                        var pos1 = 0, pos2 = 0, pos3 = 0, pos4 = 0;
                        if (document.getElementById(elmnt.id + "21header")) {
                            /* if present, the header is where you move the DIV from:*/
                            document.getElementById(elmnt.id + "21header").onmousedown = dragMouseDown;
                        } else {
                            /* otherwise, move the DIV from anywhere inside the DIV:*/
                            elmnt.onmousedown = dragMouseDown;
                        }

                        function dragMouseDown(e) {
                            e = e || window.event;
                            // get the mouse cursor position at startup:
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            document.onmouseup = closeDragElement;
                            // call a function whenever the cursor moves:
                            document.onmousemove = elementDrag;
                        }

                        function elementDrag(e) {
                            e = e || window.event;
                            // calculate the new cursor position:
                            pos1 = pos3 - e.clientX;
                            pos2 = pos4 - e.clientY;
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            // set the element's new position:
                            elmnt.style.top = (elmnt.offsetTop - pos2) + "px";
                            elmnt.style.left = (elmnt.offsetLeft - pos1) + "px";
                        }

                        function closeDragElement() {
                            /* stop moving when mouse button is released:*/
                            document.onmouseup = null;
                            document.onmousemove = null;
                        }
                    }
                </script>
                <script>
                    //Make the DIV element draggagle:
                    dragElement(document.getElementById(("mydiv22")));

                    function dragElement(elmnt) {
                        var pos1 = 0, pos2 = 0, pos3 = 0, pos4 = 0;
                        if (document.getElementById(elmnt.id + "22header")) {
                            /* if present, the header is where you move the DIV from:*/
                            document.getElementById(elmnt.id + "22header").onmousedown = dragMouseDown;
                        } else {
                            /* otherwise, move the DIV from anywhere inside the DIV:*/
                            elmnt.onmousedown = dragMouseDown;
                        }

                        function dragMouseDown(e) {
                            e = e || window.event;
                            // get the mouse cursor position at startup:
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            document.onmouseup = closeDragElement;
                            // call a function whenever the cursor moves:
                            document.onmousemove = elementDrag;
                        }

                        function elementDrag(e) {
                            e = e || window.event;
                            // calculate the new cursor position:
                            pos1 = pos3 - e.clientX;
                            pos2 = pos4 - e.clientY;
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            // set the element's new position:
                            elmnt.style.top = (elmnt.offsetTop - pos2) + "px";
                            elmnt.style.left = (elmnt.offsetLeft - pos1) + "px";
                        }

                        function closeDragElement() {
                            /* stop moving when mouse button is released:*/
                            document.onmouseup = null;
                            document.onmousemove = null;
                        }
                    }
                </script>
                <script>
                    //Make the DIV element draggagle:
                    dragElement(document.getElementById(("mydiv23")));

                    function dragElement(elmnt) {
                        var pos1 = 0, pos2 = 0, pos3 = 0, pos4 = 0;
                        if (document.getElementById(elmnt.id + "23header")) {
                            /* if present, the header is where you move the DIV from:*/
                            document.getElementById(elmnt.id + "23header").onmousedown = dragMouseDown;
                        } else {
                            /* otherwise, move the DIV from anywhere inside the DIV:*/
                            elmnt.onmousedown = dragMouseDown;
                        }

                        function dragMouseDown(e) {
                            e = e || window.event;
                            // get the mouse cursor position at startup:
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            document.onmouseup = closeDragElement;
                            // call a function whenever the cursor moves:
                            document.onmousemove = elementDrag;
                        }

                        function elementDrag(e) {
                            e = e || window.event;
                            // calculate the new cursor position:
                            pos1 = pos3 - e.clientX;
                            pos2 = pos4 - e.clientY;
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            // set the element's new position:
                            elmnt.style.top = (elmnt.offsetTop - pos2) + "px";
                            elmnt.style.left = (elmnt.offsetLeft - pos1) + "px";
                        }

                        function closeDragElement() {
                            /* stop moving when mouse button is released:*/
                            document.onmouseup = null;
                            document.onmousemove = null;
                        }
                    }
                </script>

                <script>
                    //Make the DIV element draggagle:
                    dragElement(document.getElementById(("mydiv24")));

                    function dragElement(elmnt) {
                        var pos1 = 0, pos2 = 0, pos3 = 0, pos4 = 0;
                        if (document.getElementById(elmnt.id + "header24")) {
                            /* if present, the header is where you move the DIV from:*/
                            document.getElementById(elmnt.id + "header24").onmousedown = dragMouseDown;
                        } else {
                            /* otherwise, move the DIV from anywhere inside the DIV:*/
                            elmnt.onmousedown = dragMouseDown;
                        }

                        function dragMouseDown(e) {
                            e = e || window.event;
                            // get the mouse cursor position at startup:
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            document.onmouseup = closeDragElement;
                            // call a function whenever the cursor moves:
                            document.onmousemove = elementDrag;
                        }

                        function elementDrag(e) {
                            e = e || window.event;
                            // calculate the new cursor position:
                            pos1 = pos3 - e.clientX;
                            pos2 = pos4 - e.clientY;
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            // set the element's new position:
                            elmnt.style.top = (elmnt.offsetTop - pos2) + "px";
                            elmnt.style.left = (elmnt.offsetLeft - pos1) + "px";
                        }

                        function closeDragElement() {
                            /* stop moving when mouse button is released:*/
                            document.onmouseup = null;
                            document.onmousemove = null;
                        }
                    }
                </script>
                <script>
                    //Make the DIV element draggagle:
                    dragElement(document.getElementById(("mydiv25")));

                    function dragElement(elmnt) {
                        var pos1 = 0, pos2 = 0, pos3 = 0, pos4 = 0;
                        if (document.getElementById(elmnt.id + "25header")) {
                            /* if present, the header is where you move the DIV from:*/
                            document.getElementById(elmnt.id + "25header").onmousedown = dragMouseDown;
                        } else {
                            /* otherwise, move the DIV from anywhere inside the DIV:*/
                            elmnt.onmousedown = dragMouseDown;
                        }

                        function dragMouseDown(e) {
                            e = e || window.event;
                            // get the mouse cursor position at startup:
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            document.onmouseup = closeDragElement;
                            // call a function whenever the cursor moves:
                            document.onmousemove = elementDrag;
                        }

                        function elementDrag(e) {
                            e = e || window.event;
                            // calculate the new cursor position:
                            pos1 = pos3 - e.clientX;
                            pos2 = pos4 - e.clientY;
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            // set the element's new position:
                            elmnt.style.top = (elmnt.offsetTop - pos2) + "px";
                            elmnt.style.left = (elmnt.offsetLeft - pos1) + "px";
                        }

                        function closeDragElement() {
                            /* stop moving when mouse button is released:*/
                            document.onmouseup = null;
                            document.onmousemove = null;
                        }
                    }
                </script>

                <script>
                    //Make the DIV element draggagle:
                    dragElement(document.getElementById(("mydiv26")));

                    function dragElement(elmnt) {
                        var pos1 = 0, pos2 = 0, pos3 = 0, pos4 = 0;
                        if (document.getElementById(elmnt.id + "26header")) {
                            /* if present, the header is where you move the DIV from:*/
                            document.getElementById(elmnt.id + "26header").onmousedown = dragMouseDown;
                        } else {
                            /* otherwise, move the DIV from anywhere inside the DIV:*/
                            elmnt.onmousedown = dragMouseDown;
                        }

                        function dragMouseDown(e) {
                            e = e || window.event;
                            // get the mouse cursor position at startup:
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            document.onmouseup = closeDragElement;
                            // call a function whenever the cursor moves:
                            document.onmousemove = elementDrag;
                        }

                        function elementDrag(e) {
                            e = e || window.event;
                            // calculate the new cursor position:
                            pos1 = pos3 - e.clientX;
                            pos2 = pos4 - e.clientY;
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            // set the element's new position:
                            elmnt.style.top = (elmnt.offsetTop - pos2) + "px";
                            elmnt.style.left = (elmnt.offsetLeft - pos1) + "px";
                        }

                        function closeDragElement() {
                            /* stop moving when mouse button is released:*/
                            document.onmouseup = null;
                            document.onmousemove = null;
                        }
                    }
                </script>
                <script>
                    //Make the DIV element draggagle:
                    dragElement(document.getElementById(("mydiv27")));

                    function dragElement(elmnt) {
                        var pos1 = 0, pos2 = 0, pos3 = 0, pos4 = 0;
                        if (document.getElementById(elmnt.id + "27header")) {
                            /* if present, the header is where you move the DIV from:*/
                            document.getElementById(elmnt.id + "27header").onmousedown = dragMouseDown;
                        } else {
                            /* otherwise, move the DIV from anywhere inside the DIV:*/
                            elmnt.onmousedown = dragMouseDown;
                        }

                        function dragMouseDown(e) {
                            e = e || window.event;
                            // get the mouse cursor position at startup:
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            document.onmouseup = closeDragElement;
                            // call a function whenever the cursor moves:
                            document.onmousemove = elementDrag;
                        }

                        function elementDrag(e) {
                            e = e || window.event;
                            // calculate the new cursor position:
                            pos1 = pos3 - e.clientX;
                            pos2 = pos4 - e.clientY;
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            // set the element's new position:
                            elmnt.style.top = (elmnt.offsetTop - pos2) + "px";
                            elmnt.style.left = (elmnt.offsetLeft - pos1) + "px";
                        }

                        function closeDragElement() {
                            /* stop moving when mouse button is released:*/
                            document.onmouseup = null;
                            document.onmousemove = null;
                        }
                    }
                </script>

                <script>
                    //Make the DIV element draggagle:
                    dragElement(document.getElementById(("mydiv28")));

                    function dragElement(elmnt) {
                        var pos1 = 0, pos2 = 0, pos3 = 0, pos4 = 0;
                        if (document.getElementById(elmnt.id + "28header")) {
                            /* if present, the header is where you move the DIV from:*/
                            document.getElementById(elmnt.id + "28header").onmousedown = dragMouseDown;
                        } else {
                            /* otherwise, move the DIV from anywhere inside the DIV:*/
                            elmnt.onmousedown = dragMouseDown;
                        }

                        function dragMouseDown(e) {
                            e = e || window.event;
                            // get the mouse cursor position at startup:
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            document.onmouseup = closeDragElement;
                            // call a function whenever the cursor moves:
                            document.onmousemove = elementDrag;
                        }

                        function elementDrag(e) {
                            e = e || window.event;
                            // calculate the new cursor position:
                            pos1 = pos3 - e.clientX;
                            pos2 = pos4 - e.clientY;
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            // set the element's new position:
                            elmnt.style.top = (elmnt.offsetTop - pos2) + "px";
                            elmnt.style.left = (elmnt.offsetLeft - pos1) + "px";
                        }

                        function closeDragElement() {
                            /* stop moving when mouse button is released:*/
                            document.onmouseup = null;
                            document.onmousemove = null;
                        }
                    }
                </script>
                <script>
                    //Make the DIV element draggagle:
                    dragElement(document.getElementById(("mydiv29")));

                    function dragElement(elmnt) {
                        var pos1 = 0, pos2 = 0, pos3 = 0, pos4 = 0;
                        if (document.getElementById(elmnt.id + "29header")) {
                            /* if present, the header is where you move the DIV from:*/
                            document.getElementById(elmnt.id + "29header").onmousedown = dragMouseDown;
                        } else {
                            /* otherwise, move the DIV from anywhere inside the DIV:*/
                            elmnt.onmousedown = dragMouseDown;
                        }

                        function dragMouseDown(e) {
                            e = e || window.event;
                            // get the mouse cursor position at startup:
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            document.onmouseup = closeDragElement;
                            // call a function whenever the cursor moves:
                            document.onmousemove = elementDrag;
                        }

                        function elementDrag(e) {
                            e = e || window.event;
                            // calculate the new cursor position:
                            pos1 = pos3 - e.clientX;
                            pos2 = pos4 - e.clientY;
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            // set the element's new position:
                            elmnt.style.top = (elmnt.offsetTop - pos2) + "px";
                            elmnt.style.left = (elmnt.offsetLeft - pos1) + "px";
                        }

                        function closeDragElement() {
                            /* stop moving when mouse button is released:*/
                            document.onmouseup = null;
                            document.onmousemove = null;
                        }
                    }
                </script>
                <script>
                    //Make the DIV element draggagle:
                    dragElement(document.getElementById(("mydiv31")));

                    function dragElement(elmnt) {
                        var pos1 = 0, pos2 = 0, pos3 = 0, pos4 = 0;
                        if (document.getElementById(elmnt.id + "31header")) {
                            /* if present, the header is where you move the DIV from:*/
                            document.getElementById(elmnt.id + "31header").onmousedown = dragMouseDown;
                        } else {
                            /* otherwise, move the DIV from anywhere inside the DIV:*/
                            elmnt.onmousedown = dragMouseDown;
                        }

                        function dragMouseDown(e) {
                            e = e || window.event;
                            // get the mouse cursor position at startup:
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            document.onmouseup = closeDragElement;
                            // call a function whenever the cursor moves:
                            document.onmousemove = elementDrag;
                        }

                        function elementDrag(e) {
                            e = e || window.event;
                            // calculate the new cursor position:
                            pos1 = pos3 - e.clientX;
                            pos2 = pos4 - e.clientY;
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            // set the element's new position:
                            elmnt.style.top = (elmnt.offsetTop - pos2) + "px";
                            elmnt.style.left = (elmnt.offsetLeft - pos1) + "px";
                        }

                        function closeDragElement() {
                            /* stop moving when mouse button is released:*/
                            document.onmouseup = null;
                            document.onmousemove = null;
                        }
                    }
                </script>
                <script>
                    //Make the DIV element draggagle:
                    dragElement(document.getElementById(("mydiv32")));

                    function dragElement(elmnt) {
                        var pos1 = 0, pos2 = 0, pos3 = 0, pos4 = 0;
                        if (document.getElementById(elmnt.id + "32header")) {
                            /* if present, the header is where you move the DIV from:*/
                            document.getElementById(elmnt.id + "32header").onmousedown = dragMouseDown;
                        } else {
                            /* otherwise, move the DIV from anywhere inside the DIV:*/
                            elmnt.onmousedown = dragMouseDown;
                        }

                        function dragMouseDown(e) {
                            e = e || window.event;
                            // get the mouse cursor position at startup:
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            document.onmouseup = closeDragElement;
                            // call a function whenever the cursor moves:
                            document.onmousemove = elementDrag;
                        }

                        function elementDrag(e) {
                            e = e || window.event;
                            // calculate the new cursor position:
                            pos1 = pos3 - e.clientX;
                            pos2 = pos4 - e.clientY;
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            // set the element's new position:
                            elmnt.style.top = (elmnt.offsetTop - pos2) + "px";
                            elmnt.style.left = (elmnt.offsetLeft - pos1) + "px";
                        }

                        function closeDragElement() {
                            /* stop moving when mouse button is released:*/
                            document.onmouseup = null;
                            document.onmousemove = null;
                        }
                    }
                </script>

                <script>
                    //Make the DIV element draggagle:
                    dragElement(document.getElementById(("mydiv33")));

                    function dragElement(elmnt) {
                        var pos1 = 0, pos2 = 0, pos3 = 0, pos4 = 0;
                        if (document.getElementById(elmnt.id + "33header")) {
                            /* if present, the header is where you move the DIV from:*/
                            document.getElementById(elmnt.id + "33header").onmousedown = dragMouseDown;
                        } else {
                            /* otherwise, move the DIV from anywhere inside the DIV:*/
                            elmnt.onmousedown = dragMouseDown;
                        }

                        function dragMouseDown(e) {
                            e = e || window.event;
                            // get the mouse cursor position at startup:
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            document.onmouseup = closeDragElement;
                            // call a function whenever the cursor moves:
                            document.onmousemove = elementDrag;
                        }

                        function elementDrag(e) {
                            e = e || window.event;
                            // calculate the new cursor position:
                            pos1 = pos3 - e.clientX;
                            pos2 = pos4 - e.clientY;
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            // set the element's new position:
                            elmnt.style.top = (elmnt.offsetTop - pos2) + "px";
                            elmnt.style.left = (elmnt.offsetLeft - pos1) + "px";
                        }

                        function closeDragElement() {
                            /* stop moving when mouse button is released:*/
                            document.onmouseup = null;
                            document.onmousemove = null;
                        }
                    }
                </script>
                <script>
                    //Make the DIV element draggagle:
                    dragElement(document.getElementById(("mydiv34")));

                    function dragElement(elmnt) {
                        var pos1 = 0, pos2 = 0, pos3 = 0, pos4 = 0;
                        if (document.getElementById(elmnt.id + "34header")) {
                            /* if present, the header is where you move the DIV from:*/
                            document.getElementById(elmnt.id + "34header").onmousedown = dragMouseDown;
                        } else {
                            /* otherwise, move the DIV from anywhere inside the DIV:*/
                            elmnt.onmousedown = dragMouseDown;
                        }

                        function dragMouseDown(e) {
                            e = e || window.event;
                            // get the mouse cursor position at startup:
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            document.onmouseup = closeDragElement;
                            // call a function whenever the cursor moves:
                            document.onmousemove = elementDrag;
                        }

                        function elementDrag(e) {
                            e = e || window.event;
                            // calculate the new cursor position:
                            pos1 = pos3 - e.clientX;
                            pos2 = pos4 - e.clientY;
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            // set the element's new position:
                            elmnt.style.top = (elmnt.offsetTop - pos2) + "px";
                            elmnt.style.left = (elmnt.offsetLeft - pos1) + "px";
                        }

                        function closeDragElement() {
                            /* stop moving when mouse button is released:*/
                            document.onmouseup = null;
                            document.onmousemove = null;
                        }
                    }
                </script>

                <script>
                    //Make the DIV element draggagle:
                    dragElement(document.getElementById(("mydiv35")));

                    function dragElement(elmnt) {
                        var pos1 = 0, pos2 = 0, pos3 = 0, pos4 = 0;
                        if (document.getElementById(elmnt.id + "35header")) {
                            /* if present, the header is where you move the DIV from:*/
                            document.getElementById(elmnt.id + "35header").onmousedown = dragMouseDown;
                        } else {
                            /* otherwise, move the DIV from anywhere inside the DIV:*/
                            elmnt.onmousedown = dragMouseDown;
                        }

                        function dragMouseDown(e) {
                            e = e || window.event;
                            // get the mouse cursor position at startup:
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            document.onmouseup = closeDragElement;
                            // call a function whenever the cursor moves:
                            document.onmousemove = elementDrag;
                        }

                        function elementDrag(e) {
                            e = e || window.event;
                            // calculate the new cursor position:
                            pos1 = pos3 - e.clientX;
                            pos2 = pos4 - e.clientY;
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            // set the element's new position:
                            elmnt.style.top = (elmnt.offsetTop - pos2) + "px";
                            elmnt.style.left = (elmnt.offsetLeft - pos1) + "px";
                        }

                        function closeDragElement() {
                            /* stop moving when mouse button is released:*/
                            document.onmouseup = null;
                            document.onmousemove = null;
                        }
                    }
                </script>
                <script>
                    //Make the DIV element draggagle:
                    dragElement(document.getElementById(("mydiv36")));

                    function dragElement(elmnt) {
                        var pos1 = 0, pos2 = 0, pos3 = 0, pos4 = 0;
                        if (document.getElementById(elmnt.id + "36header")) {
                            /* if present, the header is where you move the DIV from:*/
                            document.getElementById(elmnt.id + "36header").onmousedown = dragMouseDown;
                        } else {
                            /* otherwise, move the DIV from anywhere inside the DIV:*/
                            elmnt.onmousedown = dragMouseDown;
                        }

                        function dragMouseDown(e) {
                            e = e || window.event;
                            // get the mouse cursor position at startup:
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            document.onmouseup = closeDragElement;
                            // call a function whenever the cursor moves:
                            document.onmousemove = elementDrag;
                        }

                        function elementDrag(e) {
                            e = e || window.event;
                            // calculate the new cursor position:
                            pos1 = pos3 - e.clientX;
                            pos2 = pos4 - e.clientY;
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            // set the element's new position:
                            elmnt.style.top = (elmnt.offsetTop - pos2) + "px";
                            elmnt.style.left = (elmnt.offsetLeft - pos1) + "px";
                        }

                        function closeDragElement() {
                            /* stop moving when mouse button is released:*/
                            document.onmouseup = null;
                            document.onmousemove = null;
                        }
                    }
                </script>

                <script>
                    //Make the DIV element draggagle:
                    dragElement(document.getElementById(("mydiv37")));

                    function dragElement(elmnt) {
                        var pos1 = 0, pos2 = 0, pos3 = 0, pos4 = 0;
                        if (document.getElementById(elmnt.id + "37header")) {
                            /* if present, the header is where you move the DIV from:*/
                            document.getElementById(elmnt.id + "37header").onmousedown = dragMouseDown;
                        } else {
                            /* otherwise, move the DIV from anywhere inside the DIV:*/
                            elmnt.onmousedown = dragMouseDown;
                        }

                        function dragMouseDown(e) {
                            e = e || window.event;
                            // get the mouse cursor position at startup:
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            document.onmouseup = closeDragElement;
                            // call a function whenever the cursor moves:
                            document.onmousemove = elementDrag;
                        }

                        function elementDrag(e) {
                            e = e || window.event;
                            // calculate the new cursor position:
                            pos1 = pos3 - e.clientX;
                            pos2 = pos4 - e.clientY;
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            // set the element's new position:
                            elmnt.style.top = (elmnt.offsetTop - pos2) + "px";
                            elmnt.style.left = (elmnt.offsetLeft - pos1) + "px";
                        }

                        function closeDragElement() {
                            /* stop moving when mouse button is released:*/
                            document.onmouseup = null;
                            document.onmousemove = null;
                        }
                    }
                </script>
                <script>
                    //Make the DIV element draggagle:
                    dragElement(document.getElementById(("mydiv38")));

                    function dragElement(elmnt) {
                        var pos1 = 0, pos2 = 0, pos3 = 0, pos4 = 0;
                        if (document.getElementById(elmnt.id + "38header")) {
                            /* if present, the header is where you move the DIV from:*/
                            document.getElementById(elmnt.id + "38header").onmousedown = dragMouseDown;
                        } else {
                            /* otherwise, move the DIV from anywhere inside the DIV:*/
                            elmnt.onmousedown = dragMouseDown;
                        }

                        function dragMouseDown(e) {
                            e = e || window.event;
                            // get the mouse cursor position at startup:
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            document.onmouseup = closeDragElement;
                            // call a function whenever the cursor moves:
                            document.onmousemove = elementDrag;
                        }

                        function elementDrag(e) {
                            e = e || window.event;
                            // calculate the new cursor position:
                            pos1 = pos3 - e.clientX;
                            pos2 = pos4 - e.clientY;
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            // set the element's new position:
                            elmnt.style.top = (elmnt.offsetTop - pos2) + "px";
                            elmnt.style.left = (elmnt.offsetLeft - pos1) + "px";
                        }

                        function closeDragElement() {
                            /* stop moving when mouse button is released:*/
                            document.onmouseup = null;
                            document.onmousemove = null;
                        }
                    }
                </script>

                <script>
                    //Make the DIV element draggagle:
                    dragElement(document.getElementById(("mydiv39")));

                    function dragElement(elmnt) {
                        var pos1 = 0, pos2 = 0, pos3 = 0, pos4 = 0;
                        if (document.getElementById(elmnt.id + "39header")) {
                            /* if present, the header is where you move the DIV from:*/
                            document.getElementById(elmnt.id + "39header").onmousedown = dragMouseDown;
                        } else {
                            /* otherwise, move the DIV from anywhere inside the DIV:*/
                            elmnt.onmousedown = dragMouseDown;
                        }

                        function dragMouseDown(e) {
                            e = e || window.event;
                            // get the mouse cursor position at startup:
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            document.onmouseup = closeDragElement;
                            // call a function whenever the cursor moves:
                            document.onmousemove = elementDrag;
                        }

                        function elementDrag(e) {
                            e = e || window.event;
                            // calculate the new cursor position:
                            pos1 = pos3 - e.clientX;
                            pos2 = pos4 - e.clientY;
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            // set the element's new position:
                            elmnt.style.top = (elmnt.offsetTop - pos2) + "px";
                            elmnt.style.left = (elmnt.offsetLeft - pos1) + "px";
                        }

                        function closeDragElement() {
                            /* stop moving when mouse button is released:*/
                            document.onmouseup = null;
                            document.onmousemove = null;
                        }
                    }
                </script>
                <script>
                    //Make the DIV element draggagle:
                    dragElement(document.getElementById(("mydiv40")));

                    function dragElement(elmnt) {
                        var pos1 = 0, pos2 = 0, pos3 = 0, pos4 = 0;
                        if (document.getElementById(elmnt.id + "40header")) {
                            /* if present, the header is where you move the DIV from:*/
                            document.getElementById(elmnt.id + "40header").onmousedown = dragMouseDown;
                        } else {
                            /* otherwise, move the DIV from anywhere inside the DIV:*/
                            elmnt.onmousedown = dragMouseDown;
                        }

                        function dragMouseDown(e) {
                            e = e || window.event;
                            // get the mouse cursor position at startup:
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            document.onmouseup = closeDragElement;
                            // call a function whenever the cursor moves:
                            document.onmousemove = elementDrag;
                        }

                        function elementDrag(e) {
                            e = e || window.event;
                            // calculate the new cursor position:
                            pos1 = pos3 - e.clientX;
                            pos2 = pos4 - e.clientY;
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            // set the element's new position:
                            elmnt.style.top = (elmnt.offsetTop - pos2) + "px";
                            elmnt.style.left = (elmnt.offsetLeft - pos1) + "px";
                        }

                        function closeDragElement() {
                            /* stop moving when mouse button is released:*/
                            document.onmouseup = null;
                            document.onmousemove = null;
                        }
                    }
                </script>

                <script>
                    //Make the DIV element draggagle:
                    dragElement(document.getElementById(("mydiv41")));

                    function dragElement(elmnt) {
                        var pos1 = 0, pos2 = 0, pos3 = 0, pos4 = 0;
                        if (document.getElementById(elmnt.id + "41header")) {
                            /* if present, the header is where you move the DIV from:*/
                            document.getElementById(elmnt.id + "41header").onmousedown = dragMouseDown;
                        } else {
                            /* otherwise, move the DIV from anywhere inside the DIV:*/
                            elmnt.onmousedown = dragMouseDown;
                        }

                        function dragMouseDown(e) {
                            e = e || window.event;
                            // get the mouse cursor position at startup:
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            document.onmouseup = closeDragElement;
                            // call a function whenever the cursor moves:
                            document.onmousemove = elementDrag;
                        }

                        function elementDrag(e) {
                            e = e || window.event;
                            // calculate the new cursor position:
                            pos1 = pos3 - e.clientX;
                            pos2 = pos4 - e.clientY;
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            // set the element's new position:
                            elmnt.style.top = (elmnt.offsetTop - pos2) + "px";
                            elmnt.style.left = (elmnt.offsetLeft - pos1) + "px";
                        }

                        function closeDragElement() {
                            /* stop moving when mouse button is released:*/
                            document.onmouseup = null;
                            document.onmousemove = null;
                        }
                    }
                </script>
                <script>
                    //Make the DIV element draggagle:
                    dragElement(document.getElementById(("mydiv42")));

                    function dragElement(elmnt) {
                        var pos1 = 0, pos2 = 0, pos3 = 0, pos4 = 0;
                        if (document.getElementById(elmnt.id + "42header")) {
                            /* if present, the header is where you move the DIV from:*/
                            document.getElementById(elmnt.id + "42header").onmousedown = dragMouseDown;
                        } else {
                            /* otherwise, move the DIV from anywhere inside the DIV:*/
                            elmnt.onmousedown = dragMouseDown;
                        }

                        function dragMouseDown(e) {
                            e = e || window.event;
                            // get the mouse cursor position at startup:
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            document.onmouseup = closeDragElement;
                            // call a function whenever the cursor moves:
                            document.onmousemove = elementDrag;
                        }

                        function elementDrag(e) {
                            e = e || window.event;
                            // calculate the new cursor position:
                            pos1 = pos3 - e.clientX;
                            pos2 = pos4 - e.clientY;
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            // set the element's new position:
                            elmnt.style.top = (elmnt.offsetTop - pos2) + "px";
                            elmnt.style.left = (elmnt.offsetLeft - pos1) + "px";
                        }

                        function closeDragElement() {
                            /* stop moving when mouse button is released:*/
                            document.onmouseup = null;
                            document.onmousemove = null;
                        }
                    }
                </script>
                <script>
                    //Make the DIV element draggagle:
                    dragElement(document.getElementById(("mydiv43")));

                    function dragElement(elmnt) {
                        var pos1 = 0, pos2 = 0, pos3 = 0, pos4 = 0;
                        if (document.getElementById(elmnt.id + "43header")) {
                            /* if present, the header is where you move the DIV from:*/
                            document.getElementById(elmnt.id + "43header").onmousedown = dragMouseDown;
                        } else {
                            /* otherwise, move the DIV from anywhere inside the DIV:*/
                            elmnt.onmousedown = dragMouseDown;
                        }

                        function dragMouseDown(e) {
                            e = e || window.event;
                            // get the mouse cursor position at startup:
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            document.onmouseup = closeDragElement;
                            // call a function whenever the cursor moves:
                            document.onmousemove = elementDrag;
                        }

                        function elementDrag(e) {
                            e = e || window.event;
                            // calculate the new cursor position:
                            pos1 = pos3 - e.clientX;
                            pos2 = pos4 - e.clientY;
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            // set the element's new position:
                            elmnt.style.top = (elmnt.offsetTop - pos2) + "px";
                            elmnt.style.left = (elmnt.offsetLeft - pos1) + "px";
                        }

                        function closeDragElement() {
                            /* stop moving when mouse button is released:*/
                            document.onmouseup = null;
                            document.onmousemove = null;
                        }
                    }
                </script>

                <script>
                    //Make the DIV element draggagle:
                    dragElement(document.getElementById(("mydiv44")));

                    function dragElement(elmnt) {
                        var pos1 = 0, pos2 = 0, pos3 = 0, pos4 = 0;
                        if (document.getElementById(elmnt.id + "44header")) {
                            /* if present, the header is where you move the DIV from:*/
                            document.getElementById(elmnt.id + "44header").onmousedown = dragMouseDown;
                        } else {
                            /* otherwise, move the DIV from anywhere inside the DIV:*/
                            elmnt.onmousedown = dragMouseDown;
                        }

                        function dragMouseDown(e) {
                            e = e || window.event;
                            // get the mouse cursor position at startup:
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            document.onmouseup = closeDragElement;
                            // call a function whenever the cursor moves:
                            document.onmousemove = elementDrag;
                        }

                        function elementDrag(e) {
                            e = e || window.event;
                            // calculate the new cursor position:
                            pos1 = pos3 - e.clientX;
                            pos2 = pos4 - e.clientY;
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            // set the element's new position:
                            elmnt.style.top = (elmnt.offsetTop - pos2) + "px";
                            elmnt.style.left = (elmnt.offsetLeft - pos1) + "px";
                        }

                        function closeDragElement() {
                            /* stop moving when mouse button is released:*/
                            document.onmouseup = null;
                            document.onmousemove = null;
                        }
                    }
                </script>
                <script>
                    //Make the DIV element draggagle:
                    dragElement(document.getElementById(("mydiv300")));

                    function dragElement(elmnt) {
                        var pos1 = 0, pos2 = 0, pos3 = 0, pos4 = 0;
                        if (document.getElementById(elmnt.id + "300header")) {
                            /* if present, the header is where you move the DIV from:*/
                            document.getElementById(elmnt.id + "300header").onmousedown = dragMouseDown;
                        } else {
                            /* otherwise, move the DIV from anywhere inside the DIV:*/
                            elmnt.onmousedown = dragMouseDown;
                        }

                        function dragMouseDown(e) {
                            e = e || window.event;
                            // get the mouse cursor position at startup:
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            document.onmouseup = closeDragElement;
                            // call a function whenever the cursor moves:
                            document.onmousemove = elementDrag;
                        }

                        function elementDrag(e) {
                            e = e || window.event;
                            // calculate the new cursor position:
                            pos1 = pos3 - e.clientX;
                            pos2 = pos4 - e.clientY;
                            pos3 = e.clientX;
                            pos4 = e.clientY;
                            // set the element's new position:
                            elmnt.style.top = (elmnt.offsetTop - pos2) + "px";
                            elmnt.style.left = (elmnt.offsetLeft - pos1) + "px";
                        }

                        function closeDragElement() {
                            /* stop moving when mouse button is released:*/
                            document.onmouseup = null;
                            document.onmousemove = null;
                        }
                    }
                </script>
            </div>
        </asp:Panel>
        <div style="text-align: right">
        <br />
        <asp:ImageButton ID="btnBack"  runat="server" ImageUrl="~/images/Arrow Back.png" OnClick="btnBack_Click" CssClass="noprint" />
        <asp:ImageButton ID="btnPrint" runat="server" ImageUrl="~/images/Print.png" OnClientClick="javascript:window.print()" Text-align="" Text="Print" CssClass="noprint" />

    </div>
    </form>
</body>
</html>
