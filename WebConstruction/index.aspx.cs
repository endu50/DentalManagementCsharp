using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Services.Description;
using System.Windows;
//using System.Windows.Controls;
using System.Configuration;

namespace DanaSolution
{
    public partial class index : System.Web.UI.Page
    {
        protected void Appoint_Click(object sender,EventArgs e)
        {
            try
            {
                // SqlConnection cn = new SqlConnection("Data Source=(localdb)\\ProjectModels;Initial Catalog=DanaDental;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
              //SqlConnection cn = new SqlConnection("Data Source=(localdb)\\ProjectModels;Initial Catalog=DanaDent;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
                SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringDB"].ToString());
                if (cn.State==ConnectionState.Open)
                {
                    cn.Close();
                }
                cn.Open();
                string Ssql= "insert into Appoint(name,Mobilenumber,ADate,ATime) values (@name,@Mobilenumber,@ADate,@ATime)";
                SqlCommand Scmd = new SqlCommand(Ssql, cn);
               
                SqlParameter Uname = new SqlParameter("@name", SqlDbType.VarChar, 50);
                Uname.Value = TextBox11.Text.ToString();
                Scmd.Parameters.Add(Uname);

                SqlParameter Mobilenum = new SqlParameter("@Mobilenumber", SqlDbType.Int);
                Mobilenum.Value = TextBox12.Text.ToString();
                Scmd.Parameters.Add(Mobilenum);

                SqlParameter Adate = new SqlParameter("@ADate", SqlDbType.Date);
                Adate.Value = ADate.Text.ToString();
                Scmd.Parameters.Add(Adate);

                SqlParameter Atime = new SqlParameter("@ATime", SqlDbType.Time);
                Atime.Value = ATime.Text.ToString();
                Scmd.Parameters.Add(Atime);
                int temp = 0;
                temp = Scmd.ExecuteNonQuery();
                
                if(temp > 0)
                {
                    cn.Close();
                    
                    AppointL.Text= "New Appointment registered successfully... ";
                    AppointL.Visible = true;
                    AppointL.ForeColor = System.Drawing.Color.Green;
                    TextBox11.Text = "";
                    TextBox12.Text = "";
                    ADate.Text = "";
                    ATime.Text = "";
                   




                }
                else
                {
                    AppointL.Text = "Unsuccesful registeration... ";
                }


            }
            catch(Exception  ex)
            {
                AppointL.Text = ex.Message;
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