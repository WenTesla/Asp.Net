<%@ Page Language="C#" AutoEventWireup="true" CodeFile="异常体温人员详细信息.aspx.cs" Inherits="异常体温人员详细信息" %>

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
            <h1>异常体温人员信息</h1>
            <hr color="gray" />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="name" HeaderText="姓名" SortExpression="name" />
                    <asp:BoundField DataField="sex" HeaderText="性别" SortExpression="sex" />
                    <asp:BoundField DataField="temperatur" HeaderText="体温" SortExpression="temperatur" />
                    <asp:BoundField DataField="address" HeaderText="地址" SortExpression="address" />
                    <asp:BoundField DataField="birthYear" HeaderText="出生年份" SortExpression="birthYear" />
                    <asp:BoundField DataField="heathCode" HeaderText="健康码颜色" SortExpression="heathCode" />
                    <asp:BoundField DataField="isReport" HeaderText="是否报备" SortExpression="isReport" />
                    <asp:BoundField DataField="createTime" HeaderText="时间" SortExpression="createTime" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DataSource %>" SelectCommand="SELECT * FROM [view1]"></asp:SqlDataSource>
            <hr color="gray"/>
        </div>
    </form>
</body>
</html>
