<%@ page import="com.ll.exam.article.dto.ArticleDto" %>
<%@ page import="java.util.List" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<h1>게시물 작성</h1>

<form>

    <div>
        <span>  제목  </span>
        <div>
            <input name="title" type = "text" placeholder="제목을 입력해주세요."/>
        </div>

    </div>
    <div>
        <span>  내용  </span>
        <div>
        <input name="body" type = "text" placeholder="내용을 입력해주세요."/>
        </div>
    </div>
    <div>
        <span>  작성  </span>
        <div>
            <input type = "submit", value="작성"/>
        </div>
    </div>





</form>