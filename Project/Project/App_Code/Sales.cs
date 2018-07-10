//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Web;

///// <summary>
///// Summary description for Sale
///// </summary>
//public class Sales
//{
//    public Sales()
//    {
//        //
//        // TODO: Add constructor logic here
//        //
//    }

//    protected Stone Stone;
//    protected double total;
//    protected int amount;
//    protected string customer_Name;
//    protected string date;
//    protected int payment;

//    public Sales(Stone _Stone, double _total, int _amount, string _Customer_Name, string _date, int _payment)
//    {
//        Stone_Name = _Stone;
//        Total = _total;
//        Amount = _amount;
//        Customer_Name = _Customer_Name;
//        Date = _date;
//        Payment = _payment;

//    }

//    public Stone Stone_Name
//    {
//        get { return Stone; }
//        set { Stone = value; }
//    }
//    public double Total
//    {
//        get { return total; }
//        set { total = value; }
//    }
//    public int Amount
//    {
//        get { return amount; }
//        set { amount = value; }
//    }
//    public string Customer_Name
//    {
//        get { return customer_Name; }
//        set { customer_Name = value; }
//    }
//    public string Date
//    {
//        get { return date; }
//        set { date = value; }
//    }
//    public int Payment
//    {
//        get { return payment; }
//        set { payment = value; }
//    }

//    public int id;

//    public int insertsale()
//    {
//        DBservices dbs = new DBservices();
//        return dbs.insertsale(this);

//    }



//}