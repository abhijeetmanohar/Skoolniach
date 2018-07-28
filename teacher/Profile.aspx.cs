using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class vice_Profile1 : System.Web.UI.Page
{
    SqlConnection c = new SqlConnection("Data Source= LAPTOP-7J5EIHM9\\ABHINAV; Initial Catalog=Skoolniach; User Id=sa; Password=Abc@123");
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (lblZeroPeriod.Text == "Free")
            {
                lblZeroPeriod.Text = "None";
            }
            if (!this.IsPostBack)
            {
                this.BindRepeater();
            }
        }
        catch {
            lblMsg.Text = "Something went wrong...";
        }
    }
    private void BindRepeater()
    {
        c.Open();
        SqlCommand cmd101 = new SqlCommand("Select Id,Name,Initial,Subject,ZeroPeriod from Monday where Id='"+Session["user"].ToString()+ "' ", c);
        SqlDataReader dr101;
        dr101 = cmd101.ExecuteReader();
        while (dr101.Read())
        {

            lblName.Text = dr101["Name"].ToString();
            lblId.Text = dr101["Id"].ToString();
            lblInitial.Text = dr101["Initial"].ToString();
            lblSubject.Text = dr101["Subject"].ToString();
            lblZeroPeriod.Text = dr101["ZeroPeriod"].ToString();



        }
        dr101.Close();

    }
}