<%@ Page Title="Add Customer" Language="C#" MasterPageFile="~/css/MasterPage_Admin.master" AutoEventWireup="true"
    CodeFile="AddCustomer.aspx.cs" Inherits="www_AddCustomer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style5 {
            height: 22px;

        }

        td {
            color: white; 
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server" >
    <h1>Add a new customer into the system </h1>
    <table style="width: 90%;">

        <%-- USERNAME --%>
        <tr>
            <td>Username:</td>
            <td>
                <asp:TextBox ID="Username_TB" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="Username_VLD" ControlToValidate="Username_TB" runat="server"
                    ErrorMessage="Please enter the customer name" ValidationGroup="addCustomerValidationGroup"></asp:RequiredFieldValidator>
            </td>
        </tr>

        <%-- PASSWORD --%>
        <tr>
            <td>Password:</td>
            <td>
                <asp:TextBox ID="Password_TB" runat="server"></asp:TextBox>
            </td>
             <td>
                <asp:RequiredFieldValidator ID="Password_VLD" ControlToValidate="Password_TB" runat="server"
                    ErrorMessage="Please enter the customer password" ValidationGroup="addCustomerValidationGroup"></asp:RequiredFieldValidator>
            </td>
        </tr>

        <%-- FIRST NAME --%>
        <tr>
            <td>First Name:</td>
            <td>
                <asp:TextBox ID="First_Name_TB" runat="server"></asp:TextBox>
            </td>
             <td>
                <asp:RequiredFieldValidator ID="First_Name_VLD" ControlToValidate="First_Name_TB" runat="server"
                    ErrorMessage="Please enter the first name of the customer" ValidationGroup="addCustomerValidationGroup"></asp:RequiredFieldValidator>
            </td>
        </tr>

        <%-- LAST NAME --%>
        <tr>
            <td>Last Name:</td>
            <td>
                <asp:TextBox ID="Last_Name_TB" runat="server"></asp:TextBox>
            </td>
             <td>
                <asp:RequiredFieldValidator ID="Last_Name_VLD" ControlToValidate="Last_Name_TB" runat="server"
                    ErrorMessage="Please enter the last name of the customer" ValidationGroup="addCustomerValidationGroup"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <%-- COMPANY NAME --%>
        <tr>
            <td>Company Name:</td>
            <td>
                <asp:TextBox ID="Company_Name_TB" runat="server"></asp:TextBox>
            </td>
             <td>
                <asp:RequiredFieldValidator ID="Company_Name_VLD" ControlToValidate="Company_Name_TB" runat="server"
                    ErrorMessage="Please enter the company name of the customer" ValidationGroup="addCustomerValidationGroup"></asp:RequiredFieldValidator>
            </td>
        </tr>

        <%-- PHONE --%>
        <tr>
            <td>Phone:</td>
            <td>
                <asp:TextBox ID="Phone_TB" runat="server"></asp:TextBox>
            </td>
             <td>
                <asp:RequiredFieldValidator ID="Phone_VLD" ControlToValidate="Phone_TB" runat="server"
                    ErrorMessage="Please enter the phone number of the customer" ValidationGroup="addCustomerValidationGroup"></asp:RequiredFieldValidator>
            </td>
        </tr>

        <%-- COUNTRY --%>
        <tr>
            <td>Country:</td>
            <td>
                <asp:TextBox ID="Country_TB" runat="server"></asp:TextBox>
            </td>
             <td>
                <asp:RequiredFieldValidator ID="Country_VLD" ControlToValidate="Country_TB" runat="server"
                    ErrorMessage="Please enter the country of the customer" ValidationGroup="addCustomerValidationGroup"></asp:RequiredFieldValidator>
            </td>
        </tr>

        <%-- CITY --%>
        <tr>
            <td>City:</td>
            <td>
                <asp:TextBox ID="City_TB" runat="server"></asp:TextBox>
            </td>
             <td>
                <asp:RequiredFieldValidator ID="City_VLD" ControlToValidate="City_TB" runat="server"
                    ErrorMessage="Please enter the city of the customer" ValidationGroup="addCustomerValidationGroup"></asp:RequiredFieldValidator>
            </td>
        </tr>

        <%-- ADDRESS --%>
        <tr>
            <td>Address:</td>
            <td>
                <asp:TextBox ID="Address_TB" runat="server"></asp:TextBox>
            </td>
             <td>
                <asp:RequiredFieldValidator ID="Address_VLD" ControlToValidate="Address_TB" runat="server"
                    ErrorMessage="Please enter the address of the customer" ValidationGroup="addCustomerValidationGroup"></asp:RequiredFieldValidator>
            </td>
        </tr>

        <%-- EMAIL --%>
        <tr>
            <td class="auto-style5">Email:</td>
            <td class="auto-style5">
                <asp:TextBox ID="Email_TB" runat="server" type="email"></asp:TextBox>
            </td>
             <td class="auto-style5">
                <asp:RequiredFieldValidator ID="Email_VLD" ControlToValidate="Email_TB" runat="server"
                    ErrorMessage="Please enter the email of the customer" ValidationGroup="addCustomerValidationGroup"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnAddCustomer" runat="server" Text="add customer" OnClick="btnAddCustomer_Click" ValidationGroup="addCustomerValidationGroup"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label_Messages" runat="server" Text=""></asp:Label>
            </td>
        </tr>
    </table>
    <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="User_Id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="User_Name" HeaderText="Customer Name" SortExpression="User_Name" />
            <asp:BoundField DataField="User_Password" HeaderText="Customer Password" SortExpression="User_Password" />
            <asp:BoundField DataField="First_Name" HeaderText="First Name" SortExpression="First_Name" />
            <asp:BoundField DataField="Last_Name" HeaderText="Last Name" SortExpression="Last_Name" />
            <asp:BoundField DataField="Company_Name" HeaderText="Company Name" SortExpression="Company_Name" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" SelectCommand="SELECT * FROM [Customer]"></asp:SqlDataSource>
    </div>
</asp:Content>

