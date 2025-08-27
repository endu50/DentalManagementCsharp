

using System;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI.WebControls;
//using System.Data;
//using System.Data.SqlClient;
using System.Configuration;
//using System.Web.Razor.Parser.SyntaxTree;
using MessageBoxer;
using System.Linq;
//using System.Windows.Forms;

namespace DanaSolution

{
    public partial class AdminAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Userid"] != null)
                {

                    String user = Session.SessionID;
                    //String UU = Session["Userid"].ToString();
                    this.AccountList();
                }
                else
                {
                    Response.Redirect("login.aspx");
                }
            }
        }

        private void AccountList()
        {
            // SqlConnection cn = new SqlConnection("Data Source=(localdb)\\ProjectModels;Initial Catalog=DanaDent;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            try
            {
                SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringDB"].ToString());
                if (cn.State == ConnectionState.Open)
                {
                    cn.Close();
                }
                cn.Open();

                String contac = "Select * from Accountregister";
                SqlCommand scmd = new SqlCommand(contac, cn);
                SqlDataAdapter adap = new SqlDataAdapter(scmd);
                DataSet DS = new DataSet();
                adap.Fill(DS);
                //  SqlDataReader adap = scmd.ExecuteReader();

                Repeater1.DataSource = DS;
                Repeater1.DataBind();
            }
            catch (Exception ex)
            {
                lblmessage.Text = ex.Message;
                lblmessage.Visible = true;
                // MessageBoxer.ShowMessage.Notification("!!!Unsuccesfful attempt to connect to the Database");
            }

        }


       
        protected void OnDelete(object sender, EventArgs e)
        {
            // LinkButton1.Attributes.Add("onclick", "return confirm('Do you want to delete the record ? ');\");
            // LinkButton1.Attributes.Add();
            RepeaterItem item = (sender as LinkButton).Parent as RepeaterItem;

            // foreach (RepeaterItem item in Repeater1.Items)
            // {
            //string name = (item.FindControl("Label2") as Label).Text.Trim();

            string del = (item.FindControl("name") as Label).Text.Trim();
            Label UserID = (item.FindControl("Label2") as Label);
            string ID = (item.FindControl("Label2") as Label).Text.Trim();
            // TextBox textbox1 = (item.FindControl("textbox1") as TextBox);
            //  SqlConnection cn = new SqlConnection("Data Source=(localdb)\\ProjectModels;Initial Catalog=DanaDent;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            try
            {
                SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringDB"].ToString());
                string in1 = "Delete from Accountregister  where Userid=@Userid";
                SqlCommand cmd = new SqlCommand(in1, cn);
                //SqlParameter accept = new SqlParameter("@Accept", SqlDbType.VarChar, 50);
                // accept.Value = textbox1.Text.ToString();
                // cmd.Parameters.Add(accept);
                SqlParameter ID1 = new SqlParameter("@Userid", SqlDbType.VarChar, 50);
                ID1.Value = UserID.Text.ToString();
                cmd.Parameters.Add(ID1);
                // cmd.Parameters.Add("@Accept", SqlDbType.VarChar,50).Value = textbox1.Text;
                // cmd.Parameters.AddWithValue("@Accept", name1);
                cn.Open();
                cmd.ExecuteNonQuery();

                cn.Close();
                lblmessage.Text = "You have Deleted User:" + del;
                lblmessage.Visible = true;
                // ShowMessage.Notification("You have Deleted User:" + del);
                AccountList();
                return;
                // Repeater1.DataBind();
                //   }


            }
            catch (Exception ex)
            {
                lblmessage.Text = ex.Message; ;
                lblmessage.Visible = true;
                //  MessageBoxer.ShowMessage.Notification("!!!Unsuccesfful attempt to connect to the Database");
            }
        }
    }
}
    