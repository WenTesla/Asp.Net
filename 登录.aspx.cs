using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class 登录 : System.Web.UI.Page
{
    private string myConnectionString = ConfigurationManager.ConnectionStrings["DataSource"].ConnectionString;
    private static string SALT = "bowen";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string name = Request.Form["name"].ToString();
        string password = Request.Form["password"].ToString();
        //创建sql连接
        SqlConnection myConn = new SqlConnection(myConnectionString);
        MD5 md5 = MD5.Create();
        password = BitConverter.ToString(md5.ComputeHash(Encoding.Default.GetBytes(SALT + password)), 4, 8);
        password = password.Replace("-", "");

        //Response.Write(password);
        //sql语句
        string mySql = "select * from admin where name='" + name + "' and " + "password='" + password + "'";

        SqlCommand myCommand = new SqlCommand(mySql, myConn);

        myConn.Open();

        SqlDataReader myDr = myCommand.ExecuteReader();

        if (myDr.Read())
        {
            Response.Redirect("后台管理.aspx");
        }
        else
        {
            Label1.Visible = true;
            Label1.Text = "账号或者密码错误";
            //Page.RegisterStartupScript(" ", "<script>alert(' 弹出的消息 '); </script> ");
            //Response.Write("<script > alert(‘删除成功!’) </ script >");
            //ClientScript.RegisterStartupScript(GetType(), "message", "<script>alert('用户信息不完整！');</script>");
        
        }
        myDr.Close();
        myConn.Close();

    }
}