function getAllStonesViews(renderStones) {
    $.ajax({
        url: 'AjaxWebServiceGetDiamonds.asmx/getAllStonesViews',
        type: 'POST',
        dataType: "json",
        contentType: 'application/json; charset = utf-8',
        success: function (results) {
            alert('xx');
            renderStones(results);
        },
        error: function (request, error) {
            alert('Network error has occurred please try again!');
        }
    });
}

function getStoneDetails(ProductInfo, renderFullProduct) {

    // serialize the object to JSON string
    var dataString = JSON.stringify(ProductInfo);

    $.ajax({
        url: 'ajaxWebService.asmx/getProduct',
        data: dataString,
        type: 'POST',
        dataType: "json",
        contentType: 'application/json; charset = utf-8',
        success: function (results) {
            renderFullProduct(results);
        },
        error: function (request, error) {
            alert('Network error has occurred please try again!');
        }
    });
}
