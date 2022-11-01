using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class insertTemperatureaspx : System.Web.UI.Page
{
    private string myConnectionString = ConfigurationManager.ConnectionStrings["DataSource"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlConnection sqlConnection = new SqlConnection(myConnectionString);
        sqlConnection.Open();
        string selectSql = "select * from residents where idNumber = '" + TextBox1.Text+"'";
        //先查看是否存在
        SqlCommand myCommand = new SqlCommand(selectSql, sqlConnection);
        //return;
        SqlDataReader myDr = myCommand.ExecuteReader();
        if (!myDr.Read())
        {
            //Response.Write(selectSql + "'" + TextBox4.Text + "'");
            Label3.Visible=true;
            Label3.Text = "身份证号不存在";
            return;
        }
        sqlConnection.Close();

        

        sqlConnection.Open();
        string sql = "INSERT INTO temperature(idNumber, temperature,heathCode) " +
            "VALUES('" + TextBox1.Text + "','" +TextBox2.Text+ "','"+ CheckBoxList1.Text+"')";
        SqlCommand StuIns = new SqlCommand(sql, sqlConnection);
        StuIns.ExecuteNonQuery();
        sqlConnection.Close();
        Label3.Visible = true;
        Label3.Text = "插入数据成功";

        
        float temperature = float.Parse(TextBox2.Text);
        if (temperature > 37.3)
        {
            sql = "insert into abnormalTemperature(idNumber,temperatur) values ('" + TextBox1.Text + "','" + TextBox2.Text + "')";
            //Response.Write(sql);
            sqlConnection.Open();
            new SqlCommand(sql, sqlConnection).ExecuteNonQuery();
            sqlConnection.Close();
            Label3.Text = "插入数据成功!\n" + "当前信息已自动添加到异常体温清单";
        }
        //Response.Write(sql);
    }
}