using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VisitorManagementSystem
{
    public partial class AddVisitor : System.Web.UI.Page
    {
        DataBaseClass dbClass = new DataBaseClass();
        DataTable dt = new DataTable();

        protected void Page_Load(object sender, EventArgs e)
        {
            txtInTime.Text = System.DateTime.Now.ToLongTimeString();
        }

        protected void btnAddVisitor_Click(object sender, EventArgs e)
        {
            //Inserting Visitor Information into the DataBase.
            string InsertVisitorInfo = "INSERT INTO [Visitor] (Emp_ID,Name,Mobile,Organization,City,Address,Visit_Department,VisitPurpose,In_Time) VALUES('" + Session["UserId"].ToString() + "','" + txtName.Text + "','" + txtMobile.Text + "','" + txtFromCompany.Text + "','" + txtCity.Text + "','" + txtAddress.Text + "','" + ddlDepartment.SelectedItem.Text + "','" + txtVisitPurpose.Text + "','" + System.DateTime.Now.ToLongTimeString().ToString() + "')";
            dbClass.ConnectDataBaseToInsert(InsertVisitorInfo);
            Response.Redirect("AllVisitors.aspx");
        }
    }
}