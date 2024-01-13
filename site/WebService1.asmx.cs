using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.SessionState;

namespace MiniSite
{
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    [ScriptService]
    public class WebService1 : WebService
    {
        [WebMethod(EnableSession = true)]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public void AddRating(int rating)
        {
            // Retrieve the session of the current web service
            HttpSessionState session = HttpContext.Current.Session;

            // Create query parameters
            string username = session["username"].ToString();

            // Execute query
            SQLHelper.DoQuery("INSERT INTO Rating values('" + username + "'," + rating + ")");
        }
    }
}