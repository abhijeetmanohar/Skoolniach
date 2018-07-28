using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Security;

public partial class _Default : System.Web.UI.Page
{
SqlConnection c = new SqlConnection("Data Source= HOME\\ABHINAV; Initial Catalog=DpsTeacherDB; User Id=sa; Password=Abc@123");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnBack_Click(object sender, EventArgs e)
    {

            Response.Redirect("~/admin/Dashboard.aspx");
    }
}