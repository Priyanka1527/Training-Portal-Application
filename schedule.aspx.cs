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

public partial class schedule : System.Web.UI.Page
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
            DropDownList1.DataSource = dt;
            DropDownList1.AppendDataBoundItems = true;
            DropDownList1.DataTextField = "course_name";
            DropDownList1.DataBind();
            //bind();
        }

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
      /*  SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["portalConnectionString"].ToString());
        SqlCommand cmdd = new SqlCommand("select s_day,tfrom,tto from schedule where course_name='" + DropDownList1.SelectedItem.Text + "'");
        cmdd.Connection=conn;
        conn.Open();
        SqlDataAdapter daa = new SqlDataAdapter(cmdd);
        conn.Close();
        DataTable dtt = new DataTable();
        daa.Fill(dtt);
        GridView1.DataSource = dtt;
        GridView1.DataBind();*/
    }
  
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        //GridView1.PageIndex = e.NewPageIndex;
        //bind();
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("student.aspx");
    }
}
