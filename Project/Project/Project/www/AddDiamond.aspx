<%@ Page Title="Add Diamond" Language="C#" MasterPageFile="~/css/MasterPage_Admin.master" AutoEventWireup="true" CodeFile="AddDiamond.aspx.cs" Inherits="www_AddDiamond" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 24px;
        }

        .auto-style2 {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h1>Insert a new stone into the system</h1>
    <table style="width: 100%;">
        <%-- dina --%>
        <%-- NAME --%>
       <%-- gilll--%>
         <%-- gilll--%>
               <%-- gilll--%>
         <%-- gilll--%>
        <%-- gilll--%>
        <tr>
            <td>Name:</td>
            <td>
                <input id="Name_TB" type="text" runat="server" />
            </td>
            <td>
                <asp:RequiredFieldValidator ID="Name_VLD" ControlToValidate="Name_TB" runat="server" ErrorMessage="Please enter a stone name"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <%-- WEIGHT --%>
        <tr>
            <td>Weight:</td>
            <td>
                <input id="Weight_TB" type="number" runat="server" />
            </td>
            <td>
                <asp:RequiredFieldValidator ID="Weight_VLD" ControlToValidate="Weight_TB" runat="server" ErrorMessage="Please enter stone weight"></asp:RequiredFieldValidator>
            </td>
        </tr>       
        <%-- SHAPE --%>
        <tr>
            <td>Shape:</td>
            <td>
                <asp:DropDownList ID="DDL_Shape_Id" runat="server" DataSourceID="SqlDataSource1" DataTextField="Shape_Name" DataValueField="Shape_Name">
                    <asp:ListItem>Select a shape for the stone</asp:ListItem>
                    <asp:ListItem Value="1">RB</asp:ListItem>
                    <asp:ListItem Value="2">OV</asp:ListItem>
                    <asp:ListItem Value="3">MQ</asp:ListItem>
                    <asp:ListItem Value="4">PS</asp:ListItem>
                    <asp:ListItem Value="5">EM</asp:ListItem>
                    <asp:ListItem Value="6">PR</asp:ListItem>
                    <asp:ListItem Value="7">CU</asp:ListItem>
                    <asp:ListItem Value="8">RAD</asp:ListItem>
                    <asp:ListItem Value="9">ASH</asp:ListItem>
                    <asp:ListItem Value="10">HS</asp:ListItem>
                    <asp:ListItem Value="11">TRG</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" SelectCommand="SELECT [Shape_Name] FROM [Shape]"></asp:SqlDataSource>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="DDL_Shape_Id_VLD" runat="server" ControlToValidate="DDL_Shape_Id"
                    ErrorMessage="Please select the shape of the stone" InitialValue="select the shape"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <%-- COLOR --%>
        <tr>
            <td>Color:</td>
            <td>
                <asp:DropDownList ID="DDL_Color_Id" runat="server" DataSourceID="SqlDataSource2" DataTextField="Color_Name" DataValueField="Color_Name">
                    <asp:ListItem>Select a color for the stone</asp:ListItem>
                    <asp:ListItem Value="1">D</asp:ListItem>
                    <asp:ListItem Value="2">E</asp:ListItem>
                    <asp:ListItem Value="3">F</asp:ListItem>
                    <asp:ListItem Value="4">G</asp:ListItem>
                    <asp:ListItem Value="5">H</asp:ListItem>
                    <asp:ListItem Value="6">I</asp:ListItem>
                    <asp:ListItem Value="7">J</asp:ListItem>
                    <asp:ListItem Value="8">K</asp:ListItem>
                    <asp:ListItem Value="9">L</asp:ListItem>
                    <asp:ListItem Value="10">M</asp:ListItem>
                    <asp:ListItem Value="11">N</asp:ListItem>
                    <asp:ListItem Value="12">O-P</asp:ListItem>
                    <asp:ListItem Value="13">Q-R</asp:ListItem>
                    <asp:ListItem Value="15">S-T</asp:ListItem>
                    <asp:ListItem Value="15">U-V</asp:ListItem>
                    <asp:ListItem Value="16">W-X</asp:ListItem>
                    <asp:ListItem Value="17">Y-Z</asp:ListItem>
                    <asp:ListItem Value="18">Fancy</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" SelectCommand="SELECT [Color_Name] FROM [Color]"></asp:SqlDataSource>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="DDL_Color_Id_VLD" runat="server" ControlToValidate="DDL_Color_Id"
                    ErrorMessage="Please select the color of the stone" InitialValue="select the color"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <%-- CLARITY --%>
        <tr>
            <td>Clarity:</td>
            <td>
                <asp:DropDownList ID="DDL_Clarity_Id" runat="server" DataSourceID="SqlDataSource3" DataTextField="Clarity_Name" DataValueField="Clarity_Name">
                    <asp:ListItem>Select a clarity for the stone</asp:ListItem>
                    <asp:ListItem Value="1">I3</asp:ListItem>
                    <asp:ListItem Value="2">I2</asp:ListItem>
                    <asp:ListItem Value="3">I1</asp:ListItem>
                    <asp:ListItem Value="4">SI2</asp:ListItem>
                    <asp:ListItem Value="5">SI1</asp:ListItem>
                    <asp:ListItem Value="6">VS2</asp:ListItem>
                    <asp:ListItem Value="7">VS1</asp:ListItem>
                    <asp:ListItem Value="8">VVS1</asp:ListItem>
                    <asp:ListItem Value="9">VVS2</asp:ListItem>
                    <asp:ListItem Value="10">IF</asp:ListItem>
                    <asp:ListItem Value="11">FL</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" SelectCommand="SELECT [Clarity_Name] FROM [Clarity]"></asp:SqlDataSource>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="DDL_Clarity_Id_VLD" runat="server" ControlToValidate="DDL_Clarity_Id"
                    ErrorMessage="Please select the clarity of the stone" InitialValue="select the clarity"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <%-- M1 --%>
        <tr>
            <td>M1:</td>
            <td>
                <input id="M1_TB" type="text" runat="server" />
            </td>
            <td>
                <asp:RequiredFieldValidator ID="M1_VLD" ControlToValidate="M1_TB" runat="server" ErrorMessage="Please select the M1 of the stone"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <%-- M2 --%>
        <tr>
            <td class="auto-style1">M2:</td>
            <td class="auto-style1">
                <input id="M2_TB" type="text" runat="server" />
            </td>
            <td class="auto-style1">
                <asp:RequiredFieldValidator ID="M2_VLD" ControlToValidate="M2_TB" runat="server" ErrorMessage="Please select the M2 of the stone"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <%-- M3 --%>
        <tr>
            <td>M3:</td>
            <td>
                <input id="M3_TB" type="text" runat="server" />
            </td>
            <td>
                <asp:RequiredFieldValidator ID="M3_VLD" ControlToValidate="M3_TB" runat="server" ErrorMessage="Please select the M3 of the stone"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <%-- DEPTH --%>
        <tr>
            <td>Depth:</td>
            <td>
                <input id="Depth_TB" type="text" runat="server" />
            </td>
            <td>
                <asp:RequiredFieldValidator ID="Depth_VLD" ControlToValidate="Depth_TB" runat="server" ErrorMessage="Please enter the depth of the stone"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <%-- TABLE --%>
        <tr>
            <td>Table:</td>
            <td>
                <input id="Table_TB" type="text" runat="server" />
            </td>
            <td class="auto-style2">
                <asp:RequiredFieldValidator ID="Table_VLD" ControlToValidate="Table_TB" runat="server" ErrorMessage="Please enter the table of the stone"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <%-- GIRDLE --%>
        <tr>
            <td>Girdle:</td>
            <td>
                <asp:DropDownList ID="DDL_Girdle_Id" runat="server" DataSourceID="SqlDataSource4" DataTextField="Girdle_Name" DataValueField="Girdle_Name">
                    <asp:ListItem>Select a girdle for the stone</asp:ListItem>
                    <asp:ListItem Value="1">ETN</asp:ListItem>
                    <asp:ListItem Value="2">VTN</asp:ListItem>
                    <asp:ListItem Value="3">THN</asp:ListItem>
                    <asp:ListItem Value="4">STN</asp:ListItem>
                    <asp:ListItem Value="5">MED</asp:ListItem>
                    <asp:ListItem Value="6">STK</asp:ListItem>
                    <asp:ListItem Value="7">THK</asp:ListItem>
                    <asp:ListItem Value="8">VTK</asp:ListItem>
                    <asp:ListItem Value="9">ETK</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" SelectCommand="SELECT [Girdle_Name] FROM [Girdle]"></asp:SqlDataSource>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="DDL_Girdle_Id_VLD" runat="server" ControlToValidate="DDL_Girdle_Id"
                    ErrorMessage="Please select the girdle of the stone" InitialValue="select the girdle"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <%-- CULET --%>
        <tr>
            <td>Culet:</td>
            <td>
                <asp:DropDownList ID="DDL_Culet_Id" runat="server" DataSourceID="SqlDataSource5" DataTextField="Culet_Name" DataValueField="Culet_Name">
                    <asp:ListItem>Select a culet for the stone</asp:ListItem>
                    <asp:ListItem Value="1">None</asp:ListItem>
                    <asp:ListItem Value="2">Pointed</asp:ListItem>
                    <asp:ListItem Value="3">Very Small</asp:ListItem>
                    <asp:ListItem Value="4">Small</asp:ListItem>
                    <asp:ListItem Value="5">Medium</asp:ListItem>
                    <asp:ListItem Value="6">Slightly Large</asp:ListItem>
                    <asp:ListItem Value="7">Large</asp:ListItem>
                    <asp:ListItem Value="8">Very Large</asp:ListItem>
                    <asp:ListItem Value="9">Extremely Large</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" SelectCommand="SELECT [Culet_Name] FROM [Culet]"></asp:SqlDataSource>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="DDL_Culet_Id_VLD" runat="server" ControlToValidate="DDL_Culet_Id"
                    ErrorMessage="Please select the culet of the stone" InitialValue="select the culet"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <%-- CUT --%>
        <tr>
            <td>Cut:</td>
            <td>
                <asp:DropDownList ID="DDL_Cut_Id" runat="server" DataSourceID="SqlDataSource6" DataTextField="Cut_Name" DataValueField="Cut_Name">
                    <asp:ListItem>Select a cut grade for the stone</asp:ListItem>
                    <asp:ListItem Value="1">ID</asp:ListItem>
                    <asp:ListItem Value="2">EX</asp:ListItem>
                    <asp:ListItem Value="3">VG</asp:ListItem>
                    <asp:ListItem Value="4">G</asp:ListItem>
                    <asp:ListItem Value="5">F</asp:ListItem>
                    <asp:ListItem Value="6">P</asp:ListItem>

                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" SelectCommand="SELECT [Cut_Name] FROM [Cut]"></asp:SqlDataSource>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="DDL_Cut_Id_VLD" runat="server" ControlToValidate="DDL_Cut_Id"
                    ErrorMessage="Please select the cut grade of the stone" InitialValue="select the cut"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <%-- POLISH --%>
        <tr>
            <td>Polish:</td>
            <td>
                <asp:DropDownList ID="DDL_Polish_Id" runat="server" DataSourceID="SqlDataSource7" DataTextField="Polish_Name" DataValueField="Polish_Name">
                    <asp:ListItem>Select a polish for the stone</asp:ListItem>
                    <asp:ListItem Value="1">ID</asp:ListItem>
                    <asp:ListItem Value="2">EX</asp:ListItem>
                    <asp:ListItem Value="3">VG</asp:ListItem>
                    <asp:ListItem Value="4">G</asp:ListItem>
                    <asp:ListItem Value="5">F</asp:ListItem>
                    <asp:ListItem Value="6">P</asp:ListItem>

                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" SelectCommand="SELECT [Polish_Name] FROM [Polish]"></asp:SqlDataSource>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="DDL_Polish_Id_VLD" runat="server" ControlToValidate="DDL_Polish_Id"
                    ErrorMessage="Please select the polish of the stone" InitialValue="select the polish"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <%-- SYMMETRY --%>
        <tr>
            <td>Symmetry:</td>
            <td>
                <asp:DropDownList ID="DDL_Symmetry_Id" runat="server" DataSourceID="SqlDataSource8" DataTextField="Symmetry_Name" DataValueField="Symmetry_Name">
                    <asp:ListItem>Select a symmetry for the stone</asp:ListItem>
                    <asp:ListItem Value="1">ID</asp:ListItem>
                    <asp:ListItem Value="2">EX</asp:ListItem>
                    <asp:ListItem Value="3">VG</asp:ListItem>
                    <asp:ListItem Value="4">G</asp:ListItem>
                    <asp:ListItem Value="5">F</asp:ListItem>
                    <asp:ListItem Value="6">P</asp:ListItem>

                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" SelectCommand="SELECT [Symmetry_Name] FROM [Symmetry]"></asp:SqlDataSource>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="DDL_Symmetry_Id_VLD" runat="server" ControlToValidate="DDL_Symmetry_Id"
                    ErrorMessage="Please select the symmetry of the stone" InitialValue="select the symmetry"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <%-- FLUORESCENCE --%>
        <tr>
            <td>Fluorescence:</td>
            <td>
                <asp:DropDownList ID="DDL_Fluorescence_Id" runat="server" DataSourceID="SqlDataSource9" DataTextField="Fluorescence_Name" DataValueField="Fluorescence_Name">
                    <asp:ListItem>Select a fluorescence for the stone</asp:ListItem>
                    <asp:ListItem Value="1">NON</asp:ListItem>
                    <asp:ListItem Value="2">FNT</asp:ListItem>
                    <asp:ListItem Value="3">MED</asp:ListItem>
                    <asp:ListItem Value="4">STG</asp:ListItem>
                    <asp:ListItem Value="5">VST</asp:ListItem>
                    <asp:ListItem Value="6">SLT</asp:ListItem>
                    <asp:ListItem Value="7">VSL</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" SelectCommand="SELECT [Fluorescence_Name] FROM [Fluorescence]"></asp:SqlDataSource>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="DDL_Fluorescence_Id_VLD" runat="server" ControlToValidate="DDL_Fluorescence_Id"
                    ErrorMessage="Please select the fluorescence of the stone" InitialValue="select the fluorescence"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <%-- LAB --%>
        <tr>
            <td>Lab:</td>
            <td>
                <asp:DropDownList ID="DDL_Lab_Id" runat="server" DataSourceID="SqlDataSource10" DataTextField="Lab_Name" DataValueField="Lab_Name">
                    <asp:ListItem>Select a lab for the stone</asp:ListItem>
                    <asp:ListItem Value="1">GIA</asp:ListItem>
                    <asp:ListItem Value="2">IGI</asp:ListItem>
                    <asp:ListItem Value="3">HRD</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource10" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" SelectCommand="SELECT [Lab_Name] FROM [Lab]"></asp:SqlDataSource>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="DDL_Lab_Id_VLD" runat="server" ControlToValidate="DDL_Lab_Id"
                    ErrorMessage="Please select the lab of the stone" InitialValue="select the lab"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <%-- CERTIFICATE --%>
        <tr>
            <td>Certificate:</td>
            <td>
                <input id="Certificate_TB" type="text" runat="server" />
            </td>
            <td>
                <asp:RequiredFieldValidator ID="Certificate_VLD" ControlToValidate="Certificate_TB" runat="server" ErrorMessage="Please enter a stone certificate"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <%-- COST P DISCOUNT --%>
        <tr>
            <td>Cost P Discount:</td>
            <td>
                <input id="Cost_P_Discount_TB" type="text" runat="server" />
            </td>
            <td>
                <asp:RequiredFieldValidator ID="Cost_P_Discount_VLD" ControlToValidate="Cost_P_Discount_TB" runat="server" ErrorMessage="Please enter a stone cost p discount"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <%-- COST PRICE $ CT --%>
        <tr>
            <td>Cost Price $ CT:</td>
            <td>
                <input id="Cost_Price_CT_TB" type="text" runat="server" />
            </td>
            <td>
                <asp:RequiredFieldValidator ID="Cost_Price_CT_VLD" ControlToValidate="Cost_Price_CT_TB" runat="server" ErrorMessage="Please enter a stone cost price $ ct"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <%-- T. COST PRICE --%>
        <tr>
            <td>T. Cost Price:</td>
            <td>
                <input id="T_Cost_Price_TB" type="text" runat="server" />
            </td>
            <td>
                <asp:RequiredFieldValidator ID="T_Cost_Price_VLD" ControlToValidate="T_Cost_Price_TB" runat="server" ErrorMessage="Please enter a stone t. cost price"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <%-- SALE % DISCOUNT --%>
        <tr>
            <td>Sale % Discount:</td>
            <td>
                <input id="Sale_Discount_TB" type="text" runat="server" />
            </td>
            <td>
                <asp:RequiredFieldValidator ID="Sale_Discount_VLD" ControlToValidate="Sale_Discount_TB" runat="server" ErrorMessage="Please enter a stone sale % discount"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <%-- SALE PRICE $/CT --%>
        <tr>
            <td>Sale Price $ /CT:</td>
            <td>
                <input id="Sale_Price_CT_TB" type="text" runat="server" />
            </td>
            <td>
                <asp:RequiredFieldValidator ID="Sale_Price_CT_VLD" ControlToValidate="Sale_Price_CT_TB" runat="server" ErrorMessage="Please enter a stone sale price $ /ct"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <%-- T. SALE PRICE --%>
        <tr>
            <td>T. Sale Price:</td>
            <td>
                <input id="T_Sale_Price_TB" type="text" runat="server" />
            </td>
            <td>
                <asp:RequiredFieldValidator ID="T_Sale_Price_VLD" ControlToValidate="Sale_Price_ct_TB" runat="server" ErrorMessage="Please enter a stone t. sale price"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <%-- IMAGE --%>
        <tr>
            <td>Image:</td>
            <td>
                <asp:FileUpload ID="File_Load" runat="server" />
            </td>
            <td>
                <asp:RequiredFieldValidator ID="File_Load_VLD" ControlToValidate="File_Load" runat="server" ErrorMessage="Please upload the stone image"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <%-- STATUS --%>
        <tr>
            <td>Status:</td>
            <td>
                <asp:RadioButtonList ID="Status_RBL" runat="server">
                    <asp:ListItem>HOLD</asp:ListItem>
                    <asp:ListItem>MEMO</asp:ListItem>
                    <asp:ListItem>STOCK</asp:ListItem>
                    <asp:ListItem>SOLD</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="Status_VLD" ControlToValidate="Status_RBL" runat="server" ErrorMessage="Please enter a stone status"></asp:RequiredFieldValidator>
            </td>
        </tr>
    </table>

     <div style="float: left; margin-left: 40%">
        <asp:Button ID="Button1" runat="server" Text="add diamond" OnClick="Button1_Click" />
    </div>
</asp:Content>
