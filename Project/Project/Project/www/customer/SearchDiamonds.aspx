<%@ Page Title="" Language="C#" MasterPageFile="~/css/MasterPage_Customer.master" AutoEventWireup="true" CodeFile="SearchDiamonds.aspx.cs" Inherits="www_SearchDiamonds" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
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
        <div class="container">
            <div class="row">
                <div class="col-xs-4 col-sm-6 col-md-8 col-lg-12 p-b-50">
                    <!--  -->
                    <div class="flex-sb-m flex-w p-b-35">
                        <div class="flex-w">

                            <!-- SEARCH-DIAMOND-BY-SAHPE-UL -->
                            <ul class="search-diamonds-by-shape">
                                <li class="search-diamonds-by-shape">
                                    <input type="checkbox" id="RB" class="search-diamonds-by-shape" runat="server" checked />
                                    <label class="search-diamonds-by-shape" for="RB" data-toggle="tooltip" title="Round">
                                        <img src="../../img/Customer/RB.jpg" class=" search-diamonds-by-shape" />
                                    </label>
                                </li>
                                <li class="search-diamonds-by-shape">
                                    <input type="checkbox" id="ASH" class="search-diamonds-by-shape" runat="server" />
                                    <label class="search-diamonds-by-shape" for="ASH" data-toggle="tooltip" title="asscher">
                                        <img src="../../img/Customer/ASH.jpg" class=" search-diamonds-by-shape" /></label>
                                </li>
                                <li class="search-diamonds-by-shape">
                                    <input type="checkbox" id="CU" class="search-diamonds-by-shape" runat="server" />
                                    <label for="CU" class="search-diamonds-by-shape" data-toggle="tooltip" title="cushion">
                                        <img src="../../img/Customer/CU.jpg" class=" search-diamonds-by-shape" /></label>
                                </li>
                                <li class="search-diamonds-by-shape">
                                    <input type="checkbox" id="EM" class="search-diamonds-by-shape" runat="server" />
                                    <label for="EM" class="search-diamonds-by-shape" data-toggle="tooltip" title="emerald">
                                        <img src="../../img/Customer/EM.jpg" class=" search-diamonds-by-shape" /></label>
                                </li>
                                <li class="search-diamonds-by-shape">
                                    <input type="checkbox" id="HS" class="search-diamonds-by-shape" runat="server" />
                                    <label for="HS" class="search-diamonds-by-shape" data-toggle="tooltip" title="heart">
                                        <img src="../../img/Customer/HS.jpg" class=" search-diamonds-by-shape" /></label>
                                </li>
                                <li class="search-diamonds-by-shape">
                                    <input type="checkbox" id="MQ" class="search-diamonds-by-shape" runat="server" />
                                    <label for="MQ" class="search-diamonds-by-shape" data-toggle="tooltip" title="marquise">
                                        <img src="../../img/Customer/MQ.jpg" class=" search-diamonds-by-shape" /></label>
                                </li>
                                <li class="search-diamonds-by-shape">
                                    <input type="checkbox" id="OV" class="search-diamonds-by-shape" runat="server" />
                                    <label for="OV" class="search-diamonds-by-shape" data-toggle="tooltip" title="oval">
                                        <img src="../../img/Customer/OV.jpg" class=" search-diamonds-by-shape" /></label>
                                </li>
                                <li class="search-diamonds-by-shape">
                                    <input type="checkbox" id="PR" class="search-diamonds-by-shape" runat="server" />
                                    <label for="PR" class="search-diamonds-by-shape" data-toggle="tooltip" title="princess">
                                        <img src="../../img/Customer/PR.jpg" class=" search-diamonds-by-shape" /></label>
                                </li>
                                <li class="search-diamonds-by-shape">
                                    <input type="checkbox" id="RAD" class="search-diamonds-by-shape" runat="server" />
                                    <label for="RAD" class="search-diamonds-by-shape" data-toggle="tooltip" title="radiant">
                                        <img src="../../img/Customer/RAD.jpg" class=" search-diamonds-by-shape" /></label>
                                </li>
                                <li class="search-diamonds-by-shape">
                                    <input type="checkbox" id="PS" class="search-diamonds-by-shape" runat="server" />
                                    <label for="PS" class="search-diamonds-by-shape" data-toggle="tooltip" title="pear">
                                        <img src="../../img/Customer/PS.jpg" class=" search-diamonds-by-shape" /></label>
                                </li>
                            </ul>

                            <!-- SEARCH-DIAMOND-BY-WEIGHT -->
                            <div class="col-sm-6 col-lg-6 filter-row-half" style="margin-bottom: 20px;">
                                <div class="filter-label">WEIGHT</div>
                                <span class="input-background">
                                    <input style="width: 40%; text-align: center;" class="input-round-border input-left s-text4 size5 " min="0.10" max="4.00" id="caratsmin" value="0.10" type="number" runat="server">
                                    <span style="margin-left: 8px; margin-right: 8px">to</span>
                                    <input style="width: 40%; text-align: center;" class="input-round-border input-right s-text4 size5" min="1" max="10" id="caratsmax" value="10.00" type="number" runat="server">
                                </span>
                            </div>

                            <!-- SEARCH-DIAMOND-BY-PRICE -->
                            <div class="col-xs-6 col-sm-6 col-lg-6 filter-row-half" style="margin-bottom: 20px;">
                                <div class="filter-label">PRICE</div>
                                <span class="input-background">
                                    <input style="width: 40%; text-align: center;" class="input-round-border input-left s-text4 size5 " min="$1" max="$1,000,000" id="Number1" value="$1" type="number" runat="server">
                                    <span style="margin-left: 8px; margin-right: 8px">to</span>
                                    <input style="width: 40%; text-align: center;" class="input-round-border input-right s-text4 size5" min="$1" max="$1,000,000" id="Number2" value="$1,000,000" type="number" runat="server">
                                </span>
                            </div>

                            <!-- SEARCH-DIAMOND-BY-CLARITY -->
                            <div class="col-xs-6 col-sm-6 col-lg-12 " style="margin-bottom: 20px; padding: 0;">
                                <div class="filter-label">CLARITY</div>
                                <div class="checkbox  " style="float: left; margin-top: -0.5%;">
                                    <label class="btn btn-default">
                                        <asp:CheckBox ID="I3" runat="server" Text="I3" />
                                    </label>
                                </div>
                                <div class="checkbox " style="float: left;">

                                    <label class="btn btn-default">
                                        <asp:CheckBox ID="I2" runat="server" Text="I2" />
                                    </label>
                                </div>
                                <div class="checkbox " style="float: left;">
                                    <label class="btn btn-default">
                                        <asp:CheckBox ID="I1" runat="server" Text="I1" />
                                    </label>
                                </div>
                                <div class="checkbox " style="float: left;">
                                    <label class="btn btn-default">
                                        <asp:CheckBox ID="SI2" runat="server" Text="SI2" />
                                    </label>
                                </div>
                                <div class="checkbox " style="float: left;">
                                    <label class="btn btn-default">
                                        <asp:CheckBox ID="SI1" runat="server" Text="SI1" />
                                    </label>
                                </div>
                                <div class="checkbox " style="float: left;">
                                    <label class="btn btn-default">
                                        <asp:CheckBox ID="VS2" runat="server" Text="VS2" />
                                    </label>
                                </div>
                                <div class="checkbox " style="float: left;">
                                    <label class="btn btn-default">
                                        <asp:CheckBox ID="VS1" runat="server" Text="VS1" />
                                    </label>
                                </div>
                                <div class="checkbox " style="float: left;">
                                    <label class="btn btn-default">
                                        <asp:CheckBox ID="VVS2" runat="server" Text="VVS1" />
                                    </label>
                                </div>
                                <div class="checkbox " style="float: left;">
                                    <label class="btn btn-default">
                                        <asp:CheckBox ID="VVS1" runat="server" Text="VVS1" />
                                    </label>
                                </div>
                                <div class="checkbox " style="float: left;">
                                    <label class="btn btn-default">
                                        <asp:CheckBox ID="IF" runat="server" Text="IF" />
                                    </label>
                                </div>
                                <div class="checkbox " style="float: left;">
                                    <label class="btn btn-default">
                                        <asp:CheckBox ID="FL" runat="server" Text="FL" />
                                    </label>
                                </div>
                            </div>

                            <!-- SEARCH-DIAMOND-BY-COLOR -->
                            <div class="col-xs-6 col-sm-6 col-lg-12 " style="margin-bottom: 20px; padding: 0;">
                                <div class="filter-label">COLOR</div>
                                <div class="checkbox  " style="float: left; margin-top: -0.5%;">
                                    <label class="btn btn-default">
                                        <asp:CheckBox ID="D" runat="server" Text="D" />
                                    </label>
                                </div>
                                <div class="checkbox " style="float: left;">
                                    <label class="btn btn-default">
                                        <asp:CheckBox ID="E" runat="server" Text="E" />
                                    </label>
                                </div>
                                <div class="checkbox " style="float: left;">
                                    <label class="btn btn-default">
                                        <asp:CheckBox ID="F" runat="server" Text="F" />
                                    </label>
                                </div>
                                <div class="checkbox " style="float: left;">
                                    <label class="btn btn-default">
                                        <asp:CheckBox ID="G" runat="server" Text="G" />
                                    </label>
                                </div>
                                <div class="checkbox " style="float: left;">
                                    <label class="btn btn-default">
                                        <asp:CheckBox ID="H" runat="server" Text="H" />
                                    </label>
                                </div>
                                <div class="checkbox " style="float: left;">
                                    <label class="btn btn-default">
                                        <asp:CheckBox ID="I" runat="server" Text="I" />
                                    </label>
                                </div>
                                <div class="checkbox " style="float: left;">
                                    <label class="btn btn-default">
                                        <asp:CheckBox ID="J" runat="server" Text="J" />
                                    </label>
                                </div>
                                <div class="checkbox " style="float: left;">
                                    <label class="btn btn-default">
                                        <asp:CheckBox ID="K" runat="server" Text="K" />
                                    </label>
                                </div>
                                <div class="checkbox " style="float: left;">
                                    <label class="btn btn-default">
                                        <asp:CheckBox ID="L" runat="server" Text="L" />
                                    </label>
                                </div>
                                <div class="checkbox " style="float: left;">
                                    <label class="btn btn-default">
                                        <asp:CheckBox ID="M" runat="server" Text="M" />
                                    </label>
                                </div>
                                <div class="checkbox " style="float: left;">
                                    <label class="btn btn-default">
                                        <asp:CheckBox ID="N" runat="server" Text="N" />
                                    </label>
                                </div>
                                <div class="checkbox " style="float: left;">
                                    <label class="btn btn-default">
                                        <asp:CheckBox ID="O_P" runat="server" Text="O-P" />
                                    </label>
                                </div>
                                <div class="checkbox " style="float: left;">
                                    <label class="btn btn-default">
                                        <asp:CheckBox ID="Q_R" runat="server" Text="Q-R" />
                                    </label>
                                </div>
                                <div class="checkbox " style="float: left;">
                                    <label class="btn btn-default">
                                        <asp:CheckBox ID="S_T" runat="server" Text="S-T" />
                                    </label>
                                </div>
                                <div class="checkbox " style="float: left;">
                                    <label class="btn btn-default">
                                        <asp:CheckBox ID="U_V" runat="server" Text="U-V" />
                                    </label>
                                </div>
                                <div class="checkbox " style="float: left;">
                                    <label class="btn btn-default">
                                        <asp:CheckBox ID="W_X" runat="server" Text="W-X" />
                                    </label>
                                </div>
                                <div class="checkbox " style="float: left;">
                                    <label class="btn btn-default">
                                        <asp:CheckBox ID="Y_Z" runat="server" Text="Y-Z" />
                                    </label>
                                </div>
                                <div class="checkbox " style="float: left;">
                                    <label class="btn btn-default">
                                        <asp:CheckBox ID="Fancy" runat="server" Text="Fancy" />
                                    </label>
                                </div>
                            </div>

                            <!-- SEARCH-DIAMOND-BY-CUT -->
                            <div class="col-xs-6 col-sm-6 col-lg-2 " style="margin-bottom: 20px; padding: 0;">
                                <div class="filter-label" style="margin-right: 90px;">CUT</div>
                                <div class="checkbox  " style="float: left; margin-top: -0.5%;">
                                    <label class="btn btn-default">
                                        <asp:CheckBox ID="ID_Cut" runat="server" Text="ID" />
                                    </label>
                                </div>
                                <div class="checkbox " style="float: left;">

                                    <label class="btn btn-default">
                                        <asp:CheckBox ID="EX_Cut" runat="server" Text="EX" />
                                    </label>
                                </div>
                                <div class="checkbox " style="float: left;">
                                    <label class="btn btn-default">
                                        <asp:CheckBox ID="VG_Cut" runat="server" Text="VG" />
                                    </label>
                                </div>
                                <div class="checkbox " style="float: left;">
                                    <label class="btn btn-default">
                                        <asp:CheckBox ID="G_Cut" runat="server" Text="G" />
                                    </label>
                                </div>
                                <div class="checkbox " style="float: left;">
                                    <label class="btn btn-default">
                                        <asp:CheckBox ID="F_Cut" runat="server" Text="F" />
                                    </label>
                                </div>
                                <div class="checkbox " style="float: left;">
                                    <label class="btn btn-default">
                                        <asp:CheckBox ID="P_Cut" runat="server" Text="P" />
                                    </label>
                                </div>
                            </div>

                            <!-- SEARCH-DIAMOND-BY-POLISH -->
                            <div class="col-xs-2 col-sm-2 col-lg-2 " style="margin-bottom: 20px; padding: 0;">
                                <div class="filter-label" style="margin-right: 90px;">POLISH</div>
                                <div class="checkbox  " style="float: left; margin-top: -0.5%;">
                                    <label class="btn btn-default">
                                        <asp:CheckBox ID="ID_Polish" runat="server" Text="ID" />
                                    </label>
                                </div>
                                <div class="checkbox " style="float: left;">

                                    <label class="btn btn-default">
                                        <asp:CheckBox ID="EX_Polish" runat="server" Text="EX" />
                                    </label>
                                </div>
                                <div class="checkbox " style="float: left;">
                                    <label class="btn btn-default">
                                        <asp:CheckBox ID="VG_Polish" runat="server" Text="VG" />
                                    </label>
                                </div>
                                <div class="checkbox " style="float: left;">
                                    <label class="btn btn-default">
                                        <asp:CheckBox ID="G__Polish" runat="server" Text="G" />
                                    </label>
                                </div>
                                <div class="checkbox " style="float: left;">
                                    <label class="btn btn-default">
                                        <asp:CheckBox ID="F_Polish" runat="server" Text="F" />
                                    </label>
                                </div>
                                <div class="checkbox " style="float: left;">
                                    <label class="btn btn-default">
                                        <asp:CheckBox ID="P_Polish" runat="server" Text="P" />
                                    </label>
                                </div>
                            </div>

                            <!-- SEARCH-DIAMOND-BY-SYMMETRY -->
                            <div class="col-xs-6 col-sm-6 col-lg-2 " style="margin-bottom: 20px; padding: 0;">
                                <div class="filter-label" style="margin-right: 90px;">SYMMETRY</div>
                                <div class="checkbox  " style="float: left; margin-top: -0.5%;">
                                    <label class="btn btn-default">
                                        <asp:CheckBox ID="ID_Symmetry" runat="server" Text="ID" />
                                    </label>
                                </div>
                                <div class="checkbox " style="float: left;">

                                    <label class="btn btn-default">
                                        <asp:CheckBox ID="EX_Symmetry" runat="server" Text="EX" />
                                    </label>
                                </div>
                                <div class="checkbox " style="float: left;">
                                    <label class="btn btn-default">
                                        <asp:CheckBox ID="VG_Symmetry" runat="server" Text="VG" />
                                    </label>
                                </div>
                                <div class="checkbox " style="float: left;">
                                    <label class="btn btn-default">
                                        <asp:CheckBox ID="G_Symmetry" runat="server" Text="G" />
                                    </label>
                                </div>
                                <div class="checkbox " style="float: left;">
                                    <label class="btn btn-default">
                                        <asp:CheckBox ID="F_Symmetry" runat="server" Text="F" />
                                    </label>
                                </div>
                                <div class="checkbox " style="float: left;">
                                    <label class="btn btn-default">
                                        <asp:CheckBox ID="P_Symmetry" runat="server" Text="P" />
                                    </label>
                                </div>
                            </div>

                            <!-- SEARCH-DIAMOND-BY-LAB -->
                            <div class="col-xs-6 col-sm-6 col-lg-2 " style="margin-bottom: 20px; padding: 0;">
                                <div class="filter-label" style="margin-right: 90px;">LAB</div>
                                <div class="checkbox  " style="float: left; margin-top: -0.5%;">
                                    <label class="btn btn-default">
                                        <asp:CheckBox ID="GIA" runat="server" Text="GIA" />
                                    </label>
                                </div>
                                <div class="checkbox " style="float: left;">

                                    <label class="btn btn-default">
                                        <asp:CheckBox ID="IGI" runat="server" Text="IGI" />
                                    </label>
                                </div>
                                <div class="checkbox " style="float: left;">
                                    <label class="btn btn-default">
                                        <asp:CheckBox ID="HRD" runat="server" Text="HRD" />
                                    </label>
                                </div>

                            </div>

                            <!-- SEARCH-DIAMOND-BY-ID -->
                            <div class="search-product pos-relative bo4 of-hidden" style="height: 50px">
                                <input class="s-text7 size6 p-l-23 p-r-50" type="text"
                                    id="Search_By_ID" name="search-product" placeholder="Search By stone ID" runat="server">
                            </div>

                            <!-- SEARCH-BUTTON -->
                            <button class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-5">
                                FIND ME A DIAMOND!
                            </button>

                        </div>
                    </div>

                    <!-- Product -->
                    <asp:PlaceHolder ID="ph" runat="server" ></asp:PlaceHolder>
                    <div class="row">
                        <div class="col-sm-12 col-md-6 col-lg-4 p-b-50">
                            <!-- Block2 -->
                            <div class="block2">
                                <div class="block2-img wrap-pic-w of-hidden pos-relative block2-labelnew">
                                    <img src="../../../img/item-02.jpg" alt="IMG-PRODUCT">

                                    <div class="block2-overlay trans-0-4">
                                        <a href="#" class="block2-btn-addwishlist hov-pointer trans-0-4">
                                            <i class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
                                            <i class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
                                        </a>
                                        <div class="block2-btn-addcart w-size1 trans-0-4">
                                            <!-- Button -->
                                            <button class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
                                                Add to Cart
                                            </button>
                                        </div>
                                    </div>
                                </div>

                                <div class="block2-txt p-t-20">
                                    <a href="product-detail.html" class="block2-name dis-block s-text3 p-b-5">Herschel supply co 25l
                                    </a>

                                    <span class="block2-price m-text6 p-r-5">$75.00
                                    </span>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-12 col-md-6 col-lg-4 p-b-50">
                            <!-- Block2 -->
                            <div class="block2">
                                <div class="block2-img wrap-pic-w of-hidden pos-relative">
                                    <img src="../../../img/item-03.jpg" alt="IMG-PRODUCT">

                                    <div class="block2-overlay trans-0-4">
                                        <a href="#" class="block2-btn-addwishlist hov-pointer trans-0-4">
                                            <i class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
                                            <i class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
                                        </a>

                                        <div class="block2-btn-addcart w-size1 trans-0-4">
                                            <!-- Button -->
                                            <button class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
                                                Add to Cart
                                            </button>
                                        </div>
                                    </div>
                                </div>

                                <div class="block2-txt p-t-20">
                                    <a href="product-detail.html" class="block2-name dis-block s-text3 p-b-5">Denim jacket blue
                                    </a>

                                    <span class="block2-price m-text6 p-r-5">$92.50
                                    </span>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-12 col-md-6 col-lg-4 p-b-50">
                            <!-- Block2 -->
                            <div class="block2">
                                <div class="block2-img wrap-pic-w of-hidden pos-relative">
                                    <img src="../../../img/item-05.jpg" alt="IMG-PRODUCT">

                                    <div class="block2-overlay trans-0-4">
                                        <a href="#" class="block2-btn-addwishlist hov-pointer trans-0-4">
                                            <i class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
                                            <i class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
                                        </a>

                                        <div class="block2-btn-addcart w-size1 trans-0-4">
                                            <!-- Button -->
                                            <button class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
                                                Add to Cart
                                            </button>
                                        </div>
                                    </div>
                                </div>

                                <div class="block2-txt p-t-20">
                                    <a href="product-detail.html" class="block2-name dis-block s-text3 p-b-5">Coach slim easton black
                                    </a>

                                    <span class="block2-price m-text6 p-r-5">$165.90
                                    </span>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-12 col-md-6 col-lg-4 p-b-50">
                            <!-- Block2 -->
                            <div class="block2">
                                <div class="block2-img wrap-pic-w of-hidden pos-relative block2-labelsale">
                                    <img src="../../../img/item-07.jpg" alt="IMG-PRODUCT">

                                    <div class="block2-overlay trans-0-4">
                                        <a href="#" class="block2-btn-addwishlist hov-pointer trans-0-4">
                                            <i class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
                                            <i class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
                                        </a>

                                        <div class="block2-btn-addcart w-size1 trans-0-4">
                                            <!-- Button -->
                                            <button class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
                                                Add to Cart
                                            </button>
                                        </div>
                                    </div>
                                </div>

                                <div class="block2-txt p-t-20">
                                    <a href="product-detail.html" class="block2-name dis-block s-text3 p-b-5">Frayed denim shorts
                                    </a>

                                    <span class="block2-oldprice m-text7 p-r-5">$29.50
                                    </span>

                                    <span class="block2-newprice m-text8 p-r-5">$15.90
                                    </span>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-12 col-md-6 col-lg-4 p-b-50">
                            <!-- Block2 -->
                            <div class="block2">
                                <div class="block2-img wrap-pic-w of-hidden pos-relative block2-labelnew">
                                    <img src="../../../img/item-01.jpg" alt="IMG-PRODUCT">

                                    <div class="block2-overlay trans-0-4">
                                        <a href="#" class="block2-btn-addwishlist hov-pointer trans-0-4">
                                            <i class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
                                            <i class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
                                        </a>

                                        <div class="block2-btn-addcart w-size1 trans-0-4">
                                            <!-- Button -->
                                            <button class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
                                                Add to Cart
                                            </button>
                                        </div>
                                    </div>
                                </div>

                                <div class="block2-txt p-t-20">
                                    <a href="product-detail.html" class="block2-name dis-block s-text3 p-b-5">Herschel supply co 25l
                                    </a>

                                    <span class="block2-price m-text6 p-r-5">$75.00
                                    </span>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-12 col-md-6 col-lg-4 p-b-50">
                            <!-- Block2 -->
                            <div class="block2">
                                <div class="block2-img wrap-pic-w of-hidden pos-relative">
                                    <img src="../../../img/item-14.jpg" alt="IMG-PRODUCT">

                                    <div class="block2-overlay trans-0-4">
                                        <a href="#" class="block2-btn-addwishlist hov-pointer trans-0-4">
                                            <i class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
                                            <i class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
                                        </a>

                                        <div class="block2-btn-addcart w-size1 trans-0-4">
                                            <!-- Button -->
                                            <button class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
                                                Add to Cart
                                            </button>
                                        </div>
                                    </div>
                                </div>

                                <div class="block2-txt p-t-20">
                                    <a href="product-detail.html" class="block2-name dis-block s-text3 p-b-5">Denim jacket blue
                                    </a>

                                    <span class="block2-price m-text6 p-r-5">$92.50
                                    </span>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-12 col-md-6 col-lg-4 p-b-50">
                            <!-- Block2 -->
                            <div class="block2">
                                <div class="block2-img wrap-pic-w of-hidden pos-relative block2-labelnew">
                                    <img src="../../../img/item-06.jpg" alt="IMG-PRODUCT">

                                    <div class="block2-overlay trans-0-4">
                                        <a href="#" class="block2-btn-addwishlist hov-pointer trans-0-4">
                                            <i class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
                                            <i class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
                                        </a>

                                        <div class="block2-btn-addcart w-size1 trans-0-4">
                                            <!-- Button -->
                                            <button class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
                                                Add to Cart
                                            </button>
                                        </div>
                                    </div>
                                </div>

                                <div class="block2-txt p-t-20">
                                    <a href="product-detail.html" class="block2-name dis-block s-text3 p-b-5">Herschel supply co 25l
                                    </a>

                                    <span class="block2-price m-text6 p-r-5">$75.00
                                    </span>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-12 col-md-6 col-lg-4 p-b-50">
                            <!-- Block2 -->
                            <div class="block2">
                                <div class="block2-img wrap-pic-w of-hidden pos-relative">
                                    <img src="../../../img/item-08.jpg" alt="IMG-PRODUCT">

                                    <div class="block2-overlay trans-0-4">
                                        <a href="#" class="block2-btn-addwishlist hov-pointer trans-0-4">
                                            <i class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
                                            <i class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
                                        </a>

                                        <div class="block2-btn-addcart w-size1 trans-0-4">
                                            <!-- Button -->
                                            <button class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
                                                Add to Cart
                                            </button>
                                        </div>
                                    </div>
                                </div>

                                <div class="block2-txt p-t-20">
                                    <a href="product-detail.html" class="block2-name dis-block s-text3 p-b-5">Denim jacket blue
                                    </a>

                                    <span class="block2-price m-text6 p-r-5">$92.50
                                    </span>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-12 col-md-6 col-lg-4 p-b-50">
                            <!-- Block2 -->
                            <div class="block2">
                                <div class="block2-img wrap-pic-w of-hidden pos-relative">
                                    <img src="../../../img/item-10.jpg" alt="IMG-PRODUCT">

                                    <div class="block2-overlay trans-0-4">
                                        <a href="#" class="block2-btn-addwishlist hov-pointer trans-0-4">
                                            <i class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
                                            <i class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
                                        </a>

                                        <div class="block2-btn-addcart w-size1 trans-0-4">
                                            <!-- Button -->
                                            <button class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
                                                Add to Cart
                                            </button>
                                        </div>
                                    </div>
                                </div>

                                <div class="block2-txt p-t-20">
                                    <a href="product-detail.html" class="block2-name dis-block s-text3 p-b-5">Coach slim easton black
                                    </a>

                                    <span class="block2-price m-text6 p-r-5">$165.90
                                    </span>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-12 col-md-6 col-lg-4 p-b-50">
                            <!-- Block2 -->
                            <div class="block2">
                                <div class="block2-img wrap-pic-w of-hidden pos-relative block2-labelsale">
                                    <img src="../../../img/item-11.jpg" alt="IMG-PRODUCT">

                                    <div class="block2-overlay trans-0-4">
                                        <a href="#" class="block2-btn-addwishlist hov-pointer trans-0-4">
                                            <i class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
                                            <i class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
                                        </a>

                                        <div class="block2-btn-addcart w-size1 trans-0-4">
                                            <!-- Button -->
                                            <button class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
                                                Add to Cart
                                            </button>
                                        </div>
                                    </div>
                                </div>

                                <div class="block2-txt p-t-20">
                                    <a href="product-detail.html" class="block2-name dis-block s-text3 p-b-5">Frayed denim shorts
                                    </a>

                                    <span class="block2-oldprice m-text7 p-r-5">$29.50
                                    </span>

                                    <span class="block2-newprice m-text8 p-r-5">$15.90
                                    </span>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-12 col-md-6 col-lg-4 p-b-50">
                            <!-- Block2 -->
                            <div class="block2">
                                <div class="block2-img wrap-pic-w of-hidden pos-relative block2-labelnew">
                                    <img src="../../../img/item-12.jpg" alt="IMG-PRODUCT">

                                    <div class="block2-overlay trans-0-4">
                                        <a href="#" class="block2-btn-addwishlist hov-pointer trans-0-4">
                                            <i class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
                                            <i class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
                                        </a>

                                        <div class="block2-btn-addcart w-size1 trans-0-4">
                                            <!-- Button -->
                                            <button class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
                                                Add to Cart
                                            </button>
                                        </div>
                                    </div>
                                </div>

                                <div class="block2-txt p-t-20">
                                    <a href="product-detail.html" class="block2-name dis-block s-text3 p-b-5">Herschel supply co 25l
                                    </a>

                                    <span class="block2-price m-text6 p-r-5">$75.00
                                    </span>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-12 col-md-6 col-lg-4 p-b-50">
                            <!-- Block2 -->
                            <div class="block2">
                                <div class="block2-img wrap-pic-w of-hidden pos-relative">
                                    <img src="../../../img/item-15.jpg" alt="IMG-PRODUCT">

                                    <div class="block2-overlay trans-0-4">
                                        <a href="#" class="block2-btn-addwishlist hov-pointer trans-0-4">
                                            <i class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
                                            <i class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
                                        </a>

                                        <div class="block2-btn-addcart w-size1 trans-0-4">
                                            <!-- Button -->
                                            <button class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
                                                Add to Cart
                                            </button>
                                        </div>
                                    </div>
                                </div>

                                <div class="block2-txt p-t-20">
                                    <a href="product-detail.html" class="block2-name dis-block s-text3 p-b-5">Denim jacket blue
                                    </a>

                                    <span class="block2-price m-text6 p-r-5">$92.50
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Pagination -->
                    <div class="pagination flex-m flex-w p-t-26">
                        <a href="#" class="item-pagination flex-c-m trans-0-4 active-pagination">1</a>
                        <a href="#" class="item-pagination flex-c-m trans-0-4">2</a>
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
        <h4>HII</h4>
    </div>
    <div id="dropDownSelect2"></div>

    <script>
        $(document).ready(function () {
            $('[data-toggle="tooltip"]').tooltip();
        });
    </script>
</asp:Content>

