using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VisitorManagementSystem.ADMIN
{
    public partial class AdminPanel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!object.Equals(Session["UserId"], null))
            {
                if (!object.Equals(Session["UserType"], "Admin"))
                {
                    Response.Redirect("~/MyAccount.aspx");
                }
            }
            else
            {
                Response.Redirect("~/Login.aspx");
            }
        }

        protected void lnkManageUsers_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManageEmployee.aspx");
        }

        protected void lnkManageVisitors_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManageVisitors.aspx");
        }

        protected void lnkBtnVisitorByEmployee_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewVisitorsByEmp.aspx");
        }
    }
}