<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OnlineComileraa.aspx.cs" Inherits="cmspprj.OnlineComileraa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td colspan="2">
                        <asp:TextBox ID="Tbxqry" runat="server" Width="100%" Columns="80" Rows="10" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td width="90%">
                        <asp:TextBox ID="tbxmsg" runat="server" Width="100%" ReadOnly="True"></asp:TextBox>
                        
                    </td>
                    <td>
                        <asp:Button ID="Btnrun" runat="server" Text="Run" OnClick="Btnrun_Click" Width="100%" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:GridView ID="gvbox" runat="server" Width="100%" AllowPaging="True" PageSize="5">
                        </asp:GridView>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
