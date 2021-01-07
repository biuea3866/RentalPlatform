<%--
  Created by IntelliJ IDEA.
  User: biuea
  Date: 20. 12. 30.
  Time: 오후 5:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/static/css/post/fragments/postWriteContents.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/static/css/style.css"/>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=9c3ace8147d5910822610486156e45f9&libraries=services"></script>
<div id="postWrite_Contents">
    <div id="postWrite_contents_header">
        오늘은 어떤 물건들을<br/>
        빌려주실 건가요?
    </div>
    <form
        id="postWriteForm"
        name="postWriteForm"
        method="post"
        action="${pageContext.servletContext.contextPath}/posts/postWrite"
        onsubmit="return postWrite()"
        enctype="multipart/form-data"
    >
        <input
            type="hidden"
            id="writer"
            name="writer"
            value="${ authUser.nickName }"
        />
        <div id="postWrite_type_area">
            <div class="radio-items">
                <div class="col-6">
                    <input
                        id="borrow"
                        class="only-sr checked"
                        type="radio"
                        name="postType"
                        value="빌려드려요"
                        checked
                    >
                    <label for="borrow">빌려드려요</label>
                </div>
                <div class="col-6">
                    <input
                        id="want"
                        class="only-sr"
                        type="radio"
                        name="postType"
                        value="빌려주세요"
                    >
                    <label for="want">빌려주세요</label>
                </div>
            </div>
        </div>
        <div id="postWrite_upload_area"></div>
        <div id="postWrite_money_area"></div>
        <div id="postWrite_date_area"></div>
        <div id="postWrite_title_area">
            <input
                id="postTitle"
                class="styled_input"
                name="postTitle"
                type="text"
                placeholder="게시글 제목"
            />
        </div>
        <div id="postWrite_contents_area">
            <input
                id="postContents"
                class="styled_input"
                name="postContents"
                type="text"
                placeholder="게시글 내용"
                multiple
            />
        </div>
        <div id="postWrite_map_area"></div>
        <div id="postWrite_error">
            <span id="error"></span>
        </div>
        <div id="postWrite_submit_area">
            <input
                id="postButton"
                name="postButton"
                type="submit"
                value="게시글 등록"
            />
        </div>
    </form>
</div>
<script src="${pageContext.request.contextPath}/resources/static/js/post/post.js"></script>
<!-- JQuery -->
<script src="${pageContext.request.contextPath}/resources/static/js/jquery-3.5.1.min.js"></script>
<!-- BootStrap -->
<script src="${pageContext.request.contextPath}/resources/static/js/bootstrap-3.3.2-dist/js/bootstrap.min.js"></script>