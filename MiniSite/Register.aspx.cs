using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiniSite
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.Form["username"] != null && Request.Form["username"].ToString() != "")
            {
                string userName = Request.Form["username"];
                string password = Request.Form["password"];
                string firstName = Request.Form["fname"];
                string lastName = Request.Form["lname"];
                string email = Request.Form["email"];
                string gender = Request.Form["gender"];
                string phone = Request.Form["phone"];
                string age = Request.Form["age"];
                string games = Request.Form["games"];
                string address = Request.Form["address"];
                string interest = Request.Form["hobby"];
                string platform = Request.Form["platform"];

                string usernameQuery = "SELECT Username FROM Users WHERE Username = '" + Request.Form["username"] + "'";
                if (SQLHelper.SelectScalarToString(usernameQuery) != userName)
                {
                    string addToTable = "INSERT INTO users VALUES(N'" + userName + "' , N'" + password + "',N'" + firstName + "',N'" + lastName + "',N'" + age + "',N'" + gender + "',N'" + phone + "',N'" + interest + "',N'" + address + "',N'" + games + "',N'" + platform + "'," + 0 + ",N'" + email + "')";
                    SQLHelper.DoQuery(addToTable);
                    Session["username"] = Request.Form["username"];
                    Response.Redirect("home.aspx");
                }
                else
                {
                    ClientMessageBox.Show("Username Already In Use, Please Select Another Username", this);
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