<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Menu.aspx.cs" Inherits="web_Default" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Menu :: Menu</title>
    <link href="bootstrap.css" rel="stylesheet" />
    <link href="style.css" rel="stylesheet" />
    <style>
        .dropbtn {
            background-color: #4CAF50;
            color: white;
            padding: 16px;
            font-size: 16px;
            border: none;
            cursor: pointer;
        }

        .dropdown {
            position: relative;
            display: inline-block;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            z-index: 1;
        }

            .dropdown-content a {
                color: black;
                padding: 12px 16px;
                text-decoration: none;
                display: block;
            }

                .dropdown-content a:hover {
                    background-color: #f1f1f1;
                }

        .dropdown:hover .dropdown-content {
            display: block;
        }

        .dropdown:hover .dropbtn {
            background-color: #3e8e41;
        }
    </style>
</head>
<body>
    <div class="header-top">
        <div class="container">
            <span class="menu"></span>
            <div class="top-menu">
               
                    <div class="dropdown">
                        <button class="dropbtn">Dropdown</button>
                        <div class="dropdown-content">
                            <a href="#">Link 1</a>
                        </div>
                    </div>
                    <div class="dropdown">
                        <button class="dropbtn" onclick="location.href='Login.aspx'">Dropdown</button>
                    </div>
            
            </div>
            <!-- script-for-menu -->
            <script>
                $("span.menu").click(function () {
                    $(".top-menu").slideToggle("slow", function () {
                        // Animation complete.
                    });
                });
            </script>
            <div class="clearfix"></div>
            <!--End-top-nav-script-->
        </div>
    </div>
</body>
</html>
