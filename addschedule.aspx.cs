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

public partial class addschedule : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["un"] == null)
            Response.Redirect("home.aspx");

        if (!IsPostBack)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["portalConnectionString"].ToString());
            SqlCommand cmd = new SqlCommand("select course_name from course");
            cmd.Connection = con;
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            DropDownList2.DataSource = dt;
            DropDownList2.AppendDataBoundItems = true;
            DropDownList2.DataTextField = "course_name";
            DropDownList2.DataBind();

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["portalConnectionString"].ToString());
        SqlCommand cmd = new SqlCommand("insert into schedule(course_name,s_day,tfrom,tto) values('" +DropDownList2.SelectedItem.Text+ "','"+TextBox1.Text+"','"+TextBox2.Text+"','"+TextBox3.Text+"')");
        cmd.Connection = conn;
        conn.Open();
        int a = cmd.ExecuteNonQuery();
        conn.Close();
        if (a > 0)
        {
            Response.Write("Schedule Added");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("admin.aspx");
    }
}
