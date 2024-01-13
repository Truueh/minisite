using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiniSite
{
    public partial class AdminManage : System.Web.UI.Page
    {
        public string search;
        public string html = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["isAdmin"] != null)
            {
                if (Session["IsAdmin"].ToString() == "True")
                {
                    string mySql = "SELECT [Users].Username, [Users].Password, [Users].FirstName, [Users].LastName, [Users].Age"
                        + ", [Users].Gender, [Users].PhoneNumber, [Users].AreasOfInterest, [Users].Address, [Users].PreferedGames"
                        + ", [Users].Platform, [Users].isAdmin, [Users].Email FROM [Users]";
                    if (Request.QueryString["search"] != "")
                    {
                        mySql += " WHERE [Users].Username LIKE N'%" + Request.QueryString["search"] + "%' OR [Users].firstname LIKE N'%" + Request.QueryString["search"] +"%' OR [Users].lastname LIKE N'%" + Request.QueryString["search"] + "%'";
                    }

                    if(Request.Form["submit"] != null)
                    {
                        Response.Redirect("AdminManage.aspx?search=" + Request.Form["search"]);
                    }

                    System.Data.DataTable dt = SQLHelper.SelectData(mySql);

                    html += "<tr>";

                    for (int j = 0; j < dt.Columns.Count; j++)
                    {
                        html += "<td>";
                        html += dt.Columns[j].ToString();
                        html += "</td>";
                    }
                    html += "</tr>";

                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        html += "<tr>";
                        for (int j = 0; j < dt.Columns.Count; j++)
                        {
                            html += "<td>";
                            html += dt.Rows[i][j].ToString();
                            html += "</td>";
                        }
                        html += "<td>";
                        html += "<a href='UpdateUser.aspx?Username=" + dt.Rows[i][0].ToString() + " '>  Edit</a> ";
                        html += "</td>";
                        html += "<td>";
                        html += "<a href='DeleteUser.aspx?Username=" + dt.Rows[i][0].ToString() + " '>  Remove</a> ";
                        html += "</td>";
                        html += "</tr>";
                    }

                }
                else
                {
                    Response.Redirect("home.aspx");
                }
            }
            else
            {
                Response.Redirect("home.aspx");
            }

        }
    }
}