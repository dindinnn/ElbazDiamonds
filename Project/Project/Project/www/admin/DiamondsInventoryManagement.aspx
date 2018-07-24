<%@ Page Title="Diamonds Inventory Management" Language="C#" MasterPageFile="~/css/MasterPage_Admin.master" 
    AutoEventWireup="true" CodeFile="DiamondsInventoryManagement.aspx.cs" Inherits="www_diamondsInventoryManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
        ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" OldValuesParameterFormatString="original_{0}"
        SelectCommand="SELECT [Stone_Name], [Stone_Weight], [Stone_Image], [Shape_Name], [Color_Name], [Clarity_Name], [Polish_Name] FROM [View_DiamondsInventoryManagement]">
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" 
        BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" Height="272px" Width="575px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="Stone_Name" HeaderText="Name" SortExpression="Stone_Name" />
            <asp:BoundField DataField="Stone_Weight" HeaderText="Weight" SortExpression="Stone_Weight" InsertVisible="True" />
            <asp:ImageField DataImageUrlField="Stone_Image" HeaderText="Image" InsertVisible="True" ></asp:ImageField>
            <asp:BoundField DataField="Shape_Name" HeaderText="Name" SortExpression="Shape_Name" />
            <asp:BoundField DataField="Color_Name" HeaderText="Name" SortExpression="Color_Name" />
            <asp:BoundField DataField="Clarity_Name" HeaderText="Name" SortExpression="Clarity_Name" />
            <asp:BoundField DataField="Polish_Name" HeaderText="Name" SortExpression="Polish_Name" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
    </asp:GridView>
</asp:Content>