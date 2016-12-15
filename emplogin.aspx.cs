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
    public partial class emplogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Class1.s = TextBox1.Text;
            
            try
            {

                SqlConnection con = new SqlConnection();
                con.ConnectionString = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\jobs_dbase.mdf;Integrated Security=True;User Instance=True";
                con.Open();
                SqlCommand cmd = new SqlCommand("select  * from [emp reg] where username = @uname and password = @pwd", con);
                cmd.Parameters.Add("@uname", SqlDbType.VarChar, 50).Value = TextBox1.Text;
                cmd.Parameters.Add("@pwd", SqlDbType.VarChar, 50).Value = TextBox2.Text;

                /* Object obj = cmd.ExecuteScalar();
                 if (obj == null)
                 */

                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.HasRows)
                {
                    Session.Add("uname", TextBox1.Text);
                    Response.Redirect("companyhome.aspx");
                    //FormsAuthentication.RedirectFromLoginPage(TextBox1.Text, false);
            //        lblMsg.Text = "Your request is under processing ,you will recieve updates soon. thank you for using this site!";
                }
                else
                {
                    lblMsg.Text = "Invalid Login! please enter the correct username or password";
                }

                con.Close();
            }
            catch (Exception ex)
            {
                lblMsg.Text = "Error :" + ex.Message;
            }
           

        }

      }
    }

