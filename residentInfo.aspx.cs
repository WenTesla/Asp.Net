using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class residentaspx : System.Web.UI.Page
{
    private string myConnectionString = ConfigurationManager.ConnectionStrings["DataSource"].ConnectionString;
    private const String DEFAULT_TEXT = "请输入姓名查询（支持模糊查询）";
    protected void Page_Load(object sender, EventArgs e)
    {

        //if (!IsPostBack)
        //{
        //    TextBox1.Text = "测试数据";
        //}
        //UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        //开始查询 
        SqlConnection sqlConnection = new SqlConnection(myConnectionString);
        sqlConnection.Open();
        String sql = "SELECT name 姓名,sex 性别,birthYear 年龄,idNumber 身份证号,address 地址,createTime 创建时间 FROM residents";
        
        //SqlCommand StuIns = new SqlCommand(sql, sqlConnection);
        //SqlDataReader residentsInfo = StuIns.ExecuteReader();
        //GridView1.DataSource = residentsInfo;
        //GridView1.DataBind();
        //sqlConnection.Close();
        
        SqlDataAdapter da = new SqlDataAdapter(sql, sqlConnection);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        sqlConnection.Close();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        


    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();
    }


    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection sqlConnection = new SqlConnection(myConnectionString);
        sqlConnection.Open();
        System.Diagnostics.Debug.Write(TextBox1.Text);
        String sql = "SELECT name 姓名,sex 性别,birthYear 出生年份,idNumber 身份证号,address 地址,createTime 创建时间 FROM residents where name like '"+ TextBox1.Text+"%'";
        SqlDataAdapter da = new SqlDataAdapter(sql, sqlConnection);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        sqlConnection.Close();

    }
}