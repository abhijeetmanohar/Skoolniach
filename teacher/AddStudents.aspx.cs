using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net.Mail;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.IO;
using System.Drawing.Imaging;
using System.Drawing;

public partial class teacher_Default : System.Web.UI.Page
{
    SqlConnection c = new SqlConnection("Data Source= LAPTOP-7J5EIHM9\\ABHINAV; Initial Catalog=Skoolniach; User Id=sa; Password=Abc@123");
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                Panel1.Visible = false;

                c.Open();
                SqlCommand cmd = new SqlCommand("select ZeroPeriod from Monday where Id='" + Session["user"].ToString() + "'", c);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    if (dr["ZeroPeriod"].ToString() == "Free")
                    {
                        lblMsg.Text = "You're not assigned as a class teacher.";
                    }
                    else
                    {
                        lblClassMsg.Text = "You are a class teacher of";
                        lblClass.Text = dr["ZeroPeriod"].ToString();
                        Panel1.Visible = true;
                    }

                }
                c.Close();
                //c.Open();
                //SqlDataAdapter adp = new SqlDataAdapter("Select * from Classes where Class NOT IN(Select ZeroPeriod from Monday)  order by Class asc", c);
                //DataSet ds = new DataSet();
                //adp.Fill(ds);

                //ddlClass.DataSource = ds;
                //ddlClass.DataTextField = "Class";
                //ddlClass.DataValueField = "Class";
                //ddlClass.DataBind();
                //ddlClass.Items.Insert(0, new ListItem("--Select Class--", " "));
                
                //c.Close();
            }
        }
        catch (Exception ex)
        {
            lblError.Text = ex.Message;
        }
    }
    private Boolean InsertUpdateData(SqlCommand cmd)
    {
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-7J5EIHM9\\ABHINAV; Initial Catalog=Skoolniach; User Id=sa; Password=Abc@123");
        cmd.CommandType = CommandType.Text;
        cmd.Connection = con;
        try
        {
            con.Open();
            cmd.ExecuteNonQuery();
            return true;
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
            return false;
        }
        finally
        {
            con.Close();
            con.Dispose();
        }
    }
    protected void Save_Click(object sender, EventArgs e)
    {
        try
        {
            c.Open();


            // Read the file and convert it to Byte Array
            string filePath = FileUpload1.PostedFile.FileName;
            string filename = Path.GetFileName(filePath);
            string ext = Path.GetExtension(filename);
            string contenttype = String.Empty;

            //Set the contenttype based on File Extension
            switch (ext)
            {
                case ".doc":
                    contenttype = "application/vnd.ms-word";
                    break;
                case ".docx":
                    contenttype = "application/vnd.ms-word";
                    break;
                case ".xls":
                    contenttype = "application/vnd.ms-excel";
                    break;
                case ".xlsx":
                    contenttype = "application/vnd.ms-excel";
                    break;
                case ".jpg":
                    contenttype = "image/jpg";
                    break;
                case ".png":
                    contenttype = "image/png";
                    break;
                case ".gif":
                    contenttype = "image/gif";
                    break;
                case ".pdf":
                    contenttype = "application/pdf";
                    break;


            }
            if (contenttype != String.Empty)
            {

                Stream fs = FileUpload1.PostedFile.InputStream;
                BinaryReader br = new BinaryReader(fs);
                Byte[] bytes = br.ReadBytes((Int32)fs.Length);

                //insert the file into database
                string strQuery = "insert into ProfilePic(id,Name, ContentType, Data) values (@id,@Name, @ContentType, @Data)";
                SqlCommand cmd = new SqlCommand(strQuery);

                cmd.Parameters.Add("@id", SqlDbType.VarChar).Value = txtAN.Text;
                cmd.Parameters.Add("@Name", SqlDbType.VarChar).Value = filename;
                cmd.Parameters.Add("@ContentType", SqlDbType.VarChar).Value = contenttype;
                cmd.Parameters.Add("@Data", SqlDbType.Binary).Value = bytes;
                InsertUpdateData(cmd);
                lblMessage.ForeColor = System.Drawing.Color.Green;
                lblMessage.Text = "File Uploaded Successfully. ";
            }
            else
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "File format not recognised. Upload Image/Word/PDF/Excel formats";
            }

            SqlCommand cmd0 = new SqlCommand("insert into Students values('" + lblClass.Text + "','" + txtName.Text + "','" + ddlGender.SelectedValue + "','" + txtFather.Text + "','" + txtAN.Text + "','"+ddlHouse.SelectedValue+"')", c);
            SqlCommand cmd1 = new SqlCommand("insert into Login values('" + txtAN.Text + "','" + txtSI.Text + "','Student')", c);
            cmd0.ExecuteNonQuery();
            cmd1.ExecuteNonQuery();
            txtName.Text = "";
            txtFather.Text = "";
            txtAN.Text = "";
            txtSI.Text = "";

            c.Close();
            lblMsg.Text = "Data saved";
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "HideLabel();", true);
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message;
        }

    }
}