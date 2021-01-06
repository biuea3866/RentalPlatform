$("input[name='postType']").change(function() {
    if($('input[name="postType"]:checked').val().includes('빌려드려요')) {
        document.getElementById("postWrite_upload_area").innerHTML =
        '<input' +
        '   id="uploadImage1"' +
        '   name="uploadImage1"' +
        '   class="uploadImage"' +
        '   type="file"' +
        '/>' +
        '<input' +
        '   id="uploadImage2"' +
        '   name="uploadImage2"' +
        '   class="uploadImage"' +
        '   type="file"' +
        '/>' +
        '<input' +
        '   id="uploadImage3"' +
        '   name="uploadImage3"' +
        '   class="uploadImage"' +
        '   type="file"' +
        '/>'
        // 부가 설명 추가
        document.getElementById("postWrite_money_area").innerHTML =
        '<input' +
        '   id="rentalFee"' +
        '   name="rentalFee"' +
        '   class="styled_input"' +
        '   type="text"' +
        '   placeholder="전체 대여 예상 비용"' +
        '/>';
        // 부가 설명 추가
        document.getElementById("postWrite_date_area").innerHTML =
        '<input' +
        '   id="rentalDate"' +
        '   name="rentalDate"' +
        '   class="styled_input"' +
        '   type="text"' +
        '   placeholder="전체 대여 예상 일수"' +
        '/>';

        // document.getElementById("postWrite_map_area").innerHTML =
        // '';
    } else {
        document.getElementById("postWrite_upload_area").innerHTML = '';
        document.getElementById("postWrite_money_area").innerHTML = '';
        document.getElementById("postWrite_date_area").innerHTML = '';
    }
});

function postWrite() {
    if($('input[name="postType"]:checked').val().includes('빌려드려요')) {
        if([
            $("#postTitle").val(),
            $("#postContents").val(),
            $("#rentalDate").val(),
            $("#rentalFee").val(),
        ].includes("")) {
            $("#error").html("입력하지 않은 항목이 있습니다!");

            document.getElementById("postWriteForm").focus();

            return false;
        }
    } else {
        if([
            $("#postTitle").val(),
            $("#postContents").val(),
        ].includes("")) {
            $("#error").html("입력하지 않은 항목이 있습니다!");

            document.getElementById("postWriteForm").focus();

            return false;
        }
    }
}