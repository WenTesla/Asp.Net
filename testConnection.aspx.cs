using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class testConnection : System.Web.UI.Page
{
    private string myConnectionString = ConfigurationManager.ConnectionStrings["DataSource"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            TestConnectionSQLServer();
            Response.End();
        }
    }
    private void TestConnectionSQLServer()
    {
        SqlConnection myConnection = new SqlConnection(myConnectionString);
        myConnection.Open();
        Response.Write(myConnection.Database + "<br>");
        Response.Write(myConnection.DataSource + "<br>");
        myConnection.Close();
    }

}