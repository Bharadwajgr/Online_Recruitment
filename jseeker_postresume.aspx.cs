using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;
using System.Data.SqlClient;


namespace myjob
{
    public partial class jseeker_reg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
             try
            {
                SqlDataReader dr;
                SqlCommand cmd = new SqlCommand();
                SqlConnection con = new SqlConnection();
                cmd.Connection = con;
                con.ConnectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Vinod\MCA\Projects\5th sem\vinod\myjob\App_Data\jobs_dbase.mdf;Integrated Security=True;User Instance=True";
                con.Open();
                cmd.Connection = con;
                cmd.CommandText = "insert into [post resume] values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + ddl1.Text + "','" + ddl2.Text + "','" + TextBox11.Text + "'," + TextBox6.Text + ",'" + ddl3.Text + "'," + ddl4.Text + ",'" + TextBox7.Text + "','" + ddl5.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "')";
                dr = cmd.ExecuteReader();
           
                    lblsms.Text = "Your Account Has Been Sucessfully Created";
                    Response.Redirect("seekers_login.aspx");
                dr.Close();
                con.Close();
            }

            catch (Exception ex)
            {
                lblsms.Text = ex.Message;
            }



        }
        }

       
    }

