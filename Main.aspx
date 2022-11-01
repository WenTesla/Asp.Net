<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Main.aspx.cs" Inherits="Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>体温管理系统</title>
    <style>
        body{

        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div align="center">
            <h1 >
                欢迎来到小区体温管理系统
            </h1 >
            <asp:Button ID="Button5" runat="server" Text="退出登录"   OnClick="Button5_Click"/>
            <hr  color ="blue"/>
        </div>
        <div align="center">
            <asp:Button ID="Button1" runat="server" Text="居民信息" OnClick="Button1_Click" />
            <br />
            <br />
            <asp:Button ID="Button6" runat="server" Text="添加居民信息" OnClick="Button6_Click" />
            <br />
            <br />

            <asp:Button ID="Button2" runat="server" Text="体温信息" OnClick="Button2_Click" />
            <br />
            <br />
             <asp:Button ID="Button7" runat="server" Text="添加体温信息" OnClick="Button7_Click" />
            <br />
            <br />

            <asp:Button ID="Button3" runat="server" Text="异常体温" OnClick="Button3_Click" />
            <br />
            <br />
            <asp:Button ID="Button4" runat="server" Text="每日体温信息" />
            <br />
            <br />
            <asp:Button ID="Button8" runat="server" Text="异常体温详细人员信息" OnClick="Button8_Click" />
        </div>
    </form>
</body>
</html>
