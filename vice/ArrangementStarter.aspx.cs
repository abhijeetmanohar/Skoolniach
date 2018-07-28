using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Security;

public partial class vice_ArrangementStarter : System.Web.UI.Page
{
    SqlConnection c = new SqlConnection("Data Source= LAPTOP-7J5EIHM9\\ABHINAV; Initial Catalog=Skoolniach; User Id=sa; Password=Abc@123");
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            c.Open();
            SqlCommand cmd = new SqlCommand("Select * from Dates ", c);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                string a = dr["Date"].ToString();
                string todaydate = DateTime.Now.ToString("dd/MM/yyyy");
                DateTime dtSuppliedDate = DateTime.Parse(a);

                if (dtSuppliedDate.Subtract(DateTime.Today).Days == 0)
                {
                    Response.Redirect("~/vice/Arrangement.aspx");
                }
            }

            c.Close();
        }
        catch (Exception ex)
        {
            lblError.Text = ex.Message;
        }
    }
    protected void btnNext_Click(object sender, EventArgs e)
    {
        try
        {
            c.Open();
            String a = DateTime.Today.Month.ToString();
            SqlCommand cmd0 = new SqlCommand("Update No_Of_Arrangement  set Day = '0' ", c);
            cmd0.ExecuteNonQuery();
            SqlCommand cmd = new SqlCommand("Update Monday set Attendance= 'P' ", c);
            cmd.ExecuteNonQuery();
            SqlCommand cmd1 = new SqlCommand("Update Tuesday set Attendance= 'P' ", c);
            cmd1.ExecuteNonQuery();
            SqlCommand cmd2 = new SqlCommand("Update Wednesday set Attendance= 'P' ", c);
            cmd2.ExecuteNonQuery();
            SqlCommand cmd3 = new SqlCommand("Update Thursday set Attendance= 'P' ", c);
            cmd3.ExecuteNonQuery();
            SqlCommand cmd4 = new SqlCommand("Update Friday set Attendance= 'P' ", c);
            cmd4.ExecuteNonQuery();
            SqlCommand cmd5 = new SqlCommand("Update Dates set  Date='" + DateTime.Today.ToShortDateString() + "' ", c);
            cmd5.ExecuteNonQuery();
            if (DateTime.Now.ToString("dddddddddd") == "Monday")
            {
               
                SqlCommand cmd6 = new SqlCommand("Truncate table Arrangement", c);
                SqlCommand cmd7 = new SqlCommand("Update No_Of_Arrangement  set Week = '0' ", c);

                cmd6.ExecuteNonQuery();
                cmd7.ExecuteNonQuery();

              
            }
            Response.Redirect("~/vice/Arrangement.aspx");
            c.Close();
            
        }
        catch (Exception ex)
        {
            lblError.Text = ex.Message;
        }
    }
}