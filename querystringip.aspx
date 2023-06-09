<%@ Page Language="C#" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="querystringip.aspx.cs" Inherits="cmspprj.QueryString" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 442px;
        }
        .auto-style3 {
            width: 442px;
            height: 22px;
        }
        .auto-style4 {
            height: 22px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" action="querystringop.aspx" method="get">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Roll number</td>
                <td>
                    <asp:TextBox ID="tbxrno" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Student name</td>
                <td>
                    <asp:TextBox ID="tbxsname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Mark-1</td>
                <td>
                    <asp:TextBox ID="tbxm1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">mark-2</td>
                <td>
                    <asp:TextBox ID="tbxm2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <input type ="button" value="Cancel" onclick="location.href = 'querystringip.aspx';" />
                </td>
                <td class="auto-style4">
                    <asp:Button ID="btnfind" runat="server" Text="Find" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
