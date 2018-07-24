<%@ Page Title="Add Customer" Language="C#" MasterPageFile="~/css/MasterPage_Admin.master" AutoEventWireup="true" 
    CodeFile="AddCustomer.aspx.cs" Inherits="www_AddCustomer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
        <style type="text/css">
        .auto-style1 {
            height: 24px;
        }

        .auto-style4 {
            height: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
        <h1>Add a new customer into the system </h1>
        <table style="width: 25%;">

            <%-- USERNAME --%>
            <tr>
                <td>Username:</td>
                <td>
                    <asp:TextBox ID="Username_TB" runat="server" ></asp:TextBox>
                </td>
            </tr>

            <%-- PASSWORD --%>
            <tr>
                <td>Password:</td>
                <td>
                    <asp:TextBox ID="Password_TB" runat="server"></asp:TextBox>
                </td>
            </tr>

            <%-- FIRST NAME --%>
            <tr>
                <td>First Name:</td>
                <td>
                    <asp:TextBox ID="First_Name_TB" runat="server"></asp:TextBox>
                </td>
            </tr>

            <%-- LAST NAME --%>
            <tr>
                <td>Last Name:</td>
                <td>
                    <asp:TextBox ID="Last_Name_TB" runat="server"></asp:TextBox>
                </td>
            </tr>
            <%-- COMPANY NAME --%>
            <tr>
                <td>Company Name:</td>
                <td>
                    <asp:TextBox ID="Company_Name_TB" runat="server"></asp:TextBox>
                </td>
            </tr>

            <%-- PHONE --%>
            <tr>
                <td>Phone:</td>
                <td>
                    <asp:TextBox ID="Phone_TB" runat="server"></asp:TextBox>
                </td>
            </tr>

            <%-- COUNTRY --%>
            <tr>
                <td>Country:</td>
                <td>
                    <asp:TextBox ID="Country_TB" runat="server"></asp:TextBox>
                </td>
            </tr>

            <%-- CITY --%>
            <tr>
                <td>City:</td>
                <td>
                    <asp:TextBox ID="City_TB" runat="server"></asp:TextBox>
                </td>
            </tr>

            <%-- ADDRESS --%>
            <tr>
                <td>Address:</td>
                <td>
                    <asp:TextBox ID="Addresse_TB" runat="server"></asp:TextBox>
                </td>
            </tr>

            <%-- EMAIL --%>
            <tr>
                <td>Email:</td>
                <td>
                    <asp:TextBox ID="Email_TB" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnAddCustomer" runat="server" Text="add customer" OnClick="btnAddCustomer_Click" />
                </td>    
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label_Messages" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
<div>
<%--    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="Category_Name" HeaderText="Category_Name" SortExpression="Category_Name" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:productDBConnectionString %>" SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>--%>
</div>
</asp:Content>

