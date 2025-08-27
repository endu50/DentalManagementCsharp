using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Caching;
using System.Configuration;
using MessageBoxer;


namespace DanaSolution
{
    public partial class changepass : System.Web.UI.Page
    {

        protected void log1_Click(object sendr, EventArgs e)
        {

            try
            {

                //SqlConnection cn = new SqlConnection("Data Source=(localdb)\\ProjectModels;Initial Catalog=DanaDental;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False ");
                // SqlConnection cn = new SqlConnection("Data Source=(localdb)\\ProjectModels;Initial Catalog=DanaDent;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
                SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringDB"].ToString());
                if (cn.State == ConnectionState.Open)
                {
                    cn.Close();
                }
                cn.Open();
                SqlDataReader rs = null;

                string chan = "Update Accountregister set Password=@Password where Password=@passp";
                SqlCommand Scmd = new SqlCommand(chan, cn);
                // SqlParameter user = new SqlParameter("@Userid", SqlDbType.VarChar, 50);
                // user.Value = username1.Text.ToString();
                // Scmd.Parameters.Add(user);
                //
                SqlParameter passPre = new SqlParameter("@passp", SqlDbType.VarChar, 50);
                passPre.Value = passp.Text.ToString();
                Scmd.Parameters.Add(passPre);

                SqlParameter passnew = new SqlParameter("@Password", SqlDbType.VarChar, 50);
                passnew.Value = pass1.Text.ToString();
                Scmd.Parameters.Add(passnew);
                // SqlParameter passnew = new SqlParameter("@Password", SqlDbType.VarChar, 50);
                //   passnew.Value = pass1.Text.ToString();
                //  Scmd.Parameters.Add(passnew);
                int temp = 0;
                temp = Scmd.ExecuteNonQuery();
                if (temp > 0)
                {

                    label1.Text = " password Changed";
                    label1.Visible = true;
                    username1.Text = "";
                    passp.Text = "";
                }
                else
                {
                    label1.Text = "Incorrect Password ";
                    label1.Visible = true;
                }


            }
            catch (Exception ex)
            {
                label1.Text = ex.Message;
                 //MessageBoxer.ShowMessage.Notification("!!!Unsuccesfful attempt to connect to the Database");
            }
        } 
        protected void Page_Load(object sender,EventArgs e)
        {
            if (!this.IsPostBack)
            {

                if (Session["Userid"] != null)
                {
                    string Name = Application["Name"].ToString();

                    String user = Session.SessionID;
                    //string Name = Application["Name"].ToString();
                    username1.Text = Name;

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