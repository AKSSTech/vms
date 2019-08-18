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
            string InsertVisitorInfo = "INSERT INTO [Visitor] (Emp_ID,Name,Mobile,IC_No,City,Address,Block_FloorName,VisitPurpose,In_Time,PersonToMeet) VALUES('" + Session["UserId"].ToString() + "','" + txtName.Text + "','" + txtMobile.Text + "','" + txtICno.Text + "','" + txtCity.Text + "','" + txtAddress.Text + "','" + txtBlockName.Text + "','" + txtVisitPurpose.Text + "','" + System.DateTime.Now.ToLongTimeString().ToString() + "','"+txtPersontoMeet.Text+"')";
            dbClass.ConnectDataBaseToInsert(InsertVisitorInfo);
            Response.Redirect("AllVisitors.aspx");
        }
    }
}