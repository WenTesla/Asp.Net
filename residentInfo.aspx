<%@ Page Language="C#" AutoEventWireup="true" CodeFile="residentInfo.aspx.cs" Inherits="residentaspx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="1.css" rel="stylesheet" />
</head>
<body>
    <div id="navigate">
        <ul id="navigateUl">
            <li>
                <a href="residentInfo.aspx">居民信息</a>
            </li>
            <li>
                <a href="insertResidents.aspx">添加居民信息</a>
            </li>
            <li>
                <a href="TemperatureInfo.aspx">体温信息</a>
            </li>
            <li>
                <a href="insertTemperature.aspx">添加体温</a>
            </li>
            <li>
                <a href="异常体温人员详细信息.aspx">异常体温人员</a>
            </li>
            <li>
                <a href="today.aspx">当日体温信息</a>
            </li>
            <li>
                <a href="登录.aspx">退出登录</a>
            </li>
        </ul>
    </div>
    <form id="form1" runat="server">
        <div align="center">
            <asp:Label ID="Label1" runat="server" Text="请输入姓氏查询"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" Height="23px"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="查询" OnClick="Button1_Click" />
            <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnPageIndexChanging="GridView1_PageIndexChanging" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>
