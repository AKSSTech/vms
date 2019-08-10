using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VisitorManagementSystem
{
    public partial class Header : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!object.Equals(Session["UserId"], null))
            {
                Login.Visible = false;
                Logout.Visible = true;
                MyProfile.Visible = true;

                if (object.Equals(Session["UserType"], "Admin"))
                {
                    lnkBtnAdmin.Visible = true;
                }
                else
                {
                    lnkBtnAdmin.Visible = false;
                }
            }
            else
            {
                Login.Visible = true;
                Logout.Visible = false;
                MyProfile.Visible = false;
                lnkBtnAdmin.Visible = false;
            }
        }

        protected void Login_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login.aspx");
        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            Session["UserId"] = null;
            Response.Cookies["RFriend_Email"].Value = null;
            Response.Cookies["RFriend_UID"].Value = null;
            Response.Cookies["RFriend_PWD"].Value = null;
            Response.Cookies["RFriend_UserType"].Value = null;
            Session.Abandon();
            System.Web.Security.FormsAuthentication.SignOut();
            Response.Redirect(ResolveUrl("~/Login.aspx"));
        }
        protected void MyProfile_Click(object sender, EventArgs e)
        {
            if (!object.Equals(Session["UserId"], null))
            {
                Response.Redirect("~/MyAccount.aspx");
            }
        }

        protected void Admin_Click(object sender, EventArgs e)
        {
            if (!object.Equals(Session["UserId"], null))
            {
                if (object.Equals(Session["UserType"], "Admin"))
                {
                    Response.Redirect("~/ADMIN/AdminPanel.aspx");
                }
            }
        }
    }

}
