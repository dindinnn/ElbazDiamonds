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

function getStoneDetails(StoneInfo, renderStoneDetails) {

    // serialize the object to JSON string
    var dataString = JSON.stringify(StoneInfo);
    alert("data string = " + dataString);
    $.ajax({
        url: 'AjaxWebServiceGetDiamonds.asmx/getStoneDetails',
        data: dataString,
        type: 'POST',
        dataType: "json",
        contentType: 'application/json; charset = utf-8',
        success: function (results) {
            alert("results:" + results.data)
            renderStoneDetails(results);
        },
        error: function (request, error) {
            alert('Network error has occurred please try again!');
        }
    });
}
