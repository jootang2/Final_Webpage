<%@ page import="com.ll.exam.article.dto.ArticleDto" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    ArticleDto article = (ArticleDto) request.getAttribute("article");

%>

<h1>게시물 수정</h1>

<script>
    function ArticleSave__submitForm(form){
        form.title.value = form.title.value.trim();

        if(form.title.value.length == 0){
            alert("제목을 입력해주세요.");
            form.title.focus();
            return;
        }

        if(form.body.value.length == 0){
            alert("내용을 입력해주세요.");
            form.title.focus();
            return;
        }

        form.submit();

    }
</script>

<form method="POST" onsubmit="ArticleSave__submitForm(this); return false;">
    <div>
        <span> 번호 </span>
        <div>
            <%=article.getId()%>
        </div>
    </div>
    <div>
        <span>  제목  </span>
        <div>
            <input name="title" type = "text" placeholder="제목을 입력해주세요." value="<%=article.getTitle()%>"/>
        </div>

    </div>
    <div>
        <span>  내용  </span>
        <div>
        <input name="body" type = "text" placeholder="내용을 입력해주세요." value="<%=article.getBody()%>"/>
        </div>
    </div>
    <div>
        <span>  수정  </span>
        <div>
            <input type = "submit", value="수정"/>
        </div>
    </div>





</form>