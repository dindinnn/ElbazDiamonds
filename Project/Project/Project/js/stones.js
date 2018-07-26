StoneInfo = new Object();
//ProductInfo = new Object();

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
        dynamic_Stone = "<li> <a href='#' id='" + stoneView.Name + "'/>" + "<h3>" + "stone name= " + stoneView.Name + "</h3>" +
        "<img src='" + stoneView.ImagePath + "'/>" + "<h4>" + "stone weight= " + stoneView.Weight + "</h4>" +
        "<h4>" + "stone status= " + stoneView.status + "</h4>" + "</li>";
        $("#StonesList").append(dynamic_Stone);
        $("#StonesList").listview('refresh');
    });
    $("#StonesList").listview('refresh');
}



$(document).on('vclick', '#StonesList li a', function () {
    alert("in vclick");
    StoneInfo.id = parseInt($(this).attr('id'));
    alert(StoneInfo.id);
    getProduct(ProductInfo, renderFullProduct);
    $.mobile.changePage("#productInfoPage", { transition: "slide", changeHase: false });
});

function renderFullProduct(results) {
    //this is the callBackFunc 
    results = $.parseJSON(results.d);


    $("#fullProductList").empty();
    $("#collapse").empty();

    var dynamicli_FullProduct = "";
    dynamicli_FullProduct = "<h3>" + results.Title + " </h3>";
    if (results.ImagePath == null) {
        dynamicli_FullProduct += "<img src='images/no-img.jpg'/>";
    } else {
        dynamicli_FullProduct += "<img src='" + results.ImagePath + "'/>";
    }
    dynamicli_FullProduct += "<h4>inventory:  " + results.Amount + "  </h4>";

    $("#fullProductList").append(dynamicli_FullProduct);
}



