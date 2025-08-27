using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Caching;
using System.Web.Security;
//using System.Windows.Controls;
using System.Windows;
//using System.Windows.Forms;
//using MessageBox = System.Windows.MessageBox;
using MessageBoxer;
using System.Drawing;
using System.Runtime.Remoting.Contexts;
using System.Configuration;
//using static System.Collections.Specialized.BitVector32;
//using static System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel;

namespace DanaSolution
{
    //static public String visusername;
    public partial class login : System.Web.UI.Page
    {
        static public String visusername;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
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
                      string drop = "select roles from Accountregister GROUP BY roles";
                      // String pass = "select Password from Accountregister";
                      SqlCommand Scmd = new SqlCommand(drop, cn);
                      Role.DataSource = Scmd.ExecuteReader();
                      Role.DataTextField = "roles";
                      //DropDownList1.DataValueField = "Userid";
                      Role.DataBind();
                      cn.Close();

                  }

                  catch (Exception ex)
                  {
                      label1.Text = "exception" + ex.Message;
                      label1.Visible = true;
                      label1.ForeColor = System.Drawing.Color.Green;

                  } 

                Role.Items.Insert(0, new ListItem("Select Role", "0"));
            }
        }
        
      /*  protected void Role_SelectedIndexChanged(object sender, EventArgs e)
        {
            Role.SelectedValue = Role.SelectedItem.Value;
        }*/
        protected void log_Click(object sender, EventArgs e)
        {
           // Role.Items.Insert(0, new ListItem("Select Role", "0"));
            try
            {
                //SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringDB"].ToString());
                //qlConnection cn = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=master;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
                SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringDB"].ToString());
                //Data Source = (localdb)\MSSQLLocalDB; Initial Catalog = master; Integrated Security = True; Connect Timeout = 30; Encrypt = False; Trust Server Certificate = False; ApplicationIntent = ReadWrite; MultiSubnetFailover = False
                if (cn.State == ConnectionState.Open)
                {
                    cn.Close();
                }
                cn.Open();
                // Session["username"] = username.Text.ToString();
                string user = "select [Userid],[Password] as Passw,[roles] from Accountregister";
                // String pass = "select Password from Accountregister";
                SqlCommand Scmd = new SqlCommand(user, cn);
                SqlParameter sp = new SqlParameter("@Userid", SqlDbType.VarChar, 50);
                sp.Value = username.Text.ToString();
                Scmd.Parameters.Add(sp);
                // SqlParameter sp1 = new SqlParameter("@Password", SqlDbType.VarChar, 50);
                // sp1.Value = username.Text.ToString();
                // Scmd.Parameters.Add(sp1);
                //  Scmd.Connection = cn;
                SqlDataReader re = null;

                re = Scmd.ExecuteReader();

                while (re.Read())
                {


                    if (re["Passw"].ToString() == pass.Text.ToString() && re["Userid"].ToString() == username.Text.ToString())
                    {
                       //c= username.Text;
                        //Session.add("Userid") = username.Text;
                        Session.Add("Userid", username.Text);
                        visusername = Session["Userid"].ToString();
                        Application["Name"] = Session["Userid"].ToString();

                        if (re["roles"].ToString() == Role.Text.ToString() && Role.Text.ToString()=="Admin")
                        {
                            Response.Redirect("adminindex.aspx");
                        }
                        else if (re["roles"].ToString() == Role.Text.ToString() && Role.Text.ToString()=="Standard")
                        {
                            Response.Redirect("index.aspx");
                        }
                        // Response.Write("selam");
                        //username.Text = Session["Userid"].ToString();
                        //Console.WriteLine("Any String");
                        //Session.RemoveAll();
                        label1.Text = "Successful login";
                        label1.Visible = true;
                    }

                    else
                    {
                        label1.Text = "Incoorect Username or Password Or Roles";
                        label1.Visible = true;
                    }
                }

            }
            catch(Exception ex)
            {
                label1.Text = ex.Message;
                label1.Visible = true;

                //MessageBox.Show("unsuccesfful attempt check user name"+ex);
               // ShowMessage.Notification("This is some text inside+ex");
            }

            
        }


    }
}