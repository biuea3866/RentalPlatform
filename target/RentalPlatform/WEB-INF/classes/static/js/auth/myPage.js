function logout() {
    $.ajax({
        url: '/auth/logout',
        type: 'get',
        success: function(response) {
            if(response.result == "fail") {
                console.error(response.error);

                return;
            }
            location.href = "/";
        },
        error: function(XHR, status, e) {
            console.error(status + ":" + e);
        }
    });
}
