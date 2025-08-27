using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Services.Description;
using System.Windows;
using System.Configuration;

namespace DanaSolution
{
    public partial class contact: System.Web.UI.Page
    {

       
        protected void Button1_Click(object sender, EventArgs e)
        {
           
            

            try
            {

                //  SqlConnection cn = new SqlConnection("Data Source=(localdb)\\ProjectModels;Initial Catalog=DanaDental;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False ");
                // SqlConnection cn = new SqlConnection("Data Source=(localdb)\\ProjectModels;Initial Catalog=DanaDent;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
                SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringDB"].ToString());
                if (cn.State == ConnectionState.Open)
                {
                    cn.Close();
                }
                cn.Open();
                string sSQL = "insert into contact(Name,Phonenumber,Emailaddress,Message) values(@Name,@Phonenumber,@Emailaddress,@Message)";
                SqlCommand cmd = new SqlCommand(sSQL, cn);

                SqlParameter UserName = new SqlParameter("@Name", SqlDbType.VarChar, 50);
                UserName.Value = TextBox1.Text.ToString();
                cmd.Parameters.Add(UserName);

                SqlParameter phonenumber = new SqlParameter("@Phonenumber", SqlDbType.Int);
                phonenumber.Value = TextBox2.Text.ToString();
                cmd.Parameters.Add(phonenumber);

                SqlParameter emailaddress = new SqlParameter("@Emailaddress", SqlDbType.VarChar, 50);
                emailaddress.Value = TextBox3.Text.ToString();
                cmd.Parameters.Add(emailaddress);

                SqlParameter message = new SqlParameter("@Message", SqlDbType.VarChar, 175);
            // message.Value = TextBox4.Text.ToString();
            message.Value = Request.Form["textarea1"].ToString();
               // message.Value = textarea1.InnerText;
            cmd.Parameters.Add(message);


                int temp = 0;
                temp = cmd.ExecuteNonQuery();

                if (temp > 0)
                {
                    cn.Close();
                
                LblMsg.Text = "Your Message successfully sent... ";
                    LblMsg.Visible = true;
                    LblMsg.ForeColor = System.Drawing.Color.Green;
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                textarea1.InnerText = "";

                
              

            }
                else
                {
                    LblMsg.Text = "Failed to send the message... ";
                    LblMsg.Visible = true;
                    LblMsg.ForeColor = System.Drawing.Color.Green;
                   

                }

           }

            catch (Exception ex)
            {
                LblMsg.Text = ex.Message.ToString();

                LblMsg.Text = "Unsuccesfful attempt to connect to the Database";

                
              //Response.Write("Unsucessful attempt");
            }

        }
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}