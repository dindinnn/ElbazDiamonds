using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for RapaportUser
/// </summary>
public class RapaportUser
{
    private string username;
    private string password;

    protected string Username
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

    protected string Password
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

    public RapaportUser()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public RapaportUser(string username, string password)
    {
        this.username = username;
        this.password = password;
    }
}