using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
 
namespace VisitorManagementSystem
{
    public partial class Login : System.Web.UI.Page
    {
        DataBaseClass dbClass = new DataBaseClass();
        public DataTable dt;

        protected void Page_Load(object sender, EventArgs e)
        {

           
        }

        protected void OnAuthenticate(object sender, AuthenticateEventArgs e)
        {
            bool Authenticated = false;
            CheckBox chBox = (CheckBox)ctlLogin.FindControl("RememberMe");
            Authenticated = UserAuthenticate(ctlLogin.UserName, ctlLogin.Password);
            e.Authenticated = Authenticated;
            if (Authenticated == true)
            {
                Response.Redirect("~/MyAccount.aspx");
            }
        }

        private bool UserAuthenticate(string UserName, string Password)
        {
            bool boolReturnValue = false;
            dt = new DataTable();
            string chkUser = "Select * FROM [Employee] where Email='" + UserName + "' AND Password='" + Password + "'";
            dt = dbClass.ConnectDataBaseReturnDT(chkUser);
            if (dt.Rows.Count > 0)
            {
                boolReturnValue = true;
                Session["UserId"] = dt.Rows[0]["EMP_ID"].ToString();
                Session["UserType"] = dt.Rows[0]["User_Type"].ToString();
                Session["Emp_Name"] = dt.Rows[0]["Name"].ToString();
            }
            return boolReturnValue;
        }
    }
}