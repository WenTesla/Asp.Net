using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TemperatureInfo : System.Web.UI.Page
{
    private string myConnectionString = ConfigurationManager.ConnectionStrings["DataSource"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
            SqlConnection sqlConnection = new SqlConnection(myConnectionString);
            sqlConnection.Open();
            System.Diagnostics.Debug.Write(TextBox1.Text);
            String sql = "SELECT idNumber 身份证号,temperature 体温,heathCode 健康码,createTime 时间 from temperature  " ;
            SqlDataAdapter da = new SqlDataAdapter(sql, sqlConnection);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            sqlConnection.Close();
        }
    }



    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection sqlConnection = new SqlConnection(myConnectionString);
        sqlConnection.Open();
        System.Diagnostics.Debug.Write(TextBox1.Text);
        String sql = "SELECT idNumber 身份证号,temperature 体温,heathCode 健康码,createTime 时间 from temperature  where idNumber LIKE '" + TextBox1.Text + "%'";
        //Response.Write(sql);
        SqlDataAdapter da = new SqlDataAdapter(sql, sqlConnection);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        sqlConnection.Close();


    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlConnection sqlConnection = new SqlConnection(myConnectionString);
        sqlConnection.Open();
        System.Diagnostics.Debug.Write(TextBox1.Text);
        String sql = "SELECT idNumber 身份证号,temperature 体温,heathCode 健康码,createTime 时间 from temperature  where  heathCode != '绿'" ;
        //Response.Write(sql);
        SqlDataAdapter da = new SqlDataAdapter(sql, sqlConnection);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        sqlConnection.Close();
    }
}