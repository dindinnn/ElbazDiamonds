StoneInfo = new Object();

$(document).on('pagebeforeshow', '#home', function () {
    $("#StonesList").empty();
    getAllStonesViews(renderStones);
});

function renderStones(results) {
    //this is the callBackFunc 
    alert(results.d);
    dynamic_Stone = "";
    resutls = $.parseJSON(results.d);
    $.each(resutls, function (i, stoneView) {
        alert("each:" + stoneView.Name);
        dynamic_Stone = "<li> <a href='#' id='" + stoneView.Name + "'/>" + "<h3>" + "stone name= " + stoneView.Name + "</h3>" +
        "<img src='" + stoneView.ImagePath + "'/>" + "<h4>" + "stone weight= " + stoneView.Weight + "</h4>" +
        "<h4>" + "stone status= " + stoneView.status + "</h4>" + "</li>";
        $("#StonesList").append(dynamic_Stone);
        $("#StonesList").listview('refresh');
    });
    $("#StonesList").listview('refresh');
}



$(document).on('vclick', '#StonesList li a', function () {
    alert("in vclick:" + $(this).attr('id'));
    //StoneInfo.id = parseInt($(this).attr('id'));
    StoneInfo.id = $(this).attr('id');
    alert("stone name: " + StoneInfo.id);
    getStoneDetails(StoneInfo, renderStoneDetails);
    $.mobile.changePage("#StoneInfoPage", { transition: "slide", changeHase: false });
});

function renderStoneDetails(results) {
    //this is the callBackFunc 
    alert(results.d);
    dynamic_FullStone = "";
    results = $.parseJSON(results.d);
    $("#fullStoneList").empty();
    $("#collapse").empty();
    dynamic_FullStone = "<h3>" + results.Name + " </h3>";
    if (results.ImagePath == null) {
        dynamic_FullStone += "<img src='images/no-img.jpg'/>";
    } else {
        dynamic_FullStone += "<img src='" + results.ImagePath + "'/>";
    }
    dynamic_FullStone += "<h4>weight:  " + results.Weight + "  </h4>";
    dynamic_FullStone += "<h4>shape:  " + results.Shape + "  </h4>";
    dynamic_FullStone += "<h4>color:  " + results.Color + "  </h4>";
    dynamic_FullStone += "<h4>clarity:  " + results.Clarity + "  </h4>";
    dynamic_FullStone += "<h4>cut:  " + results.Cut + "  </h4>";
    dynamic_FullStone += "<h4>polish:  " + results.Polish + "  </h4>";
    dynamic_FullStone += "<h4>symmetry:  " + results.Symmetry + "  </h4>";
    dynamic_FullStone += "<h4>Cost_P_Discount:  " + results.Cost_P_Discount + "  </h4>";
    dynamic_FullStone += "<h4>T_Cost_Price:  " + results.T_Cost_Price + "  </h4>";
    dynamic_FullStone += "<h4>Sale_P_Discount:  " + results.Sale_P_Discount + "  </h4>";
    dynamic_FullStone += "<h4>T_Sale_Price:  " + results.T_Sale_Price + "  </h4>";
    dynamic_FullStone += "<h4>status:  " + results.Status + "  </h4>";
    $("#fullStoneList").append(dynamic_FullStone);
}



