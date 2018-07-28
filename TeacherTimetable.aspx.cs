using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            Panel2.Visible = false;
            Panel3.Visible = false;
            Panel4.Visible = false;
            Panel5.Visible = false;
            Panel6.Visible = false;
        }
        catch (Exception ex)
        {
            lblError.Text = "Something went wrong";
        }
    }
    protected void btnBack_Click(object sender, EventArgs e)
    {
        try
        {
            Response.Redirect("~/Login.aspx");
        }
        catch (Exception ex)
        {
            lblError.Text = "Something went wrong";
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            if (ddlDay.SelectedValue == "Monday")
            {

                Panel2.Visible = true;

            }
            if (ddlDay.SelectedValue == "Tuesday")
            {

                Panel3.Visible = true;

            }
            if (ddlDay.SelectedValue == "Wednesday")
            {

                Panel4.Visible = true;

            }
            if (ddlDay.SelectedValue == "Thursday")
            {

                Panel5.Visible = true;

            }
            if (ddlDay.SelectedValue == "Friday")
            {

                Panel6.Visible = true;

            }
        }
        catch (Exception ex)
        {
            lblError.Text = "Something went wrong";
        }
    }
}