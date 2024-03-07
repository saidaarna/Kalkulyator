using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Kalkulyator1
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                List<string> history = Session["CalculationHistory"] as List<string>;
                if (history != null)
                {
                    lstHistory.DataSource = history;
                    lstHistory.DataBind();
                }
            }
        }
    }
}