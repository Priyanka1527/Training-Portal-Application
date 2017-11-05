using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class student : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["un"] == null)
            Response.Redirect("home.aspx");
        else
            Label3.Text = Session["un"].ToString();
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("home.aspx");
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void SqlDataSource3_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("schedule.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Session["rc"] = Label3.Text;
        Response.Redirect("regcourse.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["ac"] = Label3.Text;
        Response.Redirect("attend.aspx");
    }
}
