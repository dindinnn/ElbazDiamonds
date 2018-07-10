<%@ Page Title="Diamonds Inventory Management" Language="C#" MasterPageFile="~/css/MasterPage_Admin.master" AutoEventWireup="true" CodeFile="DiamondsInventoryManagement.aspx.cs" Inherits="www_diamondsInventoryManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<%--    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
        ConnectionString="<%$ ConnectionStrings:DBConnectionString %>"
        DeleteCommand="DELETE FROM [Stone] WHERE [ID] = @original_ID"
        InsertCommand="INSERT INTO [Stone] ([Stone_Name], [Shape_Name], [Image], [Price], [Amount], [Status]) VALUES (@Stone_Name, @Shape_Name, @Image, @Price, @Amount, @Status)" OldValuesParameterFormatString="original_{0}"
        SelectCommand="SELECT * FROM [Stone]"
        UpdateCommand="UPDATE [Stone] SET [Amount] = @Amount, [Status] = @Status WHERE [ID] = @original_ID">
        <DeleteParameters>
            <asp:Parameter Name="original_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Stone_Name" Type="String" />
            <asp:Parameter Name="Shape_Name" Type="String" />
            <asp:Parameter Name="Image" Type="String" />
            <asp:Parameter Name="Price" Type="Int32" />
            <asp:Parameter Name="Amount" Type="Int32" />
            <asp:Parameter Name="Status" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Stone_Name" Type="String" />
            <asp:Parameter Name="Shape_Name" Type="String" />
            <asp:Parameter Name="Image" Type="String" />
            <asp:Parameter Name="Price" Type="Int32" />
            <asp:Parameter Name="Amount" Type="Int32" />
            <asp:Parameter Name="Status" Type="Boolean" />
            <asp:Parameter Name="original_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" Height="272px" Width="575px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="Stone_Name" HeaderText="Stone_Name" InsertVisible="True" SortExpression="Stone_Name" ReadOnly="True" />
            <asp:BoundField DataField="Shape_Name" HeaderText="Shape_Name" SortExpression="Shape_Name" InsertVisible="True" ReadOnly="True" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" InsertVisible="True" ReadOnly="True" />
            <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" InsertVisible="True"  />
            <asp:CheckBoxField DataField="Status" HeaderText="Status" SortExpression="Status" InsertVisible="True"  />
            <asp:ImageField DataImageUrlField="Image" HeaderText="image">
            </asp:ImageField>
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
    </asp:GridView>--%>
</asp:Content>