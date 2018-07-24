using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Customers
/// </summary>
public class Customers
{
    #region variables
    private string username;
    private string password;
    private string firstName;
    private string lastName;
    private string companyName;
    private string phone;
    private string country;
    private string city;
    private string address;
    private string email;
    #endregion

    #region properties 
    public string Username
    {
        get
        {
            return username;
        }

        set
        {
            username = value;
        }
    }
    public string Password
    {
        get
        {
            return password;
        }

        set
        {
            password = value;
        }
    }
    public string FirstName
    {
        get
        {
            return firstName;
        }

        set
        {
            firstName = value;
        }
    }
    public string LastName
    {
        get
        {
            return lastName;
        }

        set
        {
            lastName = value;
        }
    }
    public string CompanyName
    {
        get
        {
            return companyName;
        }

        set
        {
            companyName = value;
        }
    }
    public string Phone
    {
        get
        {
            return phone;
        }

        set
        {
            phone = value;
        }
    }
    public string Country
    {
        get
        {
            return country;
        }

        set
        {
            country = value;
        }
    }
    public string City
    {
        get
        {
            return city;
        }

        set
        {
            city = value;
        }
    }
    public string Address
    {
        get
        {
            return address;
        }

        set
        {
            address = value;
        }
    }
    public string Email
    {
        get
        {
            return email;
        }

        set
        {
            email = value;
        }
    }
    #endregion

    #region constructors 
    public Customers()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public Customers(string username, string password, string firstName, string lastName, string companyName, string phone, string country, string city, string address, string email)
    {
        this.username = username;
        this.password = password;
        this.firstName = firstName;
        this.lastName = lastName;
        this.companyName = companyName;
        this.phone = phone;
        this.country = country;
        this.city = city;
        this.address = address;
        this.email = email;
    }
    #endregion

    //public bool userCustomerConformation(string username, string password)
    //{
    //    DBServices dbs = new DBServices();
    //    return dbs.userAdminConformation("DBConnectionString", "Admin", "User_Name", username, password);
    //}

    public static bool isCustomerExist(string username)
    {

        DBServices dbs = new DBServices();
        bool Customer_exists = dbs.IsCustomerExist("DBConnectionString", username);
        return Customer_exists;
    }

    public int insert()
    {
        DBServices dbs = new DBServices();
        int numAffected = dbs.insert_Customer(this);
        return numAffected;

    }
}