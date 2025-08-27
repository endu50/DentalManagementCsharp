using System;
using System.Web;
using System.Web.Security;
namespace DanaSolution

{ 
public partial class logout: System.Web.UI.Page
{
        protected void Page_Load(object sender,EventArgs e)
        {
            if (!this.Page.User.Identity.IsAuthenticated)
            {
               
                Session.Abandon();
                FormsAuthentication.RedirectToLoginPage();
                //Response.Redirect("login.apx");
            }
            //  Response.Redirect("~/login.apx");
        }

}
}