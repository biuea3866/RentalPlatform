$(function () {
    $("#signup").click(function() {
        location.href="join";
    });
});

// 존재하지 않는 아이디, 비밀번호 다른 케이스 추가
function login() {
    if([
        $("#email").val(),
        $("#password").val()
    ].includes("")) {
        $("#error").html("입력하지 않은 항목이 있습니다!");

        return false;
    }
}