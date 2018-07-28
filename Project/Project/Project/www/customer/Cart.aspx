<%@ Page Title="" Language="C#" MasterPageFile="~/css/MasterPage_Customer.master" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="www_customer_Cert" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="Server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
            <asp:BoundField DataField="Customer_Name" HeaderText="Customer_Name" SortExpression="Customer_Name" />
            <asp:BoundField DataField="Stone_Name" HeaderText="Stone_Name" SortExpression="Stone_Name" />
            <asp:BoundField DataField="Date_time" HeaderText="Date_time" SortExpression="Date_time" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>"
        SelectCommand="SELECT * FROM [View_Orders_Today] where Customer_Name = @original_Customer_Name">
        <SelectParameters>
            <asp:Parameter Name="original_Customer_Name" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

