
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net.Mail;


public partial class student_ScoreCard : System.Web.UI.Page
{
    String b;
    SqlConnection c = new SqlConnection("Data Source= LAPTOP-7J5EIHM9\\ABHINAV; Initial Catalog=Skoolniach; User Id=sa; Password=Abc@123");
    protected void Page_Load(object sender, EventArgs e)
    { 
         try
        {
            if (!IsPostBack)
            {
                c.Open();
                SqlDataAdapter adp = new SqlDataAdapter("Select ID from Quiz where Teacher= '" + Session["user"].ToString() + "' order by QuizName asc", c);
                DataSet ds = new DataSet();
                adp.Fill(ds);

                ddlSB.DataSource = ds;
                ddlSB.DataTextField = "ID";
                ddlSB.DataValueField = "ID";
                ddlSB.DataBind();
                ddlSB.Items.Insert(0, new ListItem("--Select Quiz Name--", " "));

                c.Close();
            }
        }
         catch (Exception ex)
         {
             lblError.Text = ex.Message;
         }
    }
  
}