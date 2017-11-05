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
using System.Data.SqlClient;
public partial class admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["un"] == null)
            Response.Redirect("home.aspx");
        else
            Label3.Text = Session["un"].ToString();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Label uid = (Label)GridView1.Rows[e.RowIndex].FindControl("Label1");
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["portalConnectionString"].ToString());
        SqlCommand cmd = new SqlCommand("delete from course where course_id='"+uid.Text+"'");
        SqlCommand cmdd = new SqlCommand("delete from regcourse where course_id='" + uid.Text + "'");
        SqlCommand cmd2 = new SqlCommand("delete from schedule where course_name in(select course_name from course where course_id='" + uid.Text + "')");
        cmd.Connection = con;
        cmdd.Connection = con;
        cmd2.Connection = con;
        con.Open();
        int i = cmd.ExecuteNonQuery();
        con.Close();
        if (i > 0)
        {
            Response.Write("<script language='javascript'>alert('You have deleted 1 row')</script>");
        }
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("addcourse.aspx");
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("home.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("updatecourse.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("checkenrol.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("addschedule.aspx");
    }
}
