<%@ Page Title="Show Orders" Language="C#" MasterPageFile="~/css/MasterPage_Admin.master" AutoEventWireup="true" 
    CodeFile="ShowOrders.aspx.cs" Inherits="www_showOrders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" style="color: white; font: bold">
        <Columns >
            <asp:BoundField DataField="Customer_Name" HeaderText="Customer Name" SortExpression="Customer_Name" />
            <asp:BoundField DataField="Stone_Name" HeaderText="Stone Name" SortExpression="Stone_Name" />
            <asp:BoundField DataField="Date_time" HeaderText="Date_time" SortExpression="Date_time" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" 
        SelectCommand="SELECT * FROM [Orders]"></asp:SqlDataSource>
</asp:Content>

