<%@ Page Language="C#" AutoEventWireup="true" CodeFile="insertResidents.aspx.cs" Inherits="insertResidents" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>插入居民数据</title>
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
                <a href="#">当日体温信息</a>
            </li>
            <li>
                <a href="登录.aspx">退出登录</a>
            </li>
        </ul>
    </div>
    <form id="form1" runat="server">
        <div align="center">
            <h1>请输入下列信息添加到小区居民表格</h1>
            <hr color="gray"/>
            <asp:Label ID="Label1" runat="server" Text="姓名"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="性别"  style="margin-left: 0px" ></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server"   >
                <asp:ListItem>男</asp:ListItem>
                <asp:ListItem>女</asp:ListItem>
            </asp:DropDownList>
            
            <br />
            <asp:Label ID="Label3" runat="server" Text="出生年份"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="请输入正确的年份" MaximumValue="2100" MinimumValue="1900" ControlToValidate="TextBox3" ForeColor="Red"></asp:RangeValidator>
            <br />
            <asp:Label ID="Label4" runat="server" Text="身份证号" ></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="居民身份证不能为空" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label5" runat="server" Text="居住地" ></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label6" runat="server" Text="反馈信息" Visible="False"></asp:Label>
            <br />
            <asp:Button ID="Button1" runat="server" Text="提交" OnClick="Button1_Click" style="height: 27px" />
            <hr color="gray"/>
        </div>
    </form>
</body>
</html>
