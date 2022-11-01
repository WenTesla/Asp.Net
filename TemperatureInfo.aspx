<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TemperatureInfo.aspx.cs" Inherits="TemperatureInfo" %>

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
            <hr color="gray" />
            <asp:Label ID="Label1" runat="server" Text="请输入身份证号查询"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Text="查询" OnClick="Button1_Click" />
            <br />
            <asp:Button ID="Button3" runat="server" Text="查看异常健康码人员" OnClick="Button3_Click" />
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
            <hr color="gray" />
            <br />
        </div>
    </form>
</body>
</html>
