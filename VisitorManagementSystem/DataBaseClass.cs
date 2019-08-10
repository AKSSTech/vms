using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace VisitorManagementSystem
{
    public class DataBaseClass
    {
        SqlDataAdapter da;
        SqlConnection con;
        SqlCommand cmd = new SqlCommand();
        DataSet ds = new DataSet();
        DataTable dt = new DataTable();
        //string connectionstring = @"Data Source=DELL7440\SQLEXPRESS;Initial Catalog=VisitorManagementSystem;Integrated Security=True";
        string connectionstring = @"Data Source=DELL7440\SQLEXPRESS;Initial Catalog=VisitorManagementSystem;User ID=test;Password=test";
        public DataBaseClass()
        {
            //
            // TODO: Add constructor logic here
            //
        }

        public void ConnectDataBaseToInsert(string Query)
        {
            con = new SqlConnection(connectionstring);
            cmd.CommandText = Query;
            cmd.Connection = con;
            da = new SqlDataAdapter(cmd);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

        }
        public DataSet ConnectDataBaseReturnDS(string Query)
        {
            ds = new DataSet();
            // con = new SqlConnection(@"Data Source=(LocalDb)\MSSQLLocalDB; Initial Catalog=VisitorManagementSystem; UID=vms; password=vms");
            con = new SqlConnection(connectionstring);
            cmd.CommandText = Query;
            cmd.Connection = con;
            da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            return ds;
        }
        public DataTable ConnectDataBaseReturnDT(string Query)
        {
            dt = new DataTable();
           // con = new SqlConnection(@"Data Source=(LocalDb)\MSSQLLocalDB; Initial Catalog=VisitorManagementSystem; UID=vms; password=vms");
            con = new SqlConnection(connectionstring);
            cmd.CommandText = Query;
            cmd.Connection = con;
            da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            return dt;
        }

    }
}