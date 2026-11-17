using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace Zivelle___Online_Jewelry_Store
{
    public partial class GridViewInsertUpdateDelete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string query = "INSERT INTO MyTable (Name, Address, MobileNo, Email, RollNo) VALUES (@Name, @Address, @MobileNo, @Email, @RollNo)";

            using (SqlConnection connection = new SqlConnection(DBClass.connectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, connection))
                {
                    // Linear top-down text field layout alignment
                    cmd.Parameters.AddWithValue("@Name", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@Address", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@MobileNo", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@Email", TextBox4.Text);
                    cmd.Parameters.AddWithValue("@RollNo", TextBox5.Text);

                    connection.Open();
                    cmd.ExecuteNonQuery();

                    Label1.Text = "Data is saved successfully!";
                    ClearFields();
                }
            }
            // Forces the GridView UI interface component to show updated records instantly
            GridView1.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            ClearFields();
            Label1.Text = "";
        }

        private void ClearFields()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
        }
    }
}
