using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VisitorManagementSystem.ADMIN
{
    public partial class ManageEmployee : System.Web.UI.Page
    {
        DataBaseClass dbClass = new DataBaseClass();
        DataTable dt = new DataTable();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!object.Equals(Session["UserId"], null))
            {
                if (object.Equals(Session["UserType"], "Admin"))
                {
                    if (!Page.IsPostBack)
                    {
                        GetAllUsers();
                    }
                }
                else
                {
                    Response.Redirect("~/MyAccount.aspx");
                }
            }
            else
            {
                Response.Redirect("~/Login.aspx");
            }
        }

        public void GetAllUsers()
        {
            string getAllUsersList = "Select * FROM Employee ORDER BY EMP_ID DESC ";
            dt = new DataTable();
            dt = dbClass.ConnectDataBaseReturnDT(getAllUsersList);
            if (dt.Rows.Count > 0)
            {
                GridViewUsers.DataSource = dt;
                GridViewUsers.DataBind();
            }
            else
            {
                GridViewUsers.DataSource = null;
                GridViewUsers.DataBind();
            }
        }

        protected void btnAddNewUser_Click(object sender, EventArgs e)
        {
            if (!String.IsNullOrEmpty(txtUserName.Text) && !String.IsNullOrEmpty(txtUserEmail.Text) && !String.IsNullOrEmpty(txtPwd.Text))
            {
                string InsertFileInfo = "INSERT INTO [Employee] (Name,Email,Password,User_Type) VALUES('" + txtUserName.Text + "','" + txtUserEmail.Text + "','" + txtPwd.Text + "','User')";
                dbClass.ConnectDataBaseToInsert(InsertFileInfo);
            }
            else
            {
                lblError.Text = "Please enter the details.";
            }
            GetAllUsers();
        }

        protected void DeleteUser(object sender, EventArgs e)
        {
            string User_ID = (sender as LinkButton).CommandArgument;

            string UserToDelete = "DELETE FROM Employee WHERE EMP_ID='" + User_ID + "'";
            dbClass.ConnectDataBaseToInsert(UserToDelete);
            GetAllUsers();
        }
    }
}