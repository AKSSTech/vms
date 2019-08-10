using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VisitorManagementSystem
{
    public partial class AllVisitors : System.Web.UI.Page
    {
        DataBaseClass dbClass = new DataBaseClass();
        DataTable dt = new DataTable();
        string Query = "Select * FROM VISITOR ORDER BY Visitor_ID DESC ";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!object.Equals(Session["UserId"], null))
            {
                if (!Page.IsPostBack)
                {
                    GetAllVisitors(Query);
                }
            }
            else
            {
                Response.Redirect("~/Login.aspx");
            }
        }

        public void GetAllVisitors(string query)
        {
            string getLastFileUplaodedInfo = query;
            dt = new DataTable();
            dt = dbClass.ConnectDataBaseReturnDT(getLastFileUplaodedInfo);
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

       

        protected void MakeOutVisitor(object sender, EventArgs e)
        {
            string Visitor_ID = (sender as LinkButton).CommandName;
            string UpdateVisitor = "UPDATE VISITOR SET Out_Time='" + System.DateTime.Now.ToLongTimeString().ToString() + "' WHERE Visitor_ID='" + Visitor_ID + "'";
            dbClass.ConnectDataBaseToInsert(UpdateVisitor);
            GetAllVisitors(Query);
        }

        //RowDataBound Event  
        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            //Checking the RowType of the Row  
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                LinkButton lnkBtn = (LinkButton)e.Row.FindControl("lnkOut");
                Label lblOut = (Label)e.Row.FindControl("lblOut");

                //if ((e.Row.Cells[10].Text) != "")
                if (lblOut.Text != "")
                {
                    lblOut.Visible = true;
                    lnkBtn.Visible = false;
                }
                else
                {
                    lblOut.Visible = false;
                    lnkBtn.Visible = true;
                }
            }
        }

        protected void btnSearchVisitor_Click(object sender, EventArgs e)
        {
            Query = "Select * FROM VISITOR WHERE Visit_Date='" + txtDate.Text + "' ORDER BY Visitor_ID DESC ";
            GetAllVisitors(Query);
        }

        protected void btnAllVisitor_Click(object sender, EventArgs e)
        {
            Query = "Select * FROM VISITOR ORDER BY Visitor_ID DESC ";
            GetAllVisitors(Query);
        }

        protected void btnWithoutLogOut_Click(object sender, EventArgs e)
        {
            Query = "Select * FROM VISITOR WHERE Out_Time IS NULL  ORDER BY Visitor_ID DESC ";
            GetAllVisitors(Query);
        }

        protected void btnAllLogout_Click(object sender, EventArgs e)
        {
            Query = "Select * FROM VISITOR WHERE Out_Time <> '' ORDER BY Visitor_ID DESC ";
            GetAllVisitors(Query);
        }
    }
}