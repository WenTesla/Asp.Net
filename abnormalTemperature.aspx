<%@ Page Language="C#" AutoEventWireup="true" CodeFile="abnormalTemperature.aspx.cs" Inherits="adnormalTemperature" %>

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
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" Visible="False" />
                    <asp:BoundField DataField="idNumber" HeaderText="身份证" InsertVisible="False" SortExpression="idNumber">
                    <ControlStyle ForeColor="#3366FF" Width="400px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="temperatur" HeaderText="体温" SortExpression="temperatur" />
                    <asp:BoundField DataField="isReport" HeaderText="是否报备" SortExpression="isReport" />
                    <asp:CommandField ShowEditButton="True" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DataSource %>" DeleteCommand="DELETE FROM [abnormalTemperature] WHERE [id] = @id" InsertCommand="INSERT INTO [abnormalTemperature] ([temperatur], [idNumber], [isReport]) VALUES (@temperatur, @idNumber, @isReport)" SelectCommand="SELECT * FROM [abnormalTemperature]" UpdateCommand="UPDATE [abnormalTemperature] SET [temperatur] = @temperatur, [idNumber] = @idNumber, [isReport] = @isReport WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="temperatur" Type="Double" />
                    <asp:Parameter Name="idNumber" Type="String" />
                    <asp:Parameter Name="isReport" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="temperatur" Type="Double" />
                    <asp:Parameter Name="idNumber" Type="String" />
                    <asp:Parameter Name="isReport" Type="String" />
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
