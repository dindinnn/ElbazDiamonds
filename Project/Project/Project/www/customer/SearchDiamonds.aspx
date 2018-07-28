<%@ Page Title="" Language="C#" MasterPageFile="~/css/MasterPage_Customer.master" AutoEventWireup="true" CodeFile="SearchDiamonds.aspx.cs" Inherits="www_SearchDiamonds" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
    Search Diamond
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="Server">
    <!-- Title Page -->

    <section class="bg-title-page p-t-50 p-b-40 flex-col-c-m" style="background-image: url(../../../img/heading-pages-02.jpg);">
        <h2 class="l-text2 t-center">Women
        </h2>
        <p class="m-text13 t-center">
            New Arrivals Women Collection 2018
        </p>
    </section>

    <!-- Content page -->
    <section class="bgwhite p-t-55 p-b-65">
        <div class="container" id="container">
            <div class="row">
                <div class="col-xs-4 col-sm-6 col-md-8 col-lg-12 p-b-50">
                    <!--  -->
                    <div class="flex-sb-m flex-w p-b-35">
                        <div class="flex-w">
                            <!-- SEARCH-DIAMOND-BY-SAHPE-UL -->
                            <asp:PlaceHolder ID="SAHPE" runat="server">
                                <ul class="search-diamonds-by-shape">
                                    <li class="search-diamonds-by-shape">
                                        <input type="checkbox" id="ShapeCB_round" text="RB" value="round" class="search-diamonds-by-shape" runat="server" />
                                        <label class="search-diamonds-by-shape" for="RB" data-toggle="tooltip" title="Round">
                                            <img src="../../img/Customer/RB.jpg" class=" search-diamonds-by-shape" />
                                        </label>
                                    </li>
                                    <li class="search-diamonds-by-shape">
                                        <input type="checkbox" id="ShapeCB_asscher" class="search-diamonds-by-shape" runat="server" />
                                        <label class="search-diamonds-by-shape" for="ASH" data-toggle="tooltip" title="Asscher">
                                            <img src="../../img/Customer/ASH.jpg" class=" search-diamonds-by-shape" /></label>
                                    </li>
                                    <li class="search-diamonds-by-shape">
                                        <input type="checkbox" id="ShapeCB_cushion" class="search-diamonds-by-shape" runat="server" />
                                        <label for="CU" class="search-diamonds-by-shape" data-toggle="tooltip" title="cushion">
                                            <img src="../../img/Customer/CU.jpg" class=" search-diamonds-by-shape" /></label>
                                    </li>
                                    <li class="search-diamonds-by-shape">
                                        <input type="checkbox" id="ShapeCB_emerald" class="search-diamonds-by-shape" runat="server" />
                                        <label for="EM" class="search-diamonds-by-shape" data-toggle="tooltip" title="Emerald">
                                            <img src="../../img/Customer/EM.jpg" class=" search-diamonds-by-shape" /></label>
                                    </li>
                                    <li class="search-diamonds-by-shape">
                                        <input type="checkbox" id="ShapeCB_heart" class="search-diamonds-by-shape" runat="server" />
                                        <label for="HS" class="search-diamonds-by-shape" data-toggle="tooltip" title="Heart">
                                            <img src="../../img/Customer/HS.jpg" class=" search-diamonds-by-shape" /></label>
                                    </li>
                                    <li class="search-diamonds-by-shape">
                                        <input type="checkbox" id="ShapeCB_marquise" class="search-diamonds-by-shape" runat="server" />
                                        <label for="MQ" class="search-diamonds-by-shape" data-toggle="tooltip" title="marquise">
                                            <img src="../../img/Customer/MQ.jpg" class=" search-diamonds-by-shape" /></label>
                                    </li>
                                    <li class="search-diamonds-by-shape">
                                        <input type="checkbox" id="ShapeCB_oval" class="search-diamonds-by-shape" runat="server" />
                                        <label for="OV" class="search-diamonds-by-shape" data-toggle="tooltip" title="Oval">
                                            <img src="../../img/Customer/OV.jpg" class=" search-diamonds-by-shape" /></label>
                                    </li>
                                    <li class="search-diamonds-by-shape">
                                        <input type="checkbox" id="ShapeCB_princess" class="search-diamonds-by-shape" runat="server" />
                                        <label for="PR" class="search-diamonds-by-shape" data-toggle="tooltip" title="Princess">
                                            <img src="../../img/Customer/PR.jpg" class=" search-diamonds-by-shape" /></label>
                                    </li>
                                    <li class="search-diamonds-by-shape">
                                        <input type="checkbox" id="ShapeCB_radiant" class="search-diamonds-by-shape" runat="server" />
                                        <label for="RAD" class="search-diamonds-by-shape" data-toggle="tooltip" title="Radiant">
                                            <img src="../../img/Customer/RAD.jpg" class=" search-diamonds-by-shape" /></label>
                                    </li>
                                    <li class="search-diamonds-by-shape">
                                        <input type="checkbox" id="ShapeCB_pear" class="search-diamonds-by-shape" runat="server" />
                                        <label for="PS" class="search-diamonds-by-shape" data-toggle="tooltip" title="Pear">
                                            <img src="../../img/Customer/PS.jpg" class=" search-diamonds-by-shape" /></label>
                                    </li>
                                </ul>
                            </asp:PlaceHolder>

                            <!-- SEARCH-DIAMOND-BY-WEIGHT -->
                            <asp:PlaceHolder ID="WEIGHT" runat="server">
                                <div class="col-sm-6 col-lg-6 filter-row-half" style="margin-bottom: 20px;">
                                    <div class="filter-label">WEIGHT</div>
                                    <span class="input-background">
                                        <input style="width: 40%; text-align: center; color: black" data-toggle="tooltip" title="0" class="input-round-border input-left s-text4 size5 " min="0.1" max="10" id="weightMin" name="weightMin" type="number" runat="server">
                                        <span style="margin-left: 8px; margin-right: 8px">to</span>
                                        <input style="width: 40%; text-align: center; color: black" data-toggle="tooltip" title="10" class="input-round-border input-right s-text4 size5" min="0.1" max="10" id="weightTMax" name="weightTMax" type="number" runat="server">
                                    </span>
                                    &nbsp;
                                </div>
                            </asp:PlaceHolder>

                            <!-- SEARCH-DIAMOND-BY-PRICE -->
                            <div class="col-xs-6 col-sm-6 col-lg-6 filter-row-half" style="margin-bottom: 20px;">
                                <div class="filter-label">PRICE</div>
                                <span class="input-background">
                                    <input style="width: 40%; text-align: center; color: black" data-toggle="tooltip" title="$0" class="input-round-border input-left s-text4 size5 " min="1" max="1,000,000" id="priceMin" name="priceMin" type="number" runat="server">
                                    <span style="margin-left: 8px; margin-right: 8px">to</span>
                                    <input style="width: 40%; text-align: center; color: black" data-toggle="tooltip" title="$1,000,000" class="input-round-border input-left s-text4 size5 " min="1" max="1,000,000" id="PriceMax" name="PriceMax" type="number" runat="server">
                                </span>
                            </div>

                            <!-- SEARCH-DIAMOND-BY-CLARITY -->

                            <asp:PlaceHolder ID="CLARITY" runat="server">
                                <div class="col-xs-6 col-sm-6 col-lg-12 " style="margin-bottom: 20px; padding: 0;">
                                    <div class="filter-label">CLARITY</div>
                                    <div class="checkbox  " style="float: left; margin-top: -0.5%;">
                                        <label class="btn btn-default">
                                            <asp:CheckBox ID="ClarityCB_I3" runat="server" Text="I3"  />
                                        </label>
                                    </div>
                                    <div class="checkbox " style="float: left;">

                                        <label class="btn btn-default">
                                            <asp:CheckBox ID="ClarityCB_I2" runat="server" Text="I2" />
                                        </label>
                                    </div>
                                    <div class="checkbox " style="float: left;">
                                        <label class="btn btn-default">
                                            <asp:CheckBox ID="ClarityCB_I1" runat="server" Text="I1" />
                                        </label>
                                    </div>
                                    <div class="checkbox " style="float: left;">
                                        <label class="btn btn-default">
                                            <asp:CheckBox ID="ClarityCB_SI2" runat="server" Text="SI2" />
                                        </label>
                                    </div>
                                    <div class="checkbox " style="float: left;">
                                        <label class="btn btn-default">
                                            <asp:CheckBox ID="ClarityCB_SI1" runat="server" Text="SI1" />
                                        </label>
                                    </div>
                                    <div class="checkbox " style="float: left;">
                                        <label class="btn btn-default">
                                            <asp:CheckBox ID="ClarityCB_VS2" runat="server" Text="VS2" />
                                        </label>
                                    </div>
                                    <div class="checkbox " style="float: left;">
                                        <label class="btn btn-default">
                                            <asp:CheckBox ID="ClarityCB_VS1" runat="server" Text="VS1" />
                                        </label>
                                    </div>
                                    <div class="checkbox " style="float: left;">
                                        <label class="btn btn-default">
                                            <asp:CheckBox ID="ClarityCB_VVS2" runat="server" Text="VVS1" />
                                        </label>
                                    </div>
                                    <div class="checkbox " style="float: left;">
                                        <label class="btn btn-default">
                                            <asp:CheckBox ID="ClarityCB_VVS1" runat="server" Text="VVS1" />
                                        </label>
                                    </div>
                                    <div class="checkbox " style="float: left;">
                                        <label class="btn btn-default">
                                            <asp:CheckBox ID="ClarityCB_IF" runat="server" Text="IF" />
                                        </label>
                                    </div>
                                    <div class="checkbox " style="float: left;">
                                        <label class="btn btn-default">
                                            <asp:CheckBox ID="ClarityCB_FL" runat="server" Text="FL" />
                                        </label>
                                    </div>
                                </div>
                            </asp:PlaceHolder>

                            <!-- SEARCH-DIAMOND-BY-COLOR -->
                            <asp:PlaceHolder runat="server" ID="COLOR">
                                <div class="col-xs-6 col-sm-6 col-lg-12 " style="margin-bottom: 20px; padding: 0;">
                                    <div class="filter-label">COLOR</div>
                                    <div class="checkbox  " style="float: left; margin-top: -0.5%;">
                                        <label class="btn btn-default">
                                            <asp:CheckBox ID="ColorCB_D" runat="server" Text="D" />
                                        </label>
                                    </div>
                                    <div class="checkbox " style="float: left;">
                                        <label class="btn btn-default">
                                            <asp:CheckBox ID="ColorCB_E" runat="server" Text="E" />
                                        </label>
                                    </div>
                                    <div class="checkbox " style="float: left;">
                                        <label class="btn btn-default">
                                            <asp:CheckBox ID="ColorCB_F" runat="server" Text="F" />
                                        </label>
                                    </div>
                                    <div class="checkbox " style="float: left;">
                                        <label class="btn btn-default">
                                            <asp:CheckBox ID="ColorCB_G" runat="server" Text="G" />
                                        </label>
                                    </div>
                                    <div class="checkbox " style="float: left;">
                                        <label class="btn btn-default">
                                            <asp:CheckBox ID="ColorCB_H" runat="server" Text="H" />
                                        </label>
                                    </div>
                                    <div class="checkbox " style="float: left;">
                                        <label class="btn btn-default">
                                            <asp:CheckBox ID="ColorCB_I" runat="server" Text="I" />
                                        </label>
                                    </div>
                                    <div class="checkbox " style="float: left;">
                                        <label class="btn btn-default">
                                            <asp:CheckBox ID="ColorCB_J" runat="server" Text="J" />
                                        </label>
                                    </div>
                                    <div class="checkbox " style="float: left;">
                                        <label class="btn btn-default">
                                            <asp:CheckBox ID="ColorCB_K" runat="server" Text="K" />
                                        </label>
                                    </div>
                                    <div class="checkbox " style="float: left;">
                                        <label class="btn btn-default">
                                            <asp:CheckBox ID="ColorCB_L" runat="server" Text="L" />
                                        </label>
                                    </div>
                                    <div class="checkbox " style="float: left;">
                                        <label class="btn btn-default">
                                            <asp:CheckBox ID="ColorCB_M" runat="server" Text="M" />
                                        </label>
                                    </div>
                                    <div class="checkbox " style="float: left;">
                                        <label class="btn btn-default">
                                            <asp:CheckBox ID="ColorCB_N" runat="server" Text="N" />
                                        </label>
                                    </div>
                                    <div class="checkbox " style="float: left;">
                                        <label class="btn btn-default">
                                            <asp:CheckBox ID="ColorCB_O_P" runat="server" Text="O-P" />
                                        </label>
                                    </div>
                                    <div class="checkbox " style="float: left;">
                                        <label class="btn btn-default">
                                            <asp:CheckBox ID="ColorCB_Q_R" runat="server" Text="Q-R" />
                                        </label>
                                    </div>
                                    <div class="checkbox " style="float: left;">
                                        <label class="btn btn-default">
                                            <asp:CheckBox ID="ColorCB_S_T" runat="server" Text="S-T" />
                                        </label>
                                    </div>
                                    <div class="checkbox " style="float: left;">
                                        <label class="btn btn-default">
                                            <asp:CheckBox ID="ColorCB_U_V" runat="server" Text="U-V" />
                                        </label>
                                    </div>
                                    <div class="checkbox " style="float: left;">
                                        <label class="btn btn-default">
                                            <asp:CheckBox ID="ColorCB_W_X" runat="server" Text="W-X" />
                                        </label>
                                    </div>
                                    <div class="checkbox " style="float: left;">
                                        <label class="btn btn-default">
                                            <asp:CheckBox ID="ColorCB_Y_Z" runat="server" Text="Y-Z" />
                                        </label>
                                    </div>
                                    <div class="checkbox " style="float: left;">
                                        <label class="btn btn-default">
                                            <asp:CheckBox ID="ColorCB_Fancy" runat="server" Text="Fancy" />
                                        </label>
                                    </div>
                                </div>
                            </asp:PlaceHolder>

                            <!-- SEARCH-DIAMOND-BY-CUT -->
                            <asp:PlaceHolder runat="server" ID="CUT">
                                <div class="col-xs-6 col-sm-6 col-lg-2 " style="margin-bottom: 20px; padding: 0;">
                                    <div class="filter-label" style="margin-right: 90px;">CUT</div>
                                    <div class="checkbox  " style="float: left; margin-top: -0.5%;">
                                        <label class="btn btn-default">
                                            <asp:CheckBox ID="CutCB_ID" runat="server" Text="ID" />
                                        </label>
                                    </div>
                                    <div class="checkbox " style="float: left;">

                                        <label class="btn btn-default">
                                            <asp:CheckBox ID="CutCB_EX" runat="server" Text="EX" />
                                        </label>
                                    </div>
                                    <div class="checkbox " style="float: left;">
                                        <label class="btn btn-default">
                                            <asp:CheckBox ID="CutCB_VG" runat="server" Text="VG" />
                                        </label>
                                    </div>
                                    <div class="checkbox " style="float: left;">
                                        <label class="btn btn-default">
                                            <asp:CheckBox ID="CutCB_G" runat="server" Text="G" />
                                        </label>
                                    </div>
                                    <div class="checkbox " style="float: left;">
                                        <label class="btn btn-default">
                                            <asp:CheckBox ID="CutCB_F" runat="server" Text="F" />
                                        </label>
                                    </div>
                                    <div class="checkbox " style="float: left;">
                                        <label class="btn btn-default">
                                            <asp:CheckBox ID="CutCB_P" runat="server" Text="P" />
                                        </label>
                                    </div>
                                </div>
                            </asp:PlaceHolder>

                            <!-- SEARCH-DIAMOND-BY-POLISH -->
                            <asp:PlaceHolder runat="server" ID="POLISH">
                                <div class="col-xs-2 col-sm-2 col-lg-2 " style="margin-bottom: 20px; padding: 0;">
                                    <div class="filter-label" style="margin-right: 90px;">POLISH</div>
                                    <div class="checkbox  " style="float: left; margin-top: -0.5%;">
                                        <label class="btn btn-default">
                                            <asp:CheckBox ID="PolishCB_ID" runat="server" Text="ID" />
                                        </label>
                                    </div>
                                    <div class="checkbox " style="float: left;">

                                        <label class="btn btn-default">
                                            <asp:CheckBox ID="PolishCB_EX" runat="server" Text="EX" />
                                        </label>
                                    </div>
                                    <div class="checkbox " style="float: left;">
                                        <label class="btn btn-default">
                                            <asp:CheckBox ID="PolishCB_VG" runat="server" Text="VG" />
                                        </label>
                                    </div>
                                    <div class="checkbox " style="float: left;">
                                        <label class="btn btn-default">
                                            <asp:CheckBox ID="PolishCB_G" runat="server" Text="G" />
                                        </label>
                                    </div>
                                    <div class="checkbox " style="float: left;">
                                        <label class="btn btn-default">
                                            <asp:CheckBox ID="PolishCB_F" runat="server" Text="F" />
                                        </label>
                                    </div>
                                    <div class="checkbox " style="float: left;">
                                        <label class="btn btn-default">
                                            <asp:CheckBox ID="PolishCB_P" runat="server" Text="P" />
                                        </label>
                                    </div>
                                </div>
                            </asp:PlaceHolder>

                            <!-- SEARCH-DIAMOND-BY-SYMMETRY -->
                            <asp:PlaceHolder runat="server" ID="SYMMETRY">
                                <div class="col-xs-6 col-sm-6 col-lg-2 " style="margin-bottom: 20px; padding: 0;">
                                    <div class="filter-label" style="margin-right: 90px;">SYMMETRY</div>
                                    <div class="checkbox  " style="float: left; margin-top: -0.5%;">
                                        <label class="btn btn-default">
                                            <asp:CheckBox ID="SymmetryCB_ID" runat="server" Text="ID" />
                                        </label>
                                    </div>
                                    <div class="checkbox " style="float: left;">

                                        <label class="btn btn-default">
                                            <asp:CheckBox ID="SymmetryCB_EX" runat="server" Text="EX" />
                                        </label>
                                    </div>
                                    <div class="checkbox " style="float: left;">
                                        <label class="btn btn-default">
                                            <asp:CheckBox ID="SymmetryCB_VG" runat="server" Text="VG" />
                                        </label>
                                    </div>
                                    <div class="checkbox " style="float: left;">
                                        <label class="btn btn-default">
                                            <asp:CheckBox ID="SymmetryCB_G" runat="server" Text="G" />
                                        </label>
                                    </div>
                                    <div class="checkbox " style="float: left;">
                                        <label class="btn btn-default">
                                            <asp:CheckBox ID="SymmetryCB_F" runat="server" Text="F" />
                                        </label>
                                    </div>
                                    <div class="checkbox " style="float: left;">
                                        <label class="btn btn-default">
                                            <asp:CheckBox ID="SymmetryCB_P" runat="server" Text="P" />
                                        </label>
                                    </div>
                                </div>
                            </asp:PlaceHolder>

                            <!-- SEARCH-DIAMOND-BY-LAB -->
                            <asp:PlaceHolder runat="server" ID="LAB">
                                <div class="col-xs-6 col-sm-6 col-lg-2 " style="margin-bottom: 20px; padding: 0;">
                                    <div class="filter-label" style="margin-right: 90px;">LAB</div>
                                    <div class="checkbox  " style="float: left; margin-top: -0.5%;">
                                        <label class="btn btn-default">
                                            <asp:CheckBox ID="LabCB_GIA" runat="server" Text="GIA" />
                                        </label>
                                    </div>
                                    <div class="checkbox " style="float: left;">

                                        <label class="btn btn-default">
                                            <asp:CheckBox ID="LabCB_IGI" runat="server" Text="IGI" />
                                        </label>
                                    </div>
                                    <div class="checkbox " style="float: left;">
                                        <label class="btn btn-default">
                                            <asp:CheckBox ID="LabCB_HRD" runat="server" Text="HRD" />
                                        </label>
                                    </div>
                                </div>
                            </asp:PlaceHolder>

                            <!-- SEARCH-DIAMOND-BY-NAME -->
                            <asp:PlaceHolder runat="server" ID="NAME">
                                <div class="search-product pos-relative bo4 of-hidden" style="height: 50px">
                                    <input class="s-text7 size6 p-l-23 p-r-50" type="text"
                                        id="Search_By_ID" name="search-product" placeholder="SEARCH BY NAME" runat="server">
                                </div>
                            </asp:PlaceHolder>

                            <!-- SEARCH-BUTTON -->

                            <asp:Button ID="Button_find_diamonds" runat="server" Text="FIND ME A DIAMOND!" OnClick="Button_find_diamonds_Click" />
                        </div>
                    </div>



                    <!-- Product -->

                    <div class="row" id="stones_div_table" runat="server">
                    </div>


                </div>
            </div>
        </div>
    </section>


    <!-- Back to top -->
    <div class="btn-back-to-top bg0-hov" id="myBtn">
        <span class="symbol-btn-back-to-top">
            <i class="fa fa-angle-double-up" aria-hidden="true"></i>
        </span>
    </div>

    <!-- Container Selection -->
    <div id="dropDownSelect1">
    </div>
    <div id="dropDownSelect2"></div>

    <script>
        $(document).ready(function () {
            $('[data-toggle="tooltip"]').tooltip();
        });
    </script>
</asp:Content>

