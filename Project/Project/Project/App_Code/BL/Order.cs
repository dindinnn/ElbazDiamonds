using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Order
/// </summary>
public class Order
{
    #region variables
    private string customerName;
    private string stoneName;
    private DateTime orderTime;

    #endregion

    #region properties 
    public string CustomerName
    {
        get
        {
            return customerName;
        }

        set
        {
            customerName = value;
        }
    }
    public string StoneName
    {
        get
        {
            return stoneName;
        }

        set
        {
            stoneName = value;
        }
    }
    public DateTime OrderTime
    {
        get
        {
            return orderTime;
        }

        set
        {
            orderTime = value;
        }
    }

    #endregion

    #region constructors 
    public Order()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    #endregion

    public bool addOrder()
    {
        DBServices dbs = new DBServices();
        int numAffected = dbs.insert_Order(this);
        return numAffected > 0;

    }

    public List<string> readfromyDS_o(string name)
    {
        string customerName = name;
        string conString = " SELECT Stone_Name From dbo.Orders WHERE(DAY(Date_time) = DAY(GETDATE())) AND(MONTH(Date_time) = MONTH(GETDATE())) AND(YEAR(Date_time) = YEAR(GETDATE())) AND Customer_Name =  '" + name  + "'";
        DBServices dbs = new DBServices();
        dbs = dbs.ReadFromDataBase_Filter("DBConnectionString", conString);
        List<string> stones = new List<string>();
        foreach (DataRow dr in dbs.dt.Rows)
        {
            string n = (string)dr["Stone_Name"];
            stones.Add(n);         
        }
        return stones;
    }



}