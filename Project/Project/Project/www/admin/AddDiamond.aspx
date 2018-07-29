<%@ Page Title="Add Diamond" Language="C#" MasterPageFile="~/css/MasterPage_Admin.master" AutoEventWireup="true"
    CodeFile="AddDiamond.aspx.cs" Inherits="www_AddDiamond" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 24px;
        }

        .auto-style4 {
            height: 25px;
        }
        td {
            color: white; 
        }

      
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h1>Add a new stone into the system</h1>
    <table style="width: 90%;">

        <%-- NAME --%>
        <tr>
            <td>Name:</td>
            <td>
                <input id="Name_TB" type="text" runat="server" causesvalidation="False" />
            </td>
            <td>
                <asp:RequiredFieldValidator ID="Name_VLD" ControlToValidate="Name_TB" runat="server"
                    ErrorMessage="Please enter a stone name" ValidationGroup="addDiamondValidationGroup"></asp:RequiredFieldValidator>
            </td>
            <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="CustomValidator"></asp:CustomValidator>
        </tr>

        <%-- WEIGHT --%>
        <tr>
            <td>Weight:</td>
            <td>
                <input id="Weight_TB" type="number" runat="server" step="any"/>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="Weight_VLD" ControlToValidate="Weight_TB" runat="server"
                    ErrorMessage="Please enter stone weight" ValidationGroup="addDiamondValidationGroup"></asp:RequiredFieldValidator>

                <asp:RequiredFieldValidator ID="Weight_VLD_2" ControlToValidate="Weight_TB" runat="server"
                    ErrorMessage="Please enter stone weight" ValidationGroup="rapaportValidationGroup"></asp:RequiredFieldValidator>
            </td>
        </tr>


        <%-- SHAPE --%>
        <tr>
            <td>Shape:</td>
            <td>
                <asp:DropDownList ID="DDL_Shape_Id" runat="server" DataSourceID="SqlDataSource1"
                    DataTextField="Shape_Name" DataValueField="ID" AppendDataBoundItems="True">
                    <asp:ListItem Text="select the shape" Value="0"></asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>"
                    SelectCommand="SELECT Shape_Name, ID FROM Shape"></asp:SqlDataSource>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="DDL_Shape_Id_VLD" runat="server" ControlToValidate="DDL_Shape_Id"
                    ErrorMessage="Please select the shape of the stone" InitialValue="0"
                    ValidationGroup="addDiamondValidationGroup"></asp:RequiredFieldValidator>

                <asp:RequiredFieldValidator ID="DDL_Shape_Id_VLD_2" runat="server" ControlToValidate="DDL_Shape_Id"
                    ErrorMessage="Please select the shape of the stone" InitialValue="0"
                    ValidationGroup="rapaportValidationGroup"></asp:RequiredFieldValidator>
            </td>
        </tr>

        <%-- COLOR --%>
        <tr>
            <td>Color:</td>
            <td>
                <asp:DropDownList ID="DDL_Color_Id" runat="server" DataSourceID="SqlDataSource2"
                    DataTextField="Color_Name" DataValueField="ID" AppendDataBoundItems="True">
                    <asp:ListItem Text="select the color" Value="0"></asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>"
                    SelectCommand="SELECT [Color_Name], [ID] FROM [Color]"></asp:SqlDataSource>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="DDL_Color_Id_VLD" runat="server" ControlToValidate="DDL_Color_Id"
                    ErrorMessage="Please select the color of the stone" InitialValue="0"
                    ValidationGroup="addDiamondValidationGroup"></asp:RequiredFieldValidator>

                <asp:RequiredFieldValidator ID="DDL_Color_Id_VLD_2" runat="server" ControlToValidate="DDL_Color_Id"
                    ErrorMessage="Please select the color of the stone" InitialValue="0"
                    ValidationGroup="rapaportValidationGroup"></asp:RequiredFieldValidator>
            </td>
        </tr>

        <%-- CLARITY --%>
        <tr>
            <td>Clarity:</td>
            <td>
                <asp:DropDownList ID="DDL_Clarity_Id" runat="server" DataSourceID="SqlDataSource3"
                    DataTextField="Clarity_Name" DataValueField="ID" AppendDataBoundItems="True">
                    <asp:ListItem Text="select the clarity" Value="0"></asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>"
                    SelectCommand="SELECT [Clarity_Name], [ID] FROM [Clarity]"></asp:SqlDataSource>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="DDL_Clarity_Id_VLD" runat="server" ControlToValidate="DDL_Clarity_Id"
                    ErrorMessage="Please select the clarity of the stone" InitialValue="0"
                    ValidationGroup="addDiamondValidationGroup"></asp:RequiredFieldValidator>

                <asp:RequiredFieldValidator ID="DDL_Clarity_Id_VLD_2" runat="server" ControlToValidate="DDL_Clarity_Id"
                    ErrorMessage="Please select the clarity of the stone" InitialValue="0"
                    ValidationGroup="rapaportValidationGroup"></asp:RequiredFieldValidator>
            </td>
        </tr>

        <%-- M1 --%>
        <tr>
            <td>M1:</td>
            <td>
                <input id="M1_TB" type="number" runat="server" step="any"/>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="M1_VLD" ControlToValidate="M1_TB" runat="server"
                    ErrorMessage="Please select the M1 of the stone" ValidationGroup="addDiamondValidationGroup"></asp:RequiredFieldValidator>
            </td>
        </tr>

        <%-- M2 --%>
        <tr>
            <td>M2:</td>
            <td>
                <input id="M2_TB" type="number" runat="server" step="any"/>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="M2_VLD" ControlToValidate="M2_TB" runat="server"
                    ErrorMessage="Please select the M2 of the stone" ValidationGroup="addDiamondValidationGroup"></asp:RequiredFieldValidator>
            </td>
        </tr>

        <%-- M3 --%>
        <tr>
            <td>M3:</td>
            <td>
                <input id="M3_TB" type="number" runat="server" step="any"/>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="M3_VLD" ControlToValidate="M3_TB" runat="server"
                    ErrorMessage="Please select the M3 of the stone" ValidationGroup="addDiamondValidationGroup"></asp:RequiredFieldValidator>
            </td>
        </tr>

        <%-- DEPTH --%>
        <tr>
            <td>Depth:</td>
            <td>
                <input id="Depth_TB" type="number" runat="server" step="any"/>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="Depth_VLD" ControlToValidate="Depth_TB" runat="server"
                    ErrorMessage="Please enter the depth of the stone" ValidationGroup="addDiamondValidationGroup"></asp:RequiredFieldValidator>
            </td>
        </tr>

        <%-- TABLE --%>
        <tr>
            <td>Table:</td>
            <td>
                <input id="Table_TB" type="number" runat="server" step="any"/>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="Table_VLD" ControlToValidate="Table_TB" runat="server"
                    ErrorMessage="Please enter the table of the stone" ValidationGroup="addDiamondValidationGroup"></asp:RequiredFieldValidator>
            </td>
        </tr>

        <%-- GIRDLE --%>
        <tr>
            <td>Girdle:</td>
            <td>
                <asp:DropDownList ID="DDL_Girdle_Id" runat="server" DataSourceID="SqlDataSource4"
                    DataTextField="Girdle_Name" DataValueField="ID" AppendDataBoundItems="True">
                    <asp:ListItem Text="select the girdle" Value="0"></asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>"
                    SelectCommand="SELECT [Girdle_Name], [ID] FROM [Girdle]"></asp:SqlDataSource>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="DDL_Girdle_Id_VLD" runat="server" ControlToValidate="DDL_Girdle_Id"
                    ErrorMessage="Please select the girdle of the stone" InitialValue="0"
                    ValidationGroup="addDiamondValidationGroup"></asp:RequiredFieldValidator>
            </td>
        </tr>

        <%-- CULET --%>
        <tr>
            <td>Culet:</td>
            <td>
                <asp:DropDownList ID="DDL_Culet_Id" runat="server" DataSourceID="SqlDataSource5"
                    DataTextField="Culet_Name" DataValueField="ID" AppendDataBoundItems="True">
                    <asp:ListItem Text="select the culet" Value="0"></asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>"
                    SelectCommand="SELECT [Culet_Name], [ID] FROM [Culet]"></asp:SqlDataSource>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="DDL_Culet_Id_VLD" runat="server" ControlToValidate="DDL_Culet_Id"
                    ErrorMessage="Please select the culet of the stone" InitialValue="0"
                    ValidationGroup="addDiamondValidationGroup"></asp:RequiredFieldValidator>
            </td>
        </tr>

        <%-- CUT --%>
        <tr>
            <td>Cut:</td>
            <td>
                <asp:DropDownList ID="DDL_Cut_Id" runat="server" DataSourceID="SqlDataSource6"
                    DataTextField="Cut_Name" DataValueField="ID" AppendDataBoundItems="True">
                    <asp:ListItem Text="select the cut" Value="0"></asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>"
                    SelectCommand="SELECT [Cut_Name], [ID] FROM [Cut]"></asp:SqlDataSource>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="DDL_Cut_Id_VLD" runat="server" ControlToValidate="DDL_Cut_Id"
                    ErrorMessage="Please select the cut grade of the stone" InitialValue="0"
                    ValidationGroup="addDiamondValidationGroup"></asp:RequiredFieldValidator>
            </td>
        </tr>

        <%-- POLISH --%>
        <tr>
            <td>Polish:</td>
            <td>
                <asp:DropDownList ID="DDL_Polish_Id" runat="server" DataSourceID="SqlDataSource7"
                    DataTextField="Polish_Name" DataValueField="ID" AppendDataBoundItems="True">
                    <asp:ListItem Text="select the polish" Value="0"></asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>"
                    SelectCommand="SELECT [Polish_Name], [ID] FROM [Polish]"></asp:SqlDataSource>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="DDL_Polish_Id_VLD" runat="server" ControlToValidate="DDL_Polish_Id"
                    ErrorMessage="Please select the polish of the stone" InitialValue="0"
                    ValidationGroup="addDiamondValidationGroup"></asp:RequiredFieldValidator>
            </td>
        </tr>

        <%-- SYMMETRY --%>
        <tr>
            <td>Symmetry:</td>
            <td>
                <asp:DropDownList ID="DDL_Symmetry_Id" runat="server" DataSourceID="SqlDataSource8"
                    DataTextField="Symmetry_Name" DataValueField="ID" AppendDataBoundItems="True">
                    <asp:ListItem Text="select the symmetry" Value="0"></asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>"
                    SelectCommand="SELECT [Symmetry_Name], [ID] FROM [Symmetry]"></asp:SqlDataSource>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="DDL_Symmetry_Id_VLD" runat="server" ControlToValidate="DDL_Symmetry_Id"
                    ErrorMessage="Please select the symmetry of the stone" InitialValue="0"
                    ValidationGroup="addDiamondValidationGroup"></asp:RequiredFieldValidator>
            </td>
        </tr>

        <%-- FLUORESCENCE --%>
        <tr>
            <td>Fluorescence:</td>
            <td>
                <asp:DropDownList ID="DDL_Fluorescence_Id" runat="server" DataSourceID="SqlDataSource9"
                    DataTextField="Fluorescence_Name" DataValueField="ID" AppendDataBoundItems="True">
                    <asp:ListItem Text="select the fluorescence" Value="0"></asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>"
                    SelectCommand="SELECT [Fluorescence_Name], [ID] FROM [Fluorescence]"></asp:SqlDataSource>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="DDL_Fluorescence_Id_VLD" runat="server" ControlToValidate="DDL_Fluorescence_Id"
                    ErrorMessage="Please select the fluorescence of the stone" InitialValue="0"
                    ValidationGroup="addDiamondValidationGroup"></asp:RequiredFieldValidator>
            </td>
        </tr>

        <%-- LAB --%>
        <tr>
            <td>Lab:</td>
            <td>
                <asp:DropDownList ID="DDL_Lab_Id" runat="server" DataSourceID="SqlDataSource10"
                    DataTextField="Lab_Name" DataValueField="ID" AppendDataBoundItems="True">
                    <asp:ListItem Text="select the lab" Value="0"></asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource10" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>"
                    SelectCommand="SELECT [Lab_Name], [ID] FROM [Lab]"></asp:SqlDataSource>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="DDL_Lab_Id_VLD" runat="server" ControlToValidate="DDL_Lab_Id"
                    ErrorMessage="Please select the lab of the stone" InitialValue="0"
                    ValidationGroup="addDiamondValidationGroup"></asp:RequiredFieldValidator>
            </td>
        </tr>

        <%-- CERTIFICATE --%>
        <tr>
            <td>Certificate:</td>
            <td>
                <input id="Certificate_TB" type="number" runat="server" />
            </td>
            <td>
                <asp:RequiredFieldValidator ID="Certificate_VLD" ControlToValidate="Certificate_TB" runat="server"
                    ErrorMessage="Please enter a stone certificate" ValidationGroup="addDiamondValidationGroup"></asp:RequiredFieldValidator>
            </td>
        </tr>

        <%-- COST P DISCOUNT --%>
        <tr>
            <td>Cost P Discount:</td>
            <td>
                <input id="Cost_P_Discount_TB" type="number" runat="server" step="any"/>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="Cost_P_Discount_VLD" ControlToValidate="Cost_P_Discount_TB" runat="server"
                    ErrorMessage="Please enter a stone cost p discount" ValidationGroup="addDiamondValidationGroup"></asp:RequiredFieldValidator>
            </td>
        </tr>

        <%-- COST PRICE $ CT --%>
        <tr>
            <td>Cost Price $ CT:</td>
            <td>
                <input id="Cost_Price_CT_TB" type="number" runat="server" step="any"/>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="Cost_Price_CT_VLD" ControlToValidate="Cost_Price_CT_TB" runat="server"
                    ErrorMessage="Please enter a stone cost price $ ct" ValidationGroup="addDiamondValidationGroup"></asp:RequiredFieldValidator>
            </td>
        </tr>

        <%-- T COST PRICE --%>
        <tr>
            <td>T. Cost Price:</td>
            <td>
                <input id="T_Cost_Price_TB" type="number" runat="server" step="any"/>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="T_Cost_Price_VLD" ControlToValidate="T_Cost_Price_TB" runat="server"
                    ErrorMessage="Please enter a stone t. cost price" ValidationGroup="addDiamondValidationGroup"></asp:RequiredFieldValidator>
            </td>
        </tr>

        <%-- SALE P DISCOUNT --%>
        <tr>
            <td>Sale P Discount:</td>
            <td>
                <input id="Sale_P_Discount_TB" type="number" runat="server" step="any"/>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="Sale_P_Discount_VLD" ControlToValidate="Sale_P_Discount_TB" runat="server"
                    ErrorMessage="Please enter a stone sale % discount" ValidationGroup="addDiamondValidationGroup"></asp:RequiredFieldValidator>
            </td>
        </tr>

        <%-- SALE PRICE $ CT --%>
        <tr>
            <td>Sale Price $ /CT:</td>
            <td>
                <input id="Sale_Price_CT_TB" type="number" runat="server" step="any"/>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="Sale_Price_CT_VLD" ControlToValidate="Sale_Price_CT_TB" runat="server"
                    ErrorMessage="Please enter a stone sale price $ /ct" ValidationGroup="addDiamondValidationGroup"></asp:RequiredFieldValidator>
            </td>
        </tr>

        <%-- T SALE PRICE --%>
        <tr>
            <td>T. Sale Price:</td>
            <td>
                <input id="T_Sale_Price_TB" type="number" runat="server" step="any"/>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="T_Sale_Price_VLD" ControlToValidate="Sale_Price_ct_TB" runat="server"
                    ErrorMessage="Please enter a stone t. sale price" ValidationGroup="addDiamondValidationGroup"></asp:RequiredFieldValidator>
            </td>
        </tr>

        <%-- IMAGE --%>
        <tr>
            <td>Image:</td>
            <td>
                <asp:FileUpload ID="File_Load" runat="server" />
            </td>
            <td>
                <asp:RequiredFieldValidator ID="File_Load_VLD" ControlToValidate="File_Load" runat="server"
                    ErrorMessage="Please upload the stone image" ValidationGroup="addDiamondValidationGroup"></asp:RequiredFieldValidator>
            </td>
        </tr>

        <%-- STATUS --%>
        <tr>
            <td>Status:</td>
            <td>
                <asp:RadioButtonList ID="Status_RBL" runat="server" DataSourceID="SqlDataSource11"
                    DataTextField="Status_Name" DataValueField="ID">
                </asp:RadioButtonList>
                <asp:SqlDataSource ID="SqlDataSource11" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>"
                    SelectCommand="SELECT [Status_Name], [ID] FROM [Status]"></asp:SqlDataSource>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="Status_VLD" ControlToValidate="Status_RBL" runat="server"
                    ErrorMessage="Please select a stone status" ValidationGroup="addDiamondValidationGroup"></asp:RequiredFieldValidator>
            </td>
        </tr>
    </table>

    <div style="float: left; margin-left: 40%">
        <asp:Button ID="btnAddDiamond" runat="server" Text="add diamond" OnClick="btnAddDiamond_Click"
            ValidationGroup="addDiamondValidationGroup" />
    </div>
        <div>
        <asp:Label ID="Label_Messages" runat="server" Text=""></asp:Label>
    </div>
    <div>
        <%-- USERNAME --%>
        <table>
            <tr>
                <td>username:</td>
                <td>
                    <input id="username_TB" type="text" runat="server" />
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="username_TB" runat="server"
                        ErrorMessage="Please enter the username" ValidationGroup="rapaportValidationGroup"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <%-- PASSWORD --%>
            <tr>
                <td>password:</td>
                <td>
                    <input id="password_TB" type="password" runat="server" />
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="password_TB" runat="server"
                        ErrorMessage="Please enter the password" ValidationGroup="rapaportValidationGroup"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
    </div>
    <div style="float: left; margin-left: 40%">
        <asp:Button ID="btnGetInfoFromRapaport" runat="server" Text="get info from Rapaport" OnClick="btnGetInfoFromRapaport_Click"
            ValidationGroup="rapaportValidationGroup" />
    </div>
    <asp:Label ID="lblCaratPriceTitle" runat="server" Text="Carat Price:"></asp:Label>
    <asp:Label ID="lblCaratPrice" runat="server" Text=""></asp:Label>
    <asp:Label ID="lblCaratPriceChange" runat="server" Text=""></asp:Label>
</asp:Content>
