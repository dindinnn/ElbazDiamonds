using System;
using System.Collections.Generic;
using System.Data;
/// <summary>
/// Summary description for Stone
/// </summary>
public class Stone
{
    protected int id;
    protected string name;
    protected int weight;
    protected int shape;
    protected int color;
    protected int clarity;
    protected int m1;
    protected int m2;
    protected int m3;
    protected int depth;
    protected int table;
    protected int girdle;
    protected int culet;
    protected int cut;
    protected int polish;
    protected int symmetry;
    protected int fluorescence;
    protected int lab;
    protected int certificate;
    protected int cost_p_discount;
    protected double cost_price_ct;
    protected double t_cost_price;
    protected int sale_discount;
    protected double sale_price_ct;
    protected double t_sale_price;
    protected string imagePath;
    protected int status;

    //Properties:
    public int Id
    {
        get { return id; }
        set { id = value; }
    }
    public string Name
    {
        get { return name; }
        set { name = value; }
    }
    public int Weight
    {
        get { return weight; }
        set { weight = value; }
    }
    public int Shape
    {
        get { return shape; }
        set { shape = value; }
    }
    public int Color
    {
        get { return color; }
        set { color = value; }
    }
    public int Clarity
    {
        get { return clarity; }
        set { clarity = value; }
    }
    public int M1
    {
        get { return m1; }
        set { m1 = value; }
    }
    public int M2
    {
        get { return m2; }
        set { m2 = value; }
    }
    public int M3
    {
        get { return m3; }
        set { m3 = value; }
    }
    public int Depth
    {
        get { return depth; }
        set { depth = value; }
    }
    public int Table
    {
        get { return table; }
        set { table = value; }
    }
    public int Girdle
    {
        get { return girdle; }
        set { girdle = value; }
    }
    public int Culet
    {
        get { return culet; }
        set { culet = value; }
    }
    public int Cut
    {
        get { return cut; }
        set { cut = value; }
    }
    public int Polish
    {
        get { return polish; }
        set { polish = value; }
    }
    public int Symmetry
    {
        get { return symmetry; }
        set { symmetry = value; }
    }
    public int Fluorescence
    {
        get { return fluorescence; }
        set { fluorescence = value; }
    }
    public int Lab
    {
        get { return lab; }
        set { lab = value; }
    }
    public int Certificate
    {
        get { return certificate; }
        set { certificate = value; }
    }
    public int Cost_P_Discount
    {
        get { return cost_p_discount; }
        set { cost_p_discount = value; }
    }
    public double Cost_Price_CT
    {
        get { return cost_price_ct; }
        set { cost_price_ct = value; }
    }
    public double T_Cost_Price
    {
        get { return t_cost_price; }
        set { t_cost_price = value; }
    }  
    public int Sale_Discount
    {
        get { return sale_discount; }
        set { sale_discount = value; }
    }
    public double Sale_Price_CT
    {
        get { return sale_price_ct; }
        set { sale_price_ct = value; }
    }
    public double T_Sale_Price
    {
        get { return t_sale_price; }
        set { t_sale_price = value; }
    }
    public string ImagePath
    {
        get { return imagePath; }
        set { imagePath = value; }
    }
    public int Status
    {
        get { return status; }
        set { status = value; }
    }

    public Stone()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public Stone(int _id, string _name, int _weight, int _shape, int _color, int _clarity, int _m1, int _m2, int _m3, int _depth, int _table, int _girdle, int _culet, int _cut, int _polish, int _symmetry, int _fluorescence, int _lab, int _certificate, int _cost_P_Discount, double _cost_Price_CT, double _t_Cost_Price, int _sale_Discount, double _sale_Price_CT, double _t_Sale_Price, string _imagePath, int _status)
    {
        Id = _id;
        Name = _name;
        Weight = _weight;
        Shape = _shape;
        Color = _color;
        Clarity = _clarity;
        M1 = _m1;
        M2 = _m2;
        M3 = _m3;
        Depth = _depth;
        Table = _table;
        Girdle = _girdle;
        Culet = _culet;
        Cut = _cut;
        Polish = _polish;
        Symmetry = _symmetry;
        Fluorescence = _fluorescence;
        Lab = _lab;
        Certificate = _certificate;
        Cost_P_Discount = _cost_P_Discount;
        Cost_Price_CT = _cost_Price_CT;
        T_Cost_Price = _t_Cost_Price;
        Sale_Discount = _sale_Discount;
        Sale_Price_CT = _sale_Price_CT;
        T_Sale_Price = _t_Sale_Price;
        ImagePath = _imagePath;
        Status = _status;
    }

    //public string insert(string name)
    //{
    //    /*DBservices dbs = new DBservices();
    //    int numAffected = dbs.insert_Stone(P);
    //    return numAffected;*/
    //    return name; 
    //}

    //public List<Stone> readStoneDS()
    //{
    //    int i = 0;
    //    DBservices dbs = new DBservices();
    //    dbs = dbs.ReadFromDataBase_ActiveStones("DBConnectionString", "Stone");
    //    List<Stone> Stones = new List<Stone>();
    //    foreach (DataRow dr in dbs.dt.Rows)
    //    {
    //        Stone p = new Stone();
    //        p.id = i++;
    //        p.Title = (string)dr["Stone_name"];
    //        p.name = (string)dr["Shape_name"];
    //        p.ImagePath = (string)dr["Image"];
    //        p.Price = double.Parse(dr["Price"].ToString());
    //        p.Amount = int.Parse(dr["Amount"].ToString());
    //        p.Status = bool.Parse(dr["Status"].ToString());
    //        Stones.Add(p);
    //    }
    //   //חיבור מה db ומהספק החיצונ

    //    sepplierProxy.ExternalSupplier proxy = new sepplierProxy.ExternalSupplier();
    //    sepplierProxy.Stone[] StoneArr = proxy.getStones();

    //    foreach (var item in StoneArr )
    //    {
    //        Stone p = new Stone();
    //        p.id = i++;
    //        p.Title = item.Title;
    //        p.name = item.name;
    //        p.ImagePath = item.ImagePath;
    //        p.Price = item.Price;
    //        p.Amount = item.Amount;
    //        p.Status = item.Status;
    //        Stones.Add(p);
    //    }

    //    return Stones;
    //}

    //public void discountStone(double discount)
    //{
    //    Price *= discount;
    //}

    //public int amountCheck(Stone p)
    //{

    //    DBservices dbs = new DBservices();
    //    return dbs.amountCheck(p.title);

    //}

    //public int after_sale_amount(int amount)
    //{
    //    DBservices dbs = new DBservices();
    //    return dbs.after_sale_amount(this, amount);
    //}

   
}







