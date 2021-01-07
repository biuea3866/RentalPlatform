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
        $("#postWrite_map_area").css('width', '100%');
        $("#postWrite_map_area").css('height', '400px');
        $("#postWrite_map_area").css('margin-top', '20px');
        document.getElementById("postWrite_date_area").innerHTML =
        '<input' +
        '   id="rentalDate"' +
        '   name="rentalDate"' +
        '   class="styled_input"' +
        '   type="text"' +
        '   placeholder="전체 대여 예상 일수"' +
        '/>';
        // 카카오 맵
        var infoWindow = new kakao.maps.InfoWindow({ zIndex: 1 });
        var mapContainer = document.getElementById('postWrite_map_area');
        var mapOption = {
            center: new kakao.maps.LatLng(37.566826, 126.9786567),
            level: 3
        };
        var map = new kakao.maps.Map(
            mapContainer,
            mapOption
        );
        var ps = new kakao.maps.services.Places();
        // 이태원 맛집을 검색할 수 있는 input 생성
        ps.keywordSearch('이태원 맛집', placeSearchCB, infoWindow, map);
    } else {
        document.getElementById("postWrite_upload_area").innerHTML = '';
        document.getElementById("postWrite_money_area").innerHTML = '';
        document.getElementById("postWrite_date_area").innerHTML = '';
        document.getElementById("postWrite_map_area").innerHTML = '';
        $("#postWrite_map_area").css('width', '0');
        $("#postWrite_map_area").css('height', '0');
        $("#postWrite_map_area").css('margin-top', '0');
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

function placeSearchCB(data, status, pagination, infoWindow, map) {
    console.log("Initialize placeSearchCB");
    if(status === kakao.maps.services.Status.OK) {
        var bounds = new kakao.maps.LatLngBounds();

        for(var i = 0; i < data.length; i++) {
            displayMarker(data[i], infoWindow, map);

            bounds.extend(new kakao.maps.LatLng(data[i].y, data[i].x));
        }

        map.setBounds(bounds);
    }
}

function displayMarker(place, infoWindow, map) {
    console.log("Initialize displayMarker");
    var marker = new kakao.maps.Marker({
        map: map,
        position: new kakao.maps.LatLng(place.y, place.x)
    });

    kakao.maps.event.addListener(marker, 'click', function() {
        infoWindow.setContent('<div style="padding: 5px; font-size: 12px;">' + place.place_name + '</div>');

        infoWindow.open(map, marker);
    });
}