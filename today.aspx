<%@ Page Language="C#" AutoEventWireup="true" CodeFile="today.aspx.cs" Inherits="today" %>

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
                <a href="abnormalTemperature.aspx">异常体温</a>
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
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>
        </div>
    </form>
</body>
</html>
