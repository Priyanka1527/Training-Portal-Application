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

public partial class regcourse : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["un"] == null)
            Response.Redirect("home.aspx");
        Label1.Text = Session["un"].ToString();
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["portalConnectionString"].ToString());
        SqlCommand cmdd = new SqlCommand("select name,designation,insid from reg where email='" + Label1.Text + "'");
        cmdd.Connection = conn;
        conn.Open();
        SqlDataAdapter daa = new SqlDataAdapter(cmdd);
        conn.Close();
        DataTable dtt = new DataTable();
        daa.Fill(dtt);
        DropDownList1.DataSource = dtt;
        if (dtt.Rows.Count > 0)
        {
            Label2.Text= dtt.Rows[0]["name"].ToString();
            Label3.Text = dtt.Rows[0]["designation"].ToString();
            Label4.Text = dtt.Rows[0]["insid"].ToString();
           
        }

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
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("student.aspx");
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["portalConnectionString"].ToString());
        SqlCommand cmdd = new SqlCommand("select * from course where course_name='" + DropDownList1.SelectedItem.Text + "'");
        cmdd.Connection = conn;
        conn.Open();
        SqlDataAdapter daa = new SqlDataAdapter(cmdd);
        conn.Close();
        DataTable dtt = new DataTable();
        daa.Fill(dtt);
        DropDownList1.DataSource = dtt;
        if (dtt.Rows.Count > 0)
        {
            TextBox1.Text = dtt.Rows[0]["course_id"].ToString();
            TextBox2.Text = dtt.Rows[0]["course_name"].ToString();
            TextBox3.Text = dtt.Rows[0]["course_domain"].ToString();
            TextBox4.Text = dtt.Rows[0]["offered_by"].ToString();
            TextBox5.Text = dtt.Rows[0]["course_fee"].ToString();
            TextBox6.Text = dtt.Rows[0]["description"].ToString();
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["portalConnectionString"].ToString());
        SqlCommand cmd = new SqlCommand("insert into regcourse values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + Label2.Text + "','" + Label3.Text + "','" + Label4.Text + "','"+Label1.Text+"')");
        cmd.Connection = conn;
        conn.Open();
        int a = cmd.ExecuteNonQuery();
        conn.Close();
        if (a > 0)
        {
            Response.Write("Data Inserted");
        }
    }
}
