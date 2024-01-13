using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiniSite
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string username = Request.Form["username"];
            string password = Request.Form["password"];

            if(username != null)
            {
                string sqlUsername = "SELECT Username FROM Users WHERE Username=N'" + username + "'";
                string sqlPassword = "SELECT Password FROM Users WHERE Username=N'" + username + "'";

                if (username == SQLHelper.SelectScalarToString(sqlUsername))
                {
                    if (password == SQLHelper.SelectScalarToString(sqlPassword))
                    {
                        Session["username"] = username;
                        if (SQLHelper.SelectScalarToString("SELECT isAdmin FROM Users WHERE Username = '" + username + "'") == "True")
                        {
                            Session["isAdmin"] = "True";
                            Response.Redirect("AdminManage.aspx");
                        }
                        else
                        {
                            Session["isAdmin"] = "False";
                        }
                        Response.Redirect("home.aspx");
                    }
                    else
                        ClientMessageBox.Show("Incorrect Password", this);
                }
                else
                {
                    ClientMessageBox.Show(SQLHelper.SelectScalarToString(sqlUsername), this);
                }
            }
        }

        public static class ClientMessageBox
        {

            public static void Show(string message, Control owner)
            {
                Page page = (owner as Page) ?? owner.Page;
                if (page == null) return;

                page.ClientScript.RegisterStartupScript(owner.GetType(),
                    "ShowMessage", string.Format("<script type='text/javascript'>alert('{0}')</script>",
                    message));

            }

        }

    }
}