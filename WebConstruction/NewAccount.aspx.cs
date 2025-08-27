
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;
//using System.Windows.Controls;
using static System.Net.WebRequestMethods;
using System.Drawing;
using System.Runtime.Remoting.Contexts;
using System.Configuration;
using System.Web.Security;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.Menu;

namespace DanaSolution
{
    public partial class registerAccount : System.Web.UI.Page
    {

       protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //DropDownList1.Text = DropDownList1.SelectedItem.Text;
            DropDownList1.SelectedValue = DropDownList1.SelectedItem.Value;
        }

        protected void Createbtn_Click(object sender, EventArgs e)
        {
            try
             {
        //  SqlConnection cn = new SqlConnection("Data Source=(localdb)\\ProjectModels;Initial Catalog=DanaDent;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
                SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringDB"].ToString());
                //SqlConnection cn = new SqlConnection("Data Source=(localdb)\\ProjectModels;Initial Catalog=DanaDental;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
                if (cn.State == ConnectionState.Open)
            {
                cn.Close();
            }
            cn.Open();
            string RSql = "insert into Accountregister(Yname,Yemail,Userid,roles,Password) values(@Yname,@Yemail,@Userid,@roles,@Password)";
            SqlCommand scmd = new SqlCommand(RSql, cn);
            SqlParameter username = new SqlParameter("@Yname", SqlDbType.VarChar, 50);
            username.Value = txtName.Text.ToString();
            scmd.Parameters.Add(username);
            SqlParameter emailAdd = new SqlParameter("@Yemail", SqlDbType.VarChar, 50);
            emailAdd.Value = txtEmail.Text.ToString();
            scmd.Parameters.Add(emailAdd);
            SqlParameter userid = new SqlParameter("@Userid", SqlDbType.VarChar, 50);
                userid.Value = txtUserID.Text.ToString();
                scmd.Parameters.Add(userid);
            SqlParameter role = new SqlParameter("@roles", SqlDbType.VarChar, 20);
                role.Value = DropDownList1.SelectedItem.Text;
                scmd.Parameters.Add(role);
                SqlParameter pass = new SqlParameter("@Password", SqlDbType.VarChar, 50);
                pass.Value = txtPassword.Text.ToString();
                scmd.Parameters.Add(pass);
               // SqlParameter conpass = new SqlParameter("@ConfirmPassword", SqlDbType.VarChar, 50);
               // conpass.Value = txtConfirmPass.Text.ToString();
              //  scmd.Parameters.Add(conpass);

                int temp = 0;
                temp = scmd.ExecuteNonQuery();
                if (temp > 0)
                {
                    cn.Close();
                    LblMsg1.Text = "New Account registerd successfully... ";
                    LblMsg1.Visible = true;
                    LblMsg1.ForeColor = System.Drawing.Color.Green;
                txtName.Text = "";
                txtEmail.Text = "";
                txtUserID.Text = "";
                     DropDownList1.SelectedIndex = 0;
                    //DropDownList1.Items.Insert(0, new ListItem("", ""));
                    //  DropDownList1.Items.Clear();
                    //Page_Load(sender, e);


                }
                else
                {
                    LblMsg1.Text = "!!!! Not successful Account Registration... ";
                    LblMsg1.Visible = true;
                    LblMsg1.ForeColor = System.Drawing.Color.Green;
                }

           }
           catch (Exception ex)
           {
                LblMsg1.Text = "exception" + ex.Message;
                LblMsg1.Visible = true;
                LblMsg1.ForeColor = System.Drawing.Color.Green;

            }

        

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {

                if (Session["Userid"] != null)
                {
                    string Name = Application["Name"].ToString();

                    String user = Session.SessionID;
                   
                    //  Createbtn_Click(sender, e);
                    /*    try
                        {
                            //  SqlConnection cn = new SqlConnection("Data Source=(localdb)\\ProjectModels;Initial Catalog=DanaDent;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
                            SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringDB"].ToString());
                            //SqlConnection cn = new SqlConnection("Data Source=(localdb)\\ProjectModels;Initial Catalog=DanaDental;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
                            if (cn.State == ConnectionState.Open)
                            {
                                cn.Close();
                            }
                            cn.Open();
                            string drop = "select roles from Accountregister GROUP BY roles";
                            // String pass = "select Password from Accountregister";
                            SqlCommand Scmd = new SqlCommand(drop, cn);
                            DropDownList1.DataSource = Scmd.ExecuteReader();
                            DropDownList1.DataTextField = "roles";
                            //DropDownList1.DataValueField = "Userid";
                            DropDownList1.DataBind();
                            cn.Close();

                        }

                        catch (Exception ex)
                        {
                            LblMsg1.Text = "exception" + ex.Message;
                            LblMsg1.Visible = true;
                            LblMsg1.ForeColor = System.Drawing.Color.Green;

                        }
                   */
                }

                else
                    {

                        Response.Redirect("login.aspx");
                    }
                // DropDownList1.Items.Insert(0, new ListItem("", ""));
               
                }
            }

    }
}