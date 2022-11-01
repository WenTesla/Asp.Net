using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class today : System.Web.UI.Page
{
    private string myConnectionString = ConfigurationManager.ConnectionStrings["DataSource"].ConnectionString;
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
        String sql = "SELECT idNumber 身份证号,temperature 体温,heathCode 健康码颜色,createTime 创建时间 from temperature where convert(varchar(10),createTime,120) =   "
            + "'"+ DateTime.Today.ToString("yyyy-MM-dd")+"'";
        //Response.Write(sql);
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


}