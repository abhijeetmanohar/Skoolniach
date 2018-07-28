using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection c = new SqlConnection("Data Source= LAPTOP-7J5EIHM9\\ABHINAV; Initial Catalog=Skoolniach; User Id=sa; Password=Abc@123");
    protected void Page_Load(object sender, EventArgs e)
    {try
        {
        txtAddSub.Style["BACKGROUND-COLOR"] = "rgba(207, 208, 57, 0.30)"; }
        catch (Exception ex)
        {
            lblError.Text = "Something went wrong";
        }
    }
    protected void btnAddSub_Click(object sender, EventArgs e)
    {
        Guid EMPID = Guid.NewGuid();
        try
        {
            SqlCommand cmd = new SqlCommand("insert into Subject values('" + EMPID + "','" + txtAddSub.Text + "')", c);

            c.Open();
            int i = cmd.ExecuteNonQuery();
            if (i != 0)
            {
                lblASMsgs.Text = "Data saved";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "HideLabel();", true);
            }
            else
            {
                lblASMsgs.Text = "Error while saving data";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "HideLabel();", true);
            }
            GridView1.DataBind();
            c.Close();
            txtAddSub.Text = "";
        }
        catch (Exception e1)
        {
            lblASMsgs.Text = e1.Message;
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "HideLabel();", true);
        }

    }
    protected void btnBack_Click(object sender, EventArgs e)
    {
        try{
        Response.Redirect("~/admin/Dashboard.aspx"); }
        catch (Exception ex)
        {
            lblError.Text = "Something went wrong";
        }
    }
}