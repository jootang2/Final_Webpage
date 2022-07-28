<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file = "../common/head.jspf" %>
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
<section>
    <div class="container px-[3px] mx-auto">
        <h1 class = "font-bold text-lg">게시물 작성</h1>


        <form method="POST" onsubmit="ArticleSave__submitForm(this); return false;">

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
            <div>
                <input class="hover:underline hover:text-[red] cursor-pointer" type = "submit", value="작성"/>
            </div>
        </div>
        </form>
    </div>
</section>

<%@ include file= "../common/foot.jspf" %>