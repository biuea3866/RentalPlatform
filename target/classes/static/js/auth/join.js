function openDaumZipAddress() {
    new daum.Postcode({
        oncomplete:function(data) {
            var userAddress = data.roadAddress;

            document.getElementById("addressBasic").value = userAddress
        }
    }).open();
}

function checkEmail() {
    $.ajax({
        url: '/api/auth/checkEmail?email=' + $("#email").val(),
        type: 'get',
        data: "",
        dataType: "json",
        success: function(response) {
            if(response.result == "fail") {
                console.error(response.error);

                return;
            }

            if(response.data == true) {

                $("#error").html("중복된 이메일입니다!");

                $("#email").focus();

                return;
            } else {
                $("#error").html("");
            }
        },
        error: function(XHR, status, e) {
            console.error(status + ":" + e);
        }
    });
}

function checkNickname() {
    $.ajax({
        url: '/api/auth/checkNickname?nickName=' + $("#nickName").val(),
        type: 'get',
        data: "",
        dataType: "json",
        success: function(response) {
            if(response.result == "fail") {
                console.error(response.message);

                return;
            }

            if(response.data == true) {
                $("#error").html("중복된 닉네임입니다!");

                $("#nickName").focus();
            } else {
                $("#error").html("");
            }
        },
        error: function(XHR, status, e) {
            console.error(status + ":" + e);
        }
    });
}

function checkPassword() {
    if($("#password").val() != $("#passwordConfirm").val()) {
        $("#error").html("비밀번호가 일치하지 않습니다!");
    } else {
        $("#error").html("");
    }
}

function checkPhone() {
    if(!$("#phoneNumber").val().includes("-")) {
        $("#error").html("전화번호 형식이 올바르지 않습니다!");

        $("#phoneNumber").focus();
    } else {
        $("#error").html("");
    }
}

function checkEmailFormat() {
    var emailText = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;

    if(emailText.test($("#email").value) == false) {
        $("#error").html("이메일 형식이 올바르지 않습니다!");

        $("#email").focus();
    } else {
        $("#error").html("");
    }
}

function register() {
    if([
        $("#nickName").val(),
        $("#password").val(),
        $("#passwordConfirm").val(),
        $("#email").val(),
        $("#phoneNumber").val(),
        $("#basicAddress").val(),
        $("#detailAddress").val(),
    ].includes("")) {
        $("#error").html("입력하지 않은 항목이 있습니다!");

        document.getElementById("joinForm").focus();

        return false;
    }
}