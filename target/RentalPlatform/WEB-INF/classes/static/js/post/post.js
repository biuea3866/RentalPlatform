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
        $("#postWrite_map_area").css('position', 'relative');
        $("#postWrite_map_area").css('overflow', 'hidden');

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
        document.getElementById("postWrite_map_searchBar").innerHTML =
        '<input' +
        '   type="text"' +
        '   id="search"' +
        '   name="search"' +
        '   placeholder="키워드를 입력해주세요"' +
        '/>' +
        '<input' +
        '   type="submit"' +
        '   id="searchButton"' +
        '   name="searchButton"' +
        '   value="검색"' +
        '   onclick="searchPlaces()"' +
        '/>';

        function searchPlaces() {
            var keyword = document.getElementById('keyword').value;

            if(!keyword.replace(/^\s+|\s+$/g, '')) {
                alert('키워드를 입력해주세요!');

                return false;
            }

            ps.keywordSearch(keyword, placeSearchCB);
        }

        function placeSearchCB(data, status, pagination) {
            if(status === kakao.maps.services.Status.OK) {
                // var bounds = new kakao.maps.LatLngBounds();
                //
                // for(var i = 0; i < data.length; i++) {
                //     displayMarker(data[i], infoWindow, map);
                //
                //     bounds.extend(new kakao.maps.LatLng(data[i].y, data[i].x));
                // }
                //
                // map.setBounds(bounds);
                displayPlaces(data);
                displayPagination(pagination);
            } else if (status === kakao.maps.services.Status.ZERO_RESULT) {
                alert('검색 결과가 존재하지 않습니다!');

                return;
            } else if (status === kakao.maps.services.Status.ERROR) {
                alert('검색 결과 중 오류가 발생했습니다!');

                return;
            }
        }

        function displayPlaces(places) {
            var listEl = document.getElementById('placesList');
            var menuEl = document.getElementById('postWrite_map_wrap');
            var fragment = document.createDocumentFragment();
            var bounds = new kakao.maps.LatLng();
            var listStr = '';

            removeAllChildNods(listEl);
            removeMakrer();

            for(var i = 0; i < places.length; i++) {
                var placePosition = new kakao.maps.LatLng(places[i].y, places[i].x);
                var marker = addMarker(placePosition, i);
                var itemEl = getListItem(i, places[i]);

                bounds.extend(placePosition);

                (function(marker, title) {
                    kakao.maps.event.addListener(marker, 'mouseover', function() {
                        displayInfowindow(marker, title);
                    });

                    kakao.maps.event.addListener(marker, 'mouseout', function() {
                        infoWindow.close();
                    });

                    itemEl.onmouseover = function() {
                        displayInfowindow(marker, title);
                    }

                    itemEl.onmouseout = function() {
                        infoWindow.close();
                    }
                })(marker, places[i].place_name);

                fragment.appendChild(itemEl);
            }

            listEl.appendChild(fragment);
            menuEl.scrollTop = 0;
            map.setBounds(bounds);
        }

        function getListItem(index, places) {
            var el = document.createElement('li');
            var itemStr =
            '<span class="markerbg marker_' + (index + 1) + '"></span>' +
            '   <div class="info">' +
            '       <h5>' + p.place_name + '</h5>';
            if(places.road_address_name) {
                itemStr +=
            '       <span>' + places.road_address_name + '</span>' +
            '       <span class="jibun gray">' + places.address_name + '</span>';
            } else {
                itemStr +=
            '       <span>' + places.address_name + '</span>';
            }
            itemStr +=
            '   <span class="tel">' + places.phone + '</span>' +
            '   </div>';

            el.innerHTML = itemStr;
            el.className = 'item';

            return el;
        }

        function displayMarker(place) {
            console.log("Initialize displayMarker");
            var marker = new kakao.maps.Marker({
                map: map,
                position: new kakao.maps.LatLng(place.y, place.x)
            });

            kakao.maps.event.addListener(marker, 'click', function() {
                // 인포윈도우 디자인 변경
                infoWindow.setContent( '<div style="padding: 5px; font-size: 12px;">' + place.place_name + '</div>');

                infoWindow.open(map, marker);
            });
        }
    } else {
        document.getElementById("postWrite_upload_area").innerHTML = '';
        document.getElementById("postWrite_money_area").innerHTML = '';
        document.getElementById("postWrite_date_area").innerHTML = '';
        document.getElementById("postWrite_map_area").innerHTML = '';
        document.getElementById("postWrite_map_searchBar").innerHTML = '';
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