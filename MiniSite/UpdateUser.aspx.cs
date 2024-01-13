using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiniSite
{
    public partial class UpdateUser : System.Web.UI.Page
    {
        // Strings To Store Place Holders To Represent Old User Data
        public string previousFNameHolder = "";
        public string previousLNameHolder = "";
        public string previousAgeHolder = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            // Check If User Is Logged In
            if(Session["username"] != null)
            {
                // Query String To Return If User Is Admin
                string Qry = "SELECT isAdmin FROM Users WHERE Username = '" + Session["username"].ToString() + "'";
                // If User Is Admin - Let Them In The Page
                if(SQLHelper.SelectScalarToString(Qry) == "True")
                {
                    // Save Current Username To Be Edited
                    string username = Request.QueryString["username"].ToString();

                    // Query Strings To Return Old User Data
                    string prevFNameHolderQuery = "SELECT FirstName FROM Users WHERE Username=N'" + username + "'";
                    string prevLNameHolderQuery = "SELECT LastName FROM Users WHERE Username=N'" + username + "'";
                    string prevAgeHolderQuery = "SELECT Age FROM Users WHERE Username=N'" + username + "'";

                    // Set Value Of Strings That Hold Old User Data
                    previousFNameHolder = SQLHelper.SelectScalarToString(prevFNameHolderQuery);
                    previousLNameHolder = SQLHelper.SelectScalarToString(prevLNameHolderQuery);
                    previousAgeHolder = SQLHelper.SelectScalarToString(prevAgeHolderQuery);

                    // Check If Update Button Was Clicked
                    if (Request.Form["update"] != null)
                    {
                        // Save User Input To Variables
                        string newfirstname = Request.Form["newfirstname"];
                        string newlastname = Request.Form["newlastname"];
                        string newage = Request.Form["newage"];

                        // Query Strings To Update User Data
                        string updatefirstnamequery = "UPDATE Users SET FirstName = '" + newfirstname + "' WHERE Username = '" + username + "'";
                        string updatelastnamequery = "UPDATE Users SET LastName = '" + newlastname + "' WHERE Username = '" + username + "'";
                        string updateagequery = "UPDATE Users SET Age = '" + newage + "' WHERE Username = '" + username + "'";

                        // Verify That New Data Was Entered
                        // Update Data If Entered - Don't Change If No Data Was Entered
                        if(newfirstname != null && newfirstname != "")
                            SQLHelper.DoQuery(updatefirstnamequery);
                        if(newlastname != null && newlastname != "")
                            SQLHelper.DoQuery(updatelastnamequery);
                        if (newage != null && newage != "")
                            SQLHelper.DoQuery(updateagequery);

                        // Redirect User To Admin Manage Page
                        Response.Redirect("AdminManage.aspx");
                    }
                }
                else // If User Is Not An Admin
                {
                    Response.Write("You are not permitted to enter!");
                    Response.End();
                }
            }
            else // If User Is Not Logged In
            {
                Response.Write("You are not permitted to enter!");
                Response.End();
            }
        }
    }
}