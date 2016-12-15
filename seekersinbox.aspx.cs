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
    public partial class seekersinbox : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            seekerinbox.SelectCommand = "SELECT DISTINCT [user name] AS user_name ,[email id] AS email_id, [contact no] AS contact_no, [date of birth] AS date_of_birth, [exp], [skill], [qualification], [fun_area] FROM [emp reg],[post resume] where [emp reg].[username]='" + Class1.s + "' and [post resume].qualification=[emp reg].[qualification required] and [post resume].exp>=[emp reg].[experience required] and [post resume].fun_area=[emp reg].[company type] and [post resume].skill=[emp reg].[skills required]";
        }
    }
}
