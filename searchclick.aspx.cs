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
    public partial class searchclick : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            searchclickds.SelectCommand = "SELECT DISTINCT [company name] AS company_name, [location], [no of emp] AS no_of_emp, [url], [establish year] AS establish_year, [experience required] AS experience_required, [skills required] AS skills_required, [qualification required] AS qualification_required, [min salary] AS min_salary FROM [emp reg],[post resume] where [emp reg].[qualification required] = '"+Class1.p+"'";
        }
    }
}
