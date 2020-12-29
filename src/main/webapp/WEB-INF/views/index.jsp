<%--
  Created by IntelliJ IDEA.
  User: biuea
  Date: 20. 12. 28.
  Time: 오후 11:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
        <title>Rental Platform</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/static/css/style.css"/>
    </head>
    <body>
        <c:import url="fragments/header.jsp"/>
        <div id="contents">
            <table id="contents_table">
                <tr>
                    <td class="table_td">
                        <a href="#">
                            <div class="contents_category_area">
                                icon Area
                            </div>
                            <span class="contents_">
                                의류(상의)
                            </span>
                        </a>
                    </td>
                    <td class="table_td">
                        <a href="#">
                            <div class="contents_category_area">
                                icon Area
                            </div>
                            <span class="contents_">
                                의류(하의)
                            </span>
                        </a>
                    </td>
                    <td>
                        <a href="#">
                            <div class="contents_category_area">
                                icon Area
                            </div>
                            <span class="contents_">
                                의류(신발)
                            </span>
                        </a>
                    </td>
                    <td class="table_td">
                        <a href="#">
                            <div class="contents_category_area">
                                icon Area
                            </div>
                            <span class="contents_">
                                의류(기타)
                            </span>
                        </a>
                    </td>
                    <td class="table_td">
                        <a href="#">
                            <div class="contents_category_area">
                                icon Area
                            </div>
                            <span class="contents_">
                                책(전문)
                            </span>
                        </a>
                    </td>
                    <td class="table_td">
                        <a href="#">
                            <div class="contents_category_area">
                                icon Area
                            </div>
                            <span class="contents_">
                                책(기타)
                            </span>
                        </a>
                    </td>
                </tr>
                <tr>
                    <td class="table_td">
                        <a href="#">
                            <div class="contents_category_area">
                                icon Area
                            </div>
                            <span class="contents_">
                                전자기
                            </span>
                        </a>
                    </td>
                    <td class="table_td">
                        <a href="#">
                            <div class="contents_category_area">
                                icon Area
                            </div>
                            <span class="contents_">
                                가전제품
                            </span>
                        </a>
                    </td>
                    <td>
                        <a href="#">
                            <div class="contents_category_area">
                                icon Area
                            </div>
                            <span class="contents_">
                                가구
                            </span>
                        </a>
                    </td>
                    <td class="table_td">
                        <a href="#">
                            <div class="contents_category_area">
                                icon Area
                            </div>
                            <span class="contents_">
                                사무용품
                            </span>
                        </a>
                    </td>
                    <td class="table_td">
                        <a href="#">
                            <div class="contents_category_area">
                                icon Area
                            </div>
                            <span class="contents_">
                                생활용품
                            </span>
                        </a>
                    </td>
                    <td class="table_td">
                        <a href="#">
                            <div class="contents_category_area">
                                icon Area
                            </div>
                            <span class="contents_">
                                기타
                            </span>
                        </a>
                    </td>
                </tr>
                <tr>
                    <td id="contents_footer" colspan="6">
                        <a class="Nanum_B" href="#">
                            전체보기
                        </a>
                    </td>
                </tr>
            </table>
        </div>
        <div class="article">
            <div id="board_article">
                <div id="board_help">
                    <div class="board_header Nanum_B">
                        빌려주세요
                    </div>
                    <div class="board_contents">
                        Board List
                    </div>
                </div>
                <div id="board_together">
                    <div class="board_header Nanum_B">
                        빌려드려요
                    </div>
                    <div class="board_contents">
                        Board List
                    </div>
                </div>
            </div>
        </div>
        <div class="article">
            <div id="article_hot_board">
                <div id="article_hot_board_header Nanum_B">
                    인기 게시글
                </div>
                <div id="article_hot_board_contents">
                    Board List
                </div>
            </div>
        </div>
        <div class="article">
            <div class="article_hot_rental">
                <div class="article_hot_rental_header Nanum_B">
                    인기 카테고리
                </div>
                <div class="article_hot_rental_contents">
                    Map List
                </div>
            </div>
        </div>
        <c:import url="fragments/footer.jsp"/>
    </body>
</html>
