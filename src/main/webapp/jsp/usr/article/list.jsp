<%@ page import="com.ll.exam.article.dto.ArticleDto" %>
<%@ page import="java.util.List" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    List<ArticleDto> articles = (List<ArticleDto>)request.getAttribute("articles");

%>
<script src="https://cdn.tailwindcss.com"></script>


<section>
   <div class="container px-[3px] mx-auto">
       <h1 class = "font-bold text-lg">게시물 리스트</h1>

       <ul class="mt-5">
           <% for( ArticleDto article : articles) { %>
           <li class="flex">
               <a class="w-[40px]" href="/usr/article/detail/free/<%=article.getId()%>"><%=article.getId()%></a>
               <a class="flex-grow hover:underline hover:text-[red]" href="/usr/article/detail/free/<%=article.getId()%>"><%=article.getTitle()%></a>
               <a class="w-[100px] hover:underline hover:text-[red]" href="/usr/article/delete/free/<%=article.getId()%>">삭제</a>
           </li>
           <% } %>
       </ul>
   </div>
</section>

