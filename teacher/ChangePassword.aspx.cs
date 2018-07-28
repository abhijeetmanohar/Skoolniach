using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class admin_ChangePassword : System.Web.UI.Page
{
    SqlConnection c = new SqlConnection("Data Source= LAPTOP-7J5EIHM9\\ABHINAV; Initial Catalog=Skoolniach; User Id=sa; Password=Abc@123");
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {

                txtUI.Style["BACKGROUND-COLOR"] = "rgba(207, 208, 57, 0.30)";
                txtOP.Style["BACKGROUND-COLOR"] = "rgba(207, 208, 57, 0.30)";
                txtNP.Style["BACKGROUND-COLOR"] = "rgba(207, 208, 57, 0.30)";
                txtCNP.Style["BACKGROUND-COLOR"] = "rgba(207, 208, 57, 0.30)";
            }
        }
        catch (Exception ex)
        {
            lblError.Text = "Something went wrong";
        }
    }
    protected void Save_Click(object sender, EventArgs e)
    {
        try
        {
            c.Open();
            SqlCommand cmd = new SqlCommand("select * from Login where UserId='" + txtUI.Text + "' and Category='user'", c);
            if (txtNP.Text == txtCNP.Text)
            {
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    if (dr["Password"].ToString() == txtOP.Text)
                    {
                        c.Close();
                        c.Open();
                        SqlCommand cmd1 = new SqlCommand("Update Login set Password='" + txtNP.Text + "' where UserId='" + txtUI.Text + "'", c);
                        cmd1.ExecuteNonQuery();
                        lblMsg.Text = "Your new password have been successfully updated.";
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "HideLabel();", true);
                        c.Close();

                    }
                    else
                    {
                        lblMsg.Text = "Invalid User Id or Password entered";
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "HideLabel();", true);

                    }
                }
                else
                {
                    lblMsg.Text = "Invalid User Id or Password entered";
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "HideLabel();", true);
                }


            }
            else
            {
                lblMsg.Text = "Both New password and Confirm new password should match with each other.";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "HideLabel();", true);
            }
            txtUI.Text = "";
        }
        catch (Exception ex)
        {
            lblError.Text = "Something went wrong";
        }
    }
}