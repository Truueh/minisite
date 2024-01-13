using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiniSite
{
    public partial class Masterpage : System.Web.UI.MasterPage
    {
        public string first = "";
        public string second = "";
        public string firstLink = "";
        public string secondLink = "";
        public double AvgRating;

        protected void Page_Load(object sender, EventArgs e)
        {
            // Get Average Rating
            string getRatingQuery = "SELECT AVG(Rate) FROM Rating";
            AvgRating = SQLHelper.SelectScalarToInt32(getRatingQuery);
            if (Session["username"] == null || Session["username"].ToString() == "")
            {
                first = "Log In";
                second = "Register";
                firstLink = "login.aspx";
                secondLink = "register.aspx";
            }
            else
            {
                first = Session["username"].ToString();
                second = "Log Out";
                firstLink = "AdminManage.aspx";
                secondLink = "logout.aspx";
            }

            if (Request.Cookies.Get("rating") == null)
            {
                HttpCookie rate = new HttpCookie("rating");
                rate.Expires = new DateTime(DateTime.Now.Year + 5, DateTime.Now.Month, DateTime.Now.Day);
                rate.Value = "false";
                Response.Cookies.Add(rate);
            }
        }
    }
}