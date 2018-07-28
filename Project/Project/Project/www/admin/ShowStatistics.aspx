<%@ Page Title="" Language="C#" MasterPageFile="~/css/MasterPage_Admin.master" AutoEventWireup="true" CodeFile="ShowStatistics.aspx.cs" Inherits="www_admin_ShowStatistics" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">




    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource_statisticsForDay" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" SelectCommand="SELECT [hour], [Count_Purchases] FROM [View_Purchases_Per_Hour]"></asp:SqlDataSource>
<p>
</p>




    <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource_statisticsForDay">
        <series>
            <asp:Series Name="Series1" XValueMember="hour" YValueMembers="Count_Purchases">
            </asp:Series>
        </series>
        <chartareas>
            <asp:ChartArea Name="ChartArea1">
            </asp:ChartArea>
        </chartareas>
    </asp:Chart>




</asp:Content>

