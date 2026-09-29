using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication2
{
    public partial class Register_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)

        {
            if (!rbMale.Checked && !rbFemale.Checked)
            {
                // This registers a standard web browser alert pop-up
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Please select your gender.');", true);
                return;
            }

            //string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=E:\\ASP.NET\\WebApplication2\\App_Data\\Database1.mdf;Integrated Security=True";
            //SqlConnection con = new SqlConnection(connectionString);
            ////string query = "INSERT INTO Register values('"+Nametxt.Text+ "','"+Pwdtxt.Text+"','"+Cnfmptxt.Text+ "','"+Emailtxt.Text+ "','"+Contecttxt.Text+"')";
            ////SqlCommand cmd = new SqlCommand(query,con);

            //con.Open();
            //string query = "INSERT INTO Register Values(@n,@p,@c,@e,@c1)";
            //SqlCommand cmd = new SqlCommand(query, con);
            //cmd.Parameters.AddWithValue("@n", Nametxt.Text);
            //cmd.Parameters.AddWithValue("@p", Pwdtxt.Text);
            //cmd.Parameters.AddWithValue("@c", Cnfmptxt.Text);
            //cmd.Parameters.AddWithValue("@e", Emailtxt.Text);
            //cmd.Parameters.AddWithValue("@c1", Contecttxt.Text);

            //cmd.ExecuteNonQuery();
            //Response.Write("<script>alert('Data Inserted Successfully...');</script>");

            //con.Close();
        }

        protected void Nametxt0_TextChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (!rbMale.Checked || !rbFemale.Checked)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Please select your gender.');", true);
                return;
            }

            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=E:\\ASP.NET\\WebApplication2\\App_Data\\Database1.mdf;Integrated Security=True";
            SqlConnection con = new SqlConnection(connectionString);
            

            con.Open();
            string query = "INSERT INTO Student Values(@n,@p,@c,@e,@c1)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@n", txtName.Text);
            cmd.Parameters.AddWithValue("@p", txtBranch.Text);
            cmd.Parameters.AddWithValue("@c", txtSem.Text);
            cmd.Parameters.AddWithValue("@e", ddlCity.Text);
            cmd.Parameters.AddWithValue("@c1", Contecttxt.Text);

            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Data Inserted Successfully...');</script>");

            con.Close();
        }

        protected void txtBranch_TextChanged(object sender, EventArgs e)
        {

        }
    }
}