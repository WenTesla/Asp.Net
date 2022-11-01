<%@ Page Language="C#" AutoEventWireup="true" CodeFile="insertTemperature.aspx.cs" Inherits="insertTemperatureaspx" %>

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
            <h1>请添加体温信息</h1>
            <br />
            <asp:Label ID="Label1" runat="server" Text="身份证号"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="请输入身份证号" Font-Size="Medium" BackColor="Red" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label2" runat="server" Text="体温"></asp:Label>
            
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="请输入正确的体温信息(摄氏度)" ControlToValidate="TextBox2" MaximumValue="50" MinimumValue="30" BackColor="Red" ></asp:RangeValidator>
            <br />

            <asp:Label ID="Label4" runat="server" Text="健康码颜色"></asp:Label>
            <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem>绿</asp:ListItem>
                <asp:ListItem>黄</asp:ListItem>
                <asp:ListItem>红</asp:ListItem>
            </asp:CheckBoxList>
            
            <p>
                <asp:Label ID="Label3" runat="server" Text="Label" Visible="False" Color="Red"></asp:Label>
            </p>
            <p>
            <asp:Button ID="Button1" runat="server" Text="添加" OnClick="Button1_Click" />
            </p>
        </div>
        
    </form>
</body>
</html>
