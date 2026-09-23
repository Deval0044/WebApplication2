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
            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=E:\\ASP.NET\\WebApplication2\\App_Data\\Database1.mdf;Integrated Security=True";
            SqlConnection con = new SqlConnection(connectionString);
            string query = "INSERT INTO Register values('"+Nametxt.Text+ "','"+Pwdtxt.Text+"','"+Cnfmptxt.Text+ "','"+Emailtxt.Text+ "','"+Contecttxt.Text+"')";
            //SqlCommand cmd = new SqlCommand("INSERT INTO Register values(name, password, conform password, email,content)");
            SqlCommand cmd = new SqlCommand(query,con);

            con.Open();

            //cmd.Parameters.AddWithValue("name", Nametxt);
            //cmd.Parameters.AddWithValue("password", Pwdtxt);
            //cmd.Parameters.AddWithValue("conform password", Cnfmptxt);
            //cmd.Parameters.AddWithValue("email", Emailtxt);
            //cmd.Parameters.AddWithValue("content", Contecttxt);

            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Data Inserted Successfully...');</script>");

            con.Close();
        }
    }
}