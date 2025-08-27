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
using System.Windows.Forms;
using System.Runtime.InteropServices;
using System.Diagnostics.Eventing.Reader;

namespace DanaSolution
{
    public partial class Newcustom : System.Web.UI.Page
    {

        protected void search_Click(object sender, EventArgs e)
        {



            try
            {
                SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringDB"].ToString());
                if (cn.State == ConnectionState.Open)
                {
                    cn.Close();
                }
                cn.Open();
                string in1 = "Select Name,Phonenumber,age,sex,Emailaddress,Message from contact  where Phonenumber=@Phonenumber";
                SqlCommand cmd = new SqlCommand(in1, cn);
                //SqlParameter accept = new SqlParameter("@Accept", SqlDbType.VarChar, 50);
                // accept.Value = textbox1.Text.ToString();
                // cmd.Parameters.Add(accept);
                SqlParameter phonec = new SqlParameter("@Phonenumber", SqlDbType.Int);
                phonec.Value = searchbox.Text.ToString();
                cmd.Parameters.Add(phonec);
                SqlDataReader reader = cmd.ExecuteReader();
                if(reader.HasRows)
                {
                    while (reader.Read())
                    {
                        String Name = reader["Name"].ToString();
                        int Phonenumber = Convert.ToInt32(reader["Phonenumber"]);
                        int age = Convert.ToInt32(reader["age"]);
                        String sex = reader["sex"].ToString();
                        String Emailaddress = reader["Emailaddress"].ToString();
                        String Message = reader["Message"].ToString();
                        TextBox1.Text = Name;
                        TextBox4.Text = sex;
                        TextBox5.Text = age.ToString();
                        TextBox2.Text = Phonenumber.ToString();
                        TextBox3.Text = Emailaddress;
                        textarea1.InnerText = Message;

                        LblMsg.Text = "Data is displayed On Table Form ";
                        LblMsg.Visible = true;

                    }
                    
                }
                else
                {
                    LblMsg.Text = "No Registered customer Data ";
                    LblMsg.Visible = true;
                }

            }
     catch (Exception ex)
            {
                
                
                LblMsg.Visible = true;
                LblMsg.Text = ex.Message.ToString();
               // LblMsg.Text = "Unsuccesfful attempt to connect to the Database";


                //Response.Write("Unsucessful attempt");
            }
        }

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
                string sSQL = "insert into contact(Name,sex,age,price,Phonenumber,Emailaddress,DateNow,RegisterdBy,Message) values(@Name,@sex,@age,@price,@Phonenumber,@Emailaddress,@DateNow,@RegisterdBy,@Message)";
                SqlCommand cmd = new SqlCommand(sSQL, cn);

                SqlParameter UserName = new SqlParameter("@Name", SqlDbType.VarChar, 50);
                UserName.Value = TextBox1.Text.ToString();
                cmd.Parameters.Add(UserName);
                SqlParameter sex = new SqlParameter("@sex", SqlDbType.VarChar, 5);
                sex.Value = gender.Text.ToString();
                cmd.Parameters.Add(sex);
                SqlParameter age = new SqlParameter("@age", SqlDbType.Int);
                age.Value = TextBox5.Text.ToString();
                cmd.Parameters.Add(age);
                SqlParameter price = new SqlParameter("@price", SqlDbType.Int);
                price.Value = TextBox6.Text.ToString();
                cmd.Parameters.Add(price);
                SqlParameter phonenumber = new SqlParameter("@Phonenumber", SqlDbType.Int);
                phonenumber.Value = TextBox2.Text.ToString();
                cmd.Parameters.Add(phonenumber);

                SqlParameter emailaddress = new SqlParameter("@Emailaddress", SqlDbType.VarChar, 50);
                emailaddress.Value = TextBox3.Text.ToString();
                cmd.Parameters.Add(emailaddress);
                SqlParameter DateT = new SqlParameter("@DateNow", SqlDbType.DateTime);
                DateT.Value=TextBox7.Text.ToString();
                cmd.Parameters.Add(DateT);
                SqlParameter reg = new SqlParameter("@RegisterdBy", SqlDbType.VarChar,20);
                reg.Value = TextBox8.Text.ToString();
                cmd.Parameters.Add(reg);
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

                    LblMsg.Text = "You Sucessfuly Register Customer ";
                    LblMsg.Visible = true;
                    LblMsg.ForeColor = System.Drawing.Color.Green;
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                    gender.SelectedIndex = 0;
                    TextBox5.Text = "";
                    TextBox6.Text = "";
                    TextBox7.Text = "";
                    textarea1.InnerText = "";




                }
                else
                {
                    LblMsg.Text = "Failed to Register the Customer... ";
                    LblMsg.Visible = true;
                    LblMsg.ForeColor = System.Drawing.Color.Green;


                }

            }

            catch (Exception ex)
            {
                LblMsg.Text = ex.Message.ToString();
                LblMsg.Visible = true;
                LblMsg.ForeColor = System.Drawing.Color.Green;

                // LblMsg.Text = "Unsuccesfful attempt to connect to the Database";


                //Response.Write("Unsucessful attempt");
            }

        }
        protected void gender_SelectedIndexChanged(object sender, EventArgs e)
        {
            // gender.SelectedValue = gender.SelectedItem.Text;
            gender.SelectedValue = gender.SelectedItem.Value;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            
          
            
            if (!this.IsPostBack)
            {

                if (Session["Userid"] != null)
                {
                    string Name = Application["Name"].ToString();

                    String user = Session.SessionID;

                    TextBox7.Text = DateTime.Now.ToString();
                    TextBox8.Text = Name.ToString();
                    //string Name = Application["Name"].ToString();


                    //string use1 = Session["Userid"].ToString();
                    // Response.Write("hi" + Name);
                    // String UU = Session["Userid"].ToString();

                    //  Response.Write("<span style= 'font-size:20px;color:red;left:1200pxpx;position:absolute'>................................................................................................................................................................................................................................................................................................................................................... /<span>" + "Welcome:-" + Session["Userid"] + ":" + Name);

                    //  Response.Write("<span id='spanq' style='height:16px;width:120px;Z-INDEX: 102; LEFT: 1200px; POSITION: absolute; TOP: 102px;font-size:20px;color:red'>Welcome: </span>");
                    //Response.Write("..............................................................................................................................................................................................................................................................................................................................................................................................................................................................Welcome:-" + UU);

                }
                else
                {

                    Response.Redirect("login.aspx");
                }


            }

        }
    }
}