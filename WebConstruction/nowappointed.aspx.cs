using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Web.Security;
//using System.Windows.Controls;
//using System.Windows.Forms;
using System.Data.Common;
using System.Security.Cryptography;
using MessageBoxer;
using System.Collections;
using System.Drawing;
using System.Xml.Linq;
using static System.Net.Mime.MediaTypeNames;
//using System.Windows.Forms.DataVisualization.Charting;
//using System.Windows.Documents;
//using static System.Windows.Forms.AxHost;
//using System.Windows.Forms;
//using System.Windows.Controls;
//using System.Windows.Forms;

namespace DanaSolution
{
    public partial class nowappointed : System.Web.UI.Page
    {
        readonly PagedDataSource _pgsource = new PagedDataSource();
        int _firstIndex, _lastIndex;
        private int _pageSize = 10;
        // DataSet ds;
        SqlConnection cn;

        private int CurrentPage
        {
            get
            {
                if (ViewState["CurrentPage"] == null)
                {
                    return 0;
                }
                return ((int)ViewState["CurrentPage"]);
            }
            set
            {
                ViewState["CurrentPage"] = value;
            }
        }
       
        protected void OnSearch(object sender, EventArgs e)
        {
            RepeaterItem item = (sender as LinkButton).Parent as RepeaterItem;

            // foreach (RepeaterItem item in Repeater1.Items)
            // {
           // string name = (item.FindControl("search") as TextBox).Text.Trim();
            TextBox searchdate1 = (item.FindControl("searchdate1") as TextBox);
            // string ID = (item.FindControl("Id") as TextBox).Text.Trim();
            //TextBox textbox1 = (item.FindControl("textbox1") as TextBox);
            //  SqlConnection cn = new SqlConnection("Data Source=(localdb)\\ProjectModels;Initial Catalog=DanaDent;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
          //  try
          //  {
                SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringDB"].ToString());
                string in1 = "Select AppointId,name,Mobilenumber,Adate,Atime,Accept from Appoint  where Adate=@Adate";
                SqlCommand cmd = new SqlCommand(in1, cn);
                //SqlParameter accept = new SqlParameter("@Accept", SqlDbType.VarChar, 50);
                // accept.Value = textbox1.Text.ToString();
                // cmd.Parameters.Add(accept);
                SqlParameter searchdate = new SqlParameter("@Adate", SqlDbType.Date);
                searchdate.Value = searchdate1.Text.ToString();
                cmd.Parameters.Add(searchdate);
                SqlDataAdapter re1 = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                re1.Fill(ds);
                Repeater1.DataSource = ds;
                Repeater1.DataBind();
                // cmd.Parameters.Add("@Accept", SqlDbType.VarChar,50).Value = textbox1.Text;
                // cmd.Parameters.AddWithValue("@Accept", name1);
                cn.Open();
                cmd.ExecuteNonQuery();

                cn.Close();
                // ShowMessage.Notification("Your Search Result Name is:" + name);
                // return;
                //Repeater1.DataBind();
                return;
                //   }
           // }
           // catch (Exception ex)
           // {
               // lblmessage.Text = ex.Message;
               // lblmessage.Visible = true;
                //MessageBoxer.ShowMessage.Notification("!
                //");
          //  }
        }
        //
       
        protected void Page_Load(object sender, EventArgs e)
        {
            // Response.Write("hiiii" + Session["Userid"].ToString());

            if (!this.IsPostBack)
            {
                if (Session["Userid"] != null)
                {

                    String user = Session.SessionID;

                    // String UU = Session["Userid"].ToString();

                    //  Response.Write("<span style= 'font-size:20px;color:red;left:1200pxpx;position:absolute'>....................................................................................................................................................................................................................................................................................................................................................................... /<span>" + "Welcome:-" + Session["Userid"]);

                    //  Response.Write("<span id='spanq' style='height:16px;width:120px;Z-INDEX: 102; LEFT: 1200px; POSITION: absolute; TOP: 102px;font-size:20px;color:red'>Welcome: </span>");
                    //Response.Write("..............................................................................................................................................................................................................................................................................................................................................................................................................................................................Welcome:-" + UU);
                }
                else
                {

                    Response.Redirect("login.aspx");
                }
                //string usrname = Session["Userid"].ToString();
                // Response.Write(usrname);
                /* SqlConnection cn = new SqlConnection("Data Source=(localdb)\\ProjectModels;Initial Catalog=DanaDent;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");

                  if (cn.State == ConnectionState.Open)
                  {
                      cn.Close();
                  }
                  cn.Open();
                  String Abc = "Select * From Appoint ";
                  SqlCommand Scmd = new SqlCommand(Abc, cn);
                  int temp = 0;
                  // SqlDataReader re ;
                  SqlDataAdapter re1 = new SqlDataAdapter(Scmd);
                  DataSet ds = new DataSet();
                  re1.Fill(ds);
                  Repeater1.DataSource = ds;
                  Repeater1.DataBind(); */
                BindDataIntoRepeater();
            

        }



    }
        static DataTable GetDataFromDb()
        {
            //var con = new SqlConnection("Data Source=(localdb)\\ProjectModels;Initial Catalog=DanaDent;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            // try {
            var con = new SqlConnection((ConfigurationManager.ConnectionStrings["ConnectionStringDB"].ToString()));
            con.Open();

            var da = new SqlDataAdapter("Select AppointId,name, Mobilenumber, Adate,Atime,Accept From Appoint", con);
            var dt = new DataTable();
            da.Fill(dt);
            con.Close();
            return dt;
        }

        /* }
         catch(Exception ex)
         {
             MessageBoxer.ShowMessage.Notification("!!!Unsuccesfful attempt to connect to the Database");
         }*/


        private void BindDataIntoRepeater()
        {
            var dt = GetDataFromDb();
            _pgsource.DataSource = dt.DefaultView;
            _pgsource.AllowPaging = true;
            // Number of items to be displayed in the Repeater
            _pgsource.PageSize = _pageSize;
            _pgsource.CurrentPageIndex = CurrentPage;
            // Keep the Total pages in View State
            ViewState["TotalPages"] = _pgsource.PageCount;
            // Example: "Page 1 of 10"
            lblpage.Text = "Page " + (CurrentPage + 1) + " of " + _pgsource.PageCount;
            // Enable First, Last, Previous, Next buttons
            lbPrevious.Enabled = !_pgsource.IsFirstPage;
            lbNext.Enabled = !_pgsource.IsLastPage;
            lbFirst.Enabled = !_pgsource.IsFirstPage;
            lbLast.Enabled = !_pgsource.IsLastPage;

            // Bind data into repeater
            Repeater1.DataSource = _pgsource;
            Repeater1.DataBind();
            // Call the function to do paging
            HandlePaging();
        }

        private void HandlePaging()
        {
            var dt = new DataTable();
            dt.Columns.Add("PageIndex"); //Start from 0
            dt.Columns.Add("PageText"); //Start from 1

            _firstIndex = CurrentPage - 5;
            if (CurrentPage > 5)
                _lastIndex = CurrentPage + 5;
            else
                _lastIndex = 10;

            // Check last page is greater than total page then reduced it 
            // to total no. of page is last index
            if (_lastIndex > Convert.ToInt32(ViewState["TotalPages"]))
            {
                _lastIndex = Convert.ToInt32(ViewState["TotalPages"]);
                _firstIndex = _lastIndex - 10;
            }

            if (_firstIndex < 0)
                _firstIndex = 0;

            // Now creating page number based on above first and last page index
            for (var i = _firstIndex; i < _lastIndex; i++)
            {
                var dr = dt.NewRow();
                dr[0] = i;
                dr[1] = i + 1;
                dt.Rows.Add(dr);
            }

            rptPaging.DataSource = dt;
            rptPaging.DataBind();
        }

        protected void lbFirst_Click(object sender, EventArgs e)
        {
            CurrentPage = 0;
            BindDataIntoRepeater();
        }
        protected void lbLast_Click(object sender, EventArgs e)
        {
            CurrentPage = (Convert.ToInt32(ViewState["TotalPages"]) - 1);
            BindDataIntoRepeater();
        }
        protected void lbPrevious_Click(object sender, EventArgs e)
        {
            CurrentPage -= 1;
            BindDataIntoRepeater();
        }
        protected void lbNext_Click(object sender, EventArgs e)
        {
            CurrentPage += 1;
            BindDataIntoRepeater();
        }

        protected void rptPaging_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (!e.CommandName.Equals("newPage")) return;
            CurrentPage = Convert.ToInt32(e.CommandArgument.ToString());
            BindDataIntoRepeater();
        }

        protected void rptPaging_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            var lnkPage = (LinkButton)e.Item.FindControl("lbPaging");
            if (lnkPage.CommandArgument != CurrentPage.ToString()) return;
            lnkPage.Enabled = false;
            lnkPage.BackColor = Color.FromName("#00FF00");
        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }
    }
}
