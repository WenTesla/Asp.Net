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

public partial class login : System.Web.UI.Page
{
    private string myConnectionString = ConfigurationManager.ConnectionStrings["DataSource"].ConnectionString;
    private static string SALT = "bowen";

    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

    }

    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        //创建sql连接
        SqlConnection myConn = new SqlConnection(myConnectionString);
        MD5 md5 = MD5.Create();
        string password = BitConverter.ToString(md5.ComputeHash(Encoding.Default.GetBytes(SALT+Login1.Password)), 4, 8);
        password = password.Replace("-","");

        //Response.Write(password);
        //sql语句
        string mySql = "select * from admin where name='" + Login1.UserName + "' and " + "password='" + password + "'";
        
        SqlCommand myCommand = new SqlCommand(mySql, myConn);
        
        myConn.Open();
        
        SqlDataReader myDr = myCommand.ExecuteReader();
        
        if (myDr.Read())
        {
            Response.Redirect("Main.aspx");
        }

        myDr.Close();
        myConn.Close();

    }
}