﻿using System;
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

    //קבלת כל האבנים הקיימות במלאי
    [WebMethod]
    [ScriptMethod(ResponseFormat = ResponseFormat.Json)]

    public string getAllStonesViews()
    {
        StoneView sv = new StoneView();
        List<StoneView> lsv = sv.getAllStonesViews();
        JavaScriptSerializer js = new JavaScriptSerializer();
        // serialize to string
        string jsonStringStone = js.Serialize(lsv);
        //string jsonString = "{\"hi\":\"hello\"}";
        //return jsonString;
        return jsonStringStone;
    }


    ////קבלת כל הפרטים עבור האבן
    //[WebMethod]
    //[ScriptMethod(ResponseFormat = ResponseFormat.Json)]
    //public string getProduct(string id)
    //{

    //    int productId = Convert.ToInt32(id);
    //    Product p = new Product();
    //    Product p1 = p.getProduct(productId);

    //    JavaScriptSerializer js = new JavaScriptSerializer();
    //    // serialize to string
    //    string jsonStringCategory = js.Serialize(p1);
    //    return jsonStringCategory;
    //}

}
