using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

public partial class insertResidents : System.Web.UI.Page
{
    private string myConnectionString = ConfigurationManager.ConnectionStrings["DataSource"].ConnectionString;
    private static string selectSql = "select * from residents where idNumber = ";
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection sqlConnection = new SqlConnection(myConnectionString);
        sqlConnection.Open();
        //先查看是否存在
        SqlCommand myCommand = new SqlCommand(selectSql+ "'"+TextBox4.Text+"'", sqlConnection);
        //return;
        SqlDataReader myDr = myCommand.ExecuteReader();
        if (myDr.Read())
        {
            //Response.Write(selectSql + "'" + TextBox4.Text + "'");
            Label6.Visible = true;
            Label6.Text = "用户身份证号已经存在";
            return;
        }
        myDr.Close();
        string sql = "INSERT INTO residents(name, sex, birthYear, idNumber, address) " +
            "VALUES('" + TextBox1.Text + "','" +DropDownList1.SelectedItem.ToString() 
            + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + 
            TextBox5.Text + "')";
        //insert into residents(name, sex, age, idNumber, address) values(`瑞克`,`男`,`22`,`210102199003071452`,`7号楼`)
        SqlCommand sqlCommand = new SqlCommand(sql, sqlConnection);
        sqlCommand.ExecuteNonQuery();
        sqlConnection.Close();
        Label6.Visible = true;
        Label6.Text = "插入数据成功!";
        //Response.Write(sql);

    }

   
}