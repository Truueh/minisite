using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiniSite
{
    public partial class Remove : System.Web.UI.Page
    {
        public string username = string.Empty;
        public string firstname = string.Empty;
        public string lastname = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["isAdmin"] != null)
            {
                if (Session["isAdmin"].ToString() == "True")
                {
                    string SQLFirstName = "SELECT FirstName FROM Users WHERE Username = '" + Request.QueryString["username"] + "'";
                    string SQLLastName = "SELECT LastName FROM Users WHERE Username = '" + Request.QueryString["username"] + "'";

                    username = Request.QueryString["username"];
                    firstname = SQLHelper.SelectScalarToString(SQLFirstName);
                    lastname = SQLHelper.SelectScalarToString(SQLLastName);

                    if (Request.Form["delete"] != null)
                    {
                        if (SQLHelper.SelectScalarToString("SELECT isAdmin FROM Users WHERE Username = '" + username + "'") == "False")
                        {
                            string deleteSQL = "DELETE FROM Users WHERE Username = '" + username + "'";
                            SQLHelper.DoQuery(deleteSQL);
                            Response.Redirect("AdminManage.aspx");
                        }
                        else
                        {
                            Response.Write("You cannot delete an admin's account!");
                        }
                    }
                }
                else
                    Response.Redirect("home.aspx");
            }
            else
                Response.Redirect("home.aspx");
        }
    }
}