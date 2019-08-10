using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VisitorManagementSystem
{
    public partial class MyAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!object.Equals(Session["UserId"], null))
            {
                lblLoginUser.Text = " Welcome ! " + Session["Emp_Name"].ToString();
                lblDate.Text = " " + System.DateTime.Now.Date.ToString();
            }
            else
            {
                Response.Redirect("~/Login.aspx");
            }
        }

        protected void lnkAddVisitor_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AddVisitor.aspx");
        }

        protected void lnkViewAllVisitor_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AllVisitors.aspx");
        }
    }
}