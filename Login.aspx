<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> | Login Form |</title>
    <link href="CSS/Style.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            height: 7px;
        }
        .style2
        {
            height: 6px;
        }
        .style3
        {
            height: 7px;
            width: 124px;
        }
        .style4
        {
            height: 6px;
            width: 124px;
        }
        .style5
        {
            width: 124px;
        }
        .style7
        {
            font-family: "Segoe UI";
        }
    </style>
</head>
<body>
    <h1 style="text-align: center" class="style7">Alghanim Industries</h1>
    <h3 style="text-align: center" class="style7">Employee Services Department - ES 
        Residency Tracker &amp; Documents System</h3>
    <form id="form1" runat="server">
    <div class="PAGE">
    <div class ="LOGIN">
        <table style="width: 100%;">
        <tbody style="font-family: segoe UI;">
            <tr>
                <td style="padding: 18px; color: #fff" class="style3">
                    <strong>User Name :
                </strong>
                </td>
                <td class="style1">
                    <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="175px" 
                        style="font-size: x-large; font-weight: 700"></asp:TextBox>
                </td>
                
            </tr>
            <tr>
                <td style="padding: 18px; color:#fff" class="style4">
                    <strong>Password :
                </strong>
                </td>
                <td class="style2">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Height="30px" 
                        Width="175px" 
                        style="font-size: x-large; font-weight: 700; margin-left: 1px"></asp:TextBox>
                </td>
                
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button2" runat="server" class = "btn" Text="Login" 
                        onclick="Button2_Click" Width="96px" Height="35px" />
                    <asp:Button ID="Button1" runat="server" class ="btn" Text="Cancel" 
                        Width="79px" onclick="Button1_Click" Height="35px" />
                </td>
                
            </tr>
            </tbody>
        </table>
    
    </div>
    
    </div>
    <p style="text-align: center">
                    <asp:Label ID="Label1" runat="server" Visible ="False" Text="The Username or Password incorrect!. try again or call the web administrator." 
                        style="color: #FF0000; font-size: medium; font-family: Arial;"></asp:Label>
                </p>
    </form>
    </body>
</html>
