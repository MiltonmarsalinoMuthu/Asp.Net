<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WpFrmPages.aspx.cs" Inherits="cmspprj.WpFrmPages" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TreeView ID="TreeView1" runat="server">
                <Nodes>
                    <asp:TreeNode Text="Pages" Value="Pages" Target="frm2">
                        <asp:TreeNode Text="Static" Value="Static">
                            <asp:TreeNode NavigateUrl="~/Staticwebsite/wperfrmaa.aspx" Text="Exam result" Value="Exam result" Target="frmtwo"></asp:TreeNode>
                            <asp:TreeNode Text="Electricity Bill" Value="Electricity Bill" NavigateUrl="~/Staticwebsite/wpebfrmaa.aspx" Target="frmtwo"></asp:TreeNode>
                            <asp:TreeNode NavigateUrl="~/Staticwebsite/Wpeafrmaa.aspx" Target="frmtwo" Text="Employee allowance" Value="Employee allowance"></asp:TreeNode>
                            <asp:TreeNode NavigateUrl="~/Staticwebsite/webSTaa.aspx" Target="frmtwo" Text="Employee Salary Tax" Value="New Node"></asp:TreeNode>
                        </asp:TreeNode>
                        <asp:TreeNode Text="Dynamic" Value="Dynamic">
                            <asp:TreeNode Text="Salary Tax" Value="Salary Tax" NavigateUrl="~/Dynamicwebsite/CLSSalTax.aspx" Target="frmtwo"></asp:TreeNode>
                        </asp:TreeNode>
                        <asp:TreeNode NavigateUrl="~/OnlineComileraa.aspx" Target="frmtwo" Text="Online Compiler" Value="Online Compiler"></asp:TreeNode>
                    </asp:TreeNode>
                </Nodes>
            </asp:TreeView>
        </div>
    </form>
</body>
</html>
