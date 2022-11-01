using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Main : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("residentInfo.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("TemperatureInfo.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("abnormalTemperature.aspx");
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("insertResidents.aspx");
    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        Response.Redirect("insertTemperature.aspx");
    }

    protected void Button8_Click(object sender, EventArgs e)
    {
        Response.Redirect("异常体温人员详细信息.aspx");
    }
}