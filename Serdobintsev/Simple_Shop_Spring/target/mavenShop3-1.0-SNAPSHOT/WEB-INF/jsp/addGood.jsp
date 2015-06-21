

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="http://www.99lime.com/site/templates/js/kickstart.js"></script><script type="text/javascript" src="http://www.templatemo.com/templates/templatemo_365_orando/js/jquery.min.js"></script>
        <script type="text/javascript" src="http://www.templatemo.com/templates/templatemo_365_orando/js/ddsmoothmenu.js"></script>
        
        <title>Добавить товар</title>
    </head>
    <body>
        <div>
            <a href="<c:url value="/user/login" />">Войти</a>|
            <a href="<c:url value="/shop" />">Просмотр категорий</a>|
            <a href="<c:url value="/user/show" />">Профиль</a>|  
            <a href="<c:url value="/user/logout" />">Выход</a>
        </div>
        <hr/>
        <h1>Добавить товар</h1>
        <form method="GET" action="<c:url value="/shop/goodAddSave"/>">
            <input type="hidden" name="id" />
            <label for="name">Название:</label>
            <input type="text" name="name" /><br/><br/>
            <label for="desc">Описание:</label>
            <input type="text" name="desc" /><br/><br/>
            <label for="price">Цена:</label>
            <input type="text" name="price" /><br/><br/>
            <label for="cat">Категория:</label>
            <select name="cat">
                <c:forEach items="${cats}" var ="cat">
                    <option value="${cat.id}">${cat.name}</option>
                </c:forEach>
            </select><br/>
            <input type="submit" value="Добавить"/>
        </form>
    </body>
</html>
