﻿//using System;
//using System.Collections.Generic;
//using System.Data;
//using System.Linq;
//using System.Web;

///// <summary>
///// Summary description for Category
///// </summary>
//public class Category
//{
//    DBservices dbs = new DBservices();
//    public Category()
//    {
//        //
//        // TODO: Add constructor logic here
//        //
//    }

//    public Category(string _name)
//    {
//        Name = _name;
//    }

//    protected string name;
//    protected int categoryId { get; set; }


//    public string Name
//    {
//        get { return name; }
//        set { name = value; }
//    }

//    public int CategoryId
//    {
//        get { return categoryId; }
//        set { categoryId = value; }
//    }

//    public bool Category_Check(string Shape_Name)
//    {

//        DBservices dbs = new DBservices();
//        bool Category_exists = dbs.Category_Check("DBConnectionString", Shape_Name);
//        return Category_exists;

//    }

//    public int insert(string Shape_Name)
//    {

//        DBservices dbs = new DBservices();
//        int numAffected = dbs.insert_category(Shape_Name);
//        return numAffected;

//    }

//    public List<string> readCategoryDS()
//    {
//        DBservices dbs = new DBservices();
//        dbs = dbs.ReadFromDataBase("DBConnectionString", "Category");
//        List<string> categories = new List<string>();
//        foreach (DataRow dr in dbs.dt.Rows)
//        {
//            Category c = new Category();
//            c.Name = (string)dr["Shape_Name"];
//            categories.Add(c.name.ToString());
//        }
//        return categories;
//    }

//    public List<Category> readCategoryDS_Customer()
//    {
//        DBservices dbs = new DBservices();
//        dbs = dbs.ReadFromDataBase("DBConnectionString", "Category");
//        List<Category> categories = new List<Category>();
//        foreach (DataRow dr in dbs.dt.Rows)
//        {
//            Category c = new Category();
//            c.Name = (string)dr["Shape_Name"];
//            categories.Add(c);
//        }

//        return categories;
//    }
//}