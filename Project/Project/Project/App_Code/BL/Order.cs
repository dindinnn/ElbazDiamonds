using System;
using System.Collections.Generic;
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
}