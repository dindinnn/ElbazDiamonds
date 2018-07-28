LoginInfo = new Object();

function adminLogin() {
    // serialize the object to JSON string
    LoginInfo.userName = $('#user_name').val();
    LoginInfo.password = $('#password').val();
    var dataString = JSON.stringify(LoginInfo);
    alert("data string admin = " + dataString);
    $.ajax({
        url: 'AjaxWebServiceGetDiamonds.asmx/isUserAdmin',
        data: dataString,
        type: 'POST',
        dataType: "json",
        contentType: 'application/json; charset = utf-8',
        success: function (results) {
            alert("results adminlogin:" + results.d);
            if (results.d=="true") {
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
            alert("results:" + results.data);
            renderStoneDetails(results);
        },
        error: function (request, error) {
            alert('Network error has occurred please try again!');
        }
    });
}
