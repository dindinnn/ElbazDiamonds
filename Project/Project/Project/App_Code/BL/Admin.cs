using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Admin
/// </summary>
public class Admin
{
    #region variables
    private string username;
    private string password;
    private string firstName;
    private string lastName;
    private string phone;
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
    public Admin()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public Admin(string username, string password, string firstName, string lastName, string phone, string email)
    {
        this.username = username;
        this.password = password;
        this.firstName = firstName;
        this.lastName = lastName;
        this.phone = phone;
        this.email = email;
    }
    #endregion

    public bool userAdminConformation(string username, string password)
    {
        DBServices dbs = new DBServices();
        return dbs.userAdminConformation("DBConnectionString", "Admin", "User_Name", username, password);
    }
}