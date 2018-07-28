LoginInfo = new Object();



function adminLogin() {
    // serialize the object to JSON string
    LoginInfo.userName = $('#user_name').val();
    LoginInfo.password = $('#password').val();
    var dataString = JSON.stringify(LoginInfo);
    $.ajax({
        url: 'AjaxWebServiceGetDiamonds.asmx/isUserAdmin',
        data: dataString,
        type: 'POST',
        dataType: "json",
        contentType: 'application/json; charset = utf-8',
        success: function (results) {
            if (results.d == "true") {
                $.mobile.changePage("#home", { transition: "slide", changeHase: false });
            }
            else {
                alert('User doesnt exist!');
            }
        },
        error: function (request, error) {
            alert('Network error has occurred please try again!');
        }
    });
}


function getAllStonesViews(renderStones) {
    $.ajax({
        url: 'AjaxWebServiceGetDiamonds.asmx/getAllStonesViews',
        type: 'POST',
        dataType: "json",
        contentType: 'application/json; charset = utf-8',
        success: function (results) {
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
    $.ajax({
        url: 'AjaxWebServiceGetDiamonds.asmx/getStoneDetails',
        data: dataString,
        type: 'POST',
        dataType: "json",
        contentType: 'application/json; charset = utf-8',
        success: function (results) {
            renderStoneDetails(results);
        },
        error: function (request, error) {
            alert('Network error has occurred please try again!');
        }
    });
}

function addStoneToCart(stoneName) {
    alert('addStoneToCart received:' + stoneName);
    // serialize the object to JSON string
    //var dataString = JSON.stringify(stoneName);
    var dataString = "{\"diamondName\":\"" + stoneName + "\"}";
    alert("addStonetoCart data string = " + dataString);
    console.log("addStonetoCart data string = " + dataString);
    $.ajax({
        url: '../../../AjaxWebServiceGetDiamonds.asmx/addStonetoCart',
        data: dataString,
        type: 'POST',
        dataType: "json",
        contentType: 'application/json; charset = utf-8',
        success: function (results) {
            alert("addStonetoCart results:" + results.d);
            if (results.d == "true")
            { swal(this.name, "is added to cart !", "success"); }
            else { alert("failed to add cart") }
            
        },
        error: function (request, error) {
            alert('Network error has occurred please try again!');
        }
    });
}
