

<%@ Page Title="Diamonds Inventory Management" Language="C#" MasterPageFile="~/css/MasterPage_Admin.master" 
    AutoEventWireup="true" CodeFile="DiamondsInventoryManagement.aspx.cs" Inherits="www_diamondsInventoryManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
        ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" OldValuesParameterFormatString="original_{0}"
        SelectCommand="SELECT * FROM [View_DDL]"
        DeleteCommand="DELETE FROM [dbo].[Stone] WHERE [Stone_Name] = @Original_Stone_Name">
            <DeleteParameters>
            <asp:Parameter Name="Original_Stone_Name" Type="String" />
        </DeleteParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" 
        BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" Height="272px" Width="575px" DataKeyNames="ID">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" ShowDeleteButton="True" />
            <asp:BoundField DataField="Stone_Name" HeaderText="Name" SortExpression="Stone_Name" />
            <asp:ImageField DataImageUrlField="Stone_Image" HeaderText="Image">
            </asp:ImageField>
            <asp:BoundField DataField="Stone_Weight" HeaderText="Weight" SortExpression="Stone_Weight" InsertVisible="True" />
            <asp:BoundField DataField="Shape_Name" HeaderText="Shape" SortExpression="Shape_Name" />
            <asp:BoundField DataField="Color_Name" HeaderText="Color" SortExpression="Color_Name" />
            <asp:BoundField DataField="Clarity_Name" HeaderText="Clarity" SortExpression="Clarity_Name" />
            <asp:BoundField DataField="Cut_Name" HeaderText="Cut" SortExpression="Cut_Name" />
            <asp:BoundField DataField="Polish_Name" HeaderText="Polish" SortExpression="Polish_Name" />
            <asp:BoundField DataField="Symmetry_Name" HeaderText="Symmetry" SortExpression="Symmetry_Name" />
            <asp:BoundField DataField="Stone_Cost_P_Discount" HeaderText="Cost P. Discount" SortExpression="Stone_Cost_P_Discount" />
            <asp:BoundField DataField="Stone_T_Cost_Price" HeaderText="T. Cost Price" SortExpression="Stone_T_Cost_Price" />
            <asp:BoundField DataField="Stone_Sale_P_Discount" HeaderText="Sale P Discount" SortExpression="Stone_Sale_P_Discount" />
            <asp:BoundField DataField="Stone_T_Sale_Price" HeaderText="T. Sale Price" SortExpression="Stone_T_Sale_Price" />
            <asp:BoundField DataField="Status_Name" HeaderText="Status" SortExpression="Status_Name" />
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