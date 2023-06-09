<%@ Page Language="C#" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="querystringop.aspx.cs" Inherits="cmspprj.querystringop" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 510px;
        }
        .auto-style3 {
            width: 510px;
            height: 26px;
        }
        .auto-style4 {
            height: 26px;
        }
        .auto-style5 {
            width: 510px;
            height: 29px;
        }
        .auto-style6 {
            height: 29px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" action="querystringip.aspx">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">Roll number</td>
                <td class="auto-style4">
                    <asp:TextBox ID="tbxrno" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Student name</td>
                <td class="auto-style6">
                    <asp:TextBox ID="tbxsname" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Mark-1</td>
                <td>
                    <asp:TextBox ID="tbxm1" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Mark-2</td>
                <td>
                    <asp:TextBox ID="tbxm2" runat="server" ReadOnly="True" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Total</td>
                <td>
                    <asp:TextBox ID="tbxtot" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Average</td>
                <td>
                    <asp:TextBox ID="tbxavg" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Result</td>
                <td>
                    <asp:RadioButton ID="rdobtnpass" runat="server" Text ="Pass" Enabled="False" GroupName="rdobtnres" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:RadioButton ID="rdobtnfail" runat="server"  Text ="Fail" Enabled="False" GroupName="rdobtnres"  />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <input type ="button" value ="Cancel" onclick="location.href = 'querystringop.aspx';" />
                </td>
                <td>
                    <asp:Button ID="btnhome" runat="server" Text="Home" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
