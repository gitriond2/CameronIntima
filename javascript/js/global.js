function PostImg(url, params) {
    return ajaxMethodImg(url, "POST", params);
}

function ajaxMethodImg(url, method, params) {
    return $.ajax({
        url: window.appURL + url,
        method: method,
        async: false,
        processData: false,
        contentType: false,
        cache: false,
        data: params
    }).fail(function (jqXR, textStatus, errorThrowm){
        console.debug(jqXR);
        console.debug(textStatus);
        console.debug(errorThrowm);
    })
}


function fnBaseUrlWeb(url) {
    return window.appURL + URL;
}





