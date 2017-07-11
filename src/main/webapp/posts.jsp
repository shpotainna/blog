<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>All posts</title>
</head>
<body>
<h2 align="center">Post from Postgresql Database</h2>
<table border="1" cellspacing="0" cellpadding="2" align="center">
    <tr>
        <td>Data post</td>
        <td>Title</td>
    </tr>

    <c:forEach items="${posts}" var="post">
        <tr>
            <td>${formatter.format(post.postedDate)}</td>
            <td><a href="posts/${post.postId}"> ${post.title}</a></td>
        </tr>
    </c:forEach>
</table>
<br/>
<form align="center" action="/posts" method="get">
    <input type="submit" name="create" value="Create new post"/>
</form>
</body>
</html>