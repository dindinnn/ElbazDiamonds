<%@ Page Title="" Language="C#" MasterPageFile="~/css/MasterPage_Admin.master" AutoEventWireup="true" CodeFile="HomePageAdmin.aspx.cs" Inherits="www_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource_statisticsForDay" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" SelectCommand="SELECT [hour], [Count_Purchases] FROM [View_Purchases_Per_Hour]"></asp:SqlDataSource>
    <p>
    </p>

    
    <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource_statisticsForDay"  >
        <Series>
            <asp:Series Name="Series1" XValueMember="hour" YValueMembers="Count_Purchases" ChartType="SplineArea">
            </asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1">
            </asp:ChartArea>
        </ChartAreas>
    </asp:Chart>



</asp:Content>

