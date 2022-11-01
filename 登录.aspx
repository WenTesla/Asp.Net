<%@ Page Language="C#" AutoEventWireup="true" CodeFile="登录.aspx.cs" Inherits="登录" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <style>
    body {
      background: url('https://tvax1.sinaimg.cn/large/bfe05ea9ly1fxhberfckmj21hc0u0wm7') no-repeat;
      background-size: 100% 130%;
    }

    #login_box {
      width: 20%;
      height: 400px;
      background-color: #00000060;
      margin: auto;
      margin-top: 10%;
      text-align: center;
      border-radius: 10px;
      padding: 50px 50px;
    }

    h2 {
      color: #ffffff90;
      margin-top: 5%;
    }

    #input-box {
      margin-top: 5%;
    }

    span {
      color: #fff;
    }

    input {
      border: 0;
      width: 60%;
      font-size: 15px;
      color: #fff;
      background: transparent;
      border-bottom: 2px solid #fff;
      padding: 5px 10px;
      outline: none;
      margin-top: 10px;
    }

    .button {
      margin-top: 50px;
      width: 60%;
      height: 30px;
      border-radius: 10px;
      border: 0;
      color: #fff;
      text-align: center;
      line-height: 30px;
      font-size: 15px;
      background-image: linear-gradient(to right, #30cfd0, #330867);
    }

    #sign_up {
      margin-top: 45%;
      margin-left: 60%;
    }

    a {
      color: #b94648;
    }
  </style>
</head>

<body>
  <div id="login_box">
    <h2>小区体温管理后台</h2>

      <form method="post" action="登录.aspx" runat="server">
          <div id="input_box">
              <input name="name" type="text" placeholder="请输入用户名">
          </div>
          <div class="input_box">
              <input name="password" type="password" placeholder="请输入密码">
          </div>
          <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="#CC0000" Visible="False"></asp:Label>
          <br />
          <asp:Button ID="Button1" runat="server" Text="登录" OnClick="Button1_Click" />
          
      </form>


  </div>
</body>
</html>


