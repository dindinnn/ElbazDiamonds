using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.Script.Serialization;
using System.Web.Script.Services;

/// <summary>
/// Summary description for AjaxWebServiceGetDiamonds
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
[System.Web.Script.Services.ScriptService]  // REMEMBER TO UNCOMMENT THIS LINE
public class AjaxWebServiceGetDiamonds : System.Web.Services.WebService
{

    public AjaxWebServiceGetDiamonds()
    {
        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    //קבלת האבנים הקיימות במלאי
    [WebMethod]
    [ScriptMethod(ResponseFormat = ResponseFormat.Json)]

    public string getStonesByName(string name)
    {
        string stoneName = name;
        Stone s = new Stone();
        List<Stone> ls = s.getStonesByName(categoryId);

        JavaScriptSerializer js = new JavaScriptSerializer();
        // serialize to string
        string jsonStringCategory = js.Serialize(ls);
        return jsonStringCategory;
    }
}
