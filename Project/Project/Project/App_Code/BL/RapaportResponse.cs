using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for RapaportResponse
/// </summary>
public class RapaportResponse
{
    Response response;
    public RapaportResponse()
    {

    }

    public RapaportResponse(Response response)
    {
        this.Response = response;
    }

    public Response Response
    {
        get
        {
            return response;
        }

        set
        {
            response = value;
        }
    }
}

public class Body
{
    string shape;
    double low_size;
    double high_size;
    string color;
    string clarity;
    double caratprice;
    string date;

    public Body()
    {

    }
    public Body(string shape, double low_size, double high_size, string color, string clarity, double caratprice, string date)
    {
        this.shape = shape;
        this.low_size = low_size;
        this.high_size = high_size;
        this.color = color;
        this.clarity = clarity;
        this.caratprice = caratprice;
        this.date = date;
    }

    public string Shape
    {
        get
        {
            return shape;
        }

        set
        {
            shape = value;
        }
    }

    public double Low_size
    {
        get
        {
            return low_size;
        }

        set
        {
            low_size = value;
        }
    }

    public double High_size
    {
        get
        {
            return high_size;
        }

        set
        {
            high_size = value;
        }
    }

    public string Color
    {
        get
        {
            return color;
        }

        set
        {
            color = value;
        }
    }

    public string Clarity
    {
        get
        {
            return clarity;
        }

        set
        {
            clarity = value;
        }
    }

    public double Caratprice
    {
        get
        {
            return caratprice;
        }

        set
        {
            caratprice = value;
        }
    }

    public string Date
    {
        get
        {
            return date;
        }

        set
        {
            date = value;
        }
    }
}

public class Header
{
    string error_code;
    string error_message;

    public Header()
    {

    }
    public Header(string error_code, string error_message)
    {
        this.Error_code = error_code;
        this.Error_message = error_message;
    }

    public string Error_code
    {
        get
        {
            return error_code;
        }

        set
        {
            error_code = value;
        }
    }

    public string Error_message
    {
        get
        {
            return error_message;
        }

        set
        {
            error_message = value;
        }
    }
}

public class Response
{
    Header header;
    Body body;

    public Response()
    {

    }
    public Header Header
    {
        get
        {
            return header;
        }

        set
        {
            header = value;
        }
    }

    public Body Body
    {
        get
        {
            return body;
        }

        set
        {
            body = value;
        }
    }

    public Response(Header header, Body body)
    {
        this.Header = header;
        this.Body = body;
    }
}