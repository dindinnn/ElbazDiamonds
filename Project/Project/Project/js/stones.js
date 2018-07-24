CategoryInfo = new Object();
ProductInfo = new Object();

$(document).on('pagebeforeshow', '#home', function () {
    $("#CategoryList").empty();
    getCategory(renderCategory);
});


//function renderCategory(results) {
//    //this is the callBackFunc 
//    dynamicli_Category = "";
//    resutls = $.parseJSON(results.d);      
//    $.each(resutls, function (i, category) {
//        dynamicli_Category = "<li> <a href='#' id='" + category.Id + "'> <h3>" + category.Name + "</h3></li>"
//        $("#CategoryList").append(dynamicli_Category);
//        $("#CategoryList").listview('refresh');
//    });
//    $("#CategoryList").listview('refresh');
//}

//$(document).on('vclick', '#CategoryList li a', function () {
//    CategoryInfo.id = parseInt($(this).attr('id'));
//    getStonesByName(CategoryInfo, renderProducts);
//    $.mobile.changePage("#productsPage", { transition: "slide", changeHase: false });          
//});



//caregory dynamiclly added function
function renderCategory(results) {
    //this is the callBackFunc 
    results = $.parseJSON(results.d);

    $("#CategoryList").empty();
    $.each(results, function (i, row) {
        dynamiclly = "<li> <a href='#' id='" + row.CategoryId + "'> <h3>" + row.Name + "</h3></li>";
        $('#CategoryList').append(dynamiclly);
        $('#CategoryList').listview('refresh');
    });

}

////on-click event on category move to selected category products page
$(document).on('vclick', '#CategoryList li a', function () {
    CategoryInfo.id = $(this).attr("id");
    getStonesByName(CategoryInfo.id, renderProducts);
    $.mobile.changePage("#productsPage", { transition: "slide", changeHash: false });
});



function renderProducts(results) {
    //this is the callBackFunc 
    results = $.parseJSON(results.d);

    $("#ProductList").empty();
    dynamicli_Product = "";
    $.each(results, function (i, row) {
        var dynamicli_Product = "<li> <a id='" + row.Id + "' >";
        if (row.ImagePath == null) {
            dynamicli_Product += "<img src='images/no-img.jpg'/>";
        } else {
            dynamicli_Product += "<img src='" + row.ImagePath + "'/>";
        }
        dynamicli_Product += "<h3>" + row.Title + " </h3>";
        dynamicli_Product += "<h4>Price: " + row.Price + " </h4>";
        dynamicli_Product += "<h4>Left In Stock:  " + row.Amount + "  </h4></a></li>";
        $("#ProductList").append(dynamicli_Product);
        $("#ProductList").listview('refresh');

    });
    $("#ProductList").listview('refresh');

}

$(document).on('vclick', '#ProductList li a', function () {
    ProductInfo.id = parseInt($(this).attr('id'));
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



