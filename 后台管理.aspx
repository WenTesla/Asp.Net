<%@ Page Language="C#" AutoEventWireup="true" CodeFile="后台管理.aspx.cs" Inherits="后台管理" %>

<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">

    <title>侧边展开导航栏</title>
    <!-- 引入字体图标 -->
    <link href="https://cdn.bootcdn.net/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <!-- <link href="1.css" rel="stylesheet" /> -->

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
  

        <script>
        /*
           打开网址对应导航栏页面时，该导航栏a标签背景颜色改变。
        */
        var navigate = document.getElementById("navigate");
            var getAllA = navigate.getElementsByTagName("a");
            for (var i = 0; i < getAllA.length; i++) {
                //获得所有A标签的超链接地址：
                var getUrl = getAllA[i].href;
                //把超链接地址，做成正则表达式
                var pattern = new RegExp(getUrl);
                //检查超链接地址，是否匹配地址栏的地址。
                var result = pattern.test(location.href);
                //如果匹配，则设置style的背景颜色，并且退出循环。
                if (result) {
                    getAllA[i].style.backgroundColor = "#d89e96";
                    break;
                }
            }
        </script>

</body>

</html>
