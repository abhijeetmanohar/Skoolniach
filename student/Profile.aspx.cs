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
        this.BindRepeater();
       
    }
    private void BindRepeater()
    {
        c.Open();
        SqlCommand cmd101 = new SqlCommand("Select Name,Gender,Class,Father,House,Admission_Num from Students where Admission_Num='" + Session["user"].ToString() + "' ", c);
        SqlDataReader dr101;
        dr101 = cmd101.ExecuteReader();
        while (dr101.Read())
        {

            lblName.Text = dr101["Name"].ToString();
            lblAN.Text = dr101["Admission_Num"].ToString();
            lblGender.Text = dr101["Gender"].ToString();
            lblClass.Text = dr101["Class"].ToString();
            lblFatherName.Text = dr101["Father"].ToString();
            lblHouse.Text = dr101["House"].ToString();



        }
        dr101.Close();

    }
}