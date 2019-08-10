using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VisitorManagementSystem.ADMIN
{
    public partial class ViewVisitorsByEmp : System.Web.UI.Page
    {
        DataBaseClass dbClass = new DataBaseClass();
        DataTable dt = new DataTable();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!object.Equals(Session["UserId"], null))
            {
                if (!Page.IsPostBack)
                {
                    GetAllEmployee();
                }
            }
            else
            {
                Response.Redirect("~/Login.aspx");
            }
        }

        public void GetAllEmployee()
        {
            string getLastFileUplaodedInfo = "SELECT * FROM EMPLOYEE";
            dt = new DataTable();
            dt = dbClass.ConnectDataBaseReturnDT(getLastFileUplaodedInfo);
            if (dt.Rows.Count > 0)
            {
                ddlEmployee.DataTextField = "Name";
                ddlEmployee.DataValueField = "EMP_ID";
                ddlEmployee.DataSource = dt;
                ddlEmployee.DataBind();
            }
            else
            {
                ddlEmployee.DataSource = null;
                ddlEmployee.DataBind();
            }
        }

        protected void btnSearchVisitor_Click(object sender, EventArgs e)
        {
            string SearchVisitor = "Select * FROM VISITOR WHERE Emp_ID='" + ddlEmployee.SelectedItem.Value.ToString() + "' ORDER BY Visitor_ID DESC "; ;
            dt = new DataTable();
            dt = dbClass.ConnectDataBaseReturnDT(SearchVisitor);
            if (dt.Rows.Count > 0)
            {
                GridViewAllVisitors.DataSource = dt;
                GridViewAllVisitors.DataBind();
            }
            else
            {
                GridViewAllVisitors.DataSource = null;
                GridViewAllVisitors.DataBind();
            }
        }
    }
}