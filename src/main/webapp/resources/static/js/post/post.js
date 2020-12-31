function postWrite() {
    location.href = "/posts/postWrite";
}

$(function() {
    if(document.getElementsByName("boardType")[0].checked) {
        var div = document.createElement("div");

        div.setAttribute("id", "postWrite_upload_area");
        document.getElementById("postWriteForm").insertBefore(div, document.getElementById("postWrite_title_area"));
    }
});