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

public partial class addcourse : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["un"] == null)
            Response.Redirect("home.aspx");
    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["portalConnectionString"].ToString());
        SqlCommand cmd = new SqlCommand("insert into course(course_name,course_domain,offered_by,course_fee,description) values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')");
        cmd.Connection = conn;
        conn.Open();
        int a = cmd.ExecuteNonQuery();
        conn.Close();
        if (a > 0)
        {
            Response.Write("Course Added");
        
           
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("admin.aspx");
    }
}
