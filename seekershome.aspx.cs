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

namespace myjob
{
    public partial class seekershome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Label1.Text + Class1.p;
            if (!Page.IsPostBack)
            {
                lbl1.Text = "login Date:"+DateTime.Now.ToLocalTime();
                
            }
        }
    }
}
