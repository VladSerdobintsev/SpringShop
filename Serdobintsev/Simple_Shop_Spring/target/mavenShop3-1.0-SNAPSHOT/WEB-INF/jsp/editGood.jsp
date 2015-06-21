
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="http://www.99lime.com/site/templates/js/kickstart.js"></script>
        <script type="text/javascript" src="http://www.templatemo.com/templates/templatemo_365_orando/js/jquery.min.js"></script>
        <script type="text/javascript" src="http://www.templatemo.com/templates/templatemo_365_orando/js/ddsmoothmenu.js"></script>
        <title>Редактировать товар</title>
    </head>
    <body>
        <div>
            <a href="<c:url value="/user/login" />">Войти</a>|
            <a href="<c:url value="/shop" />">Просмотр категорий</a>|
            <a href="<c:url value="/user/show" />">Профиль</a>|  
            <a href="<c:url value="/user/logout" />">Выход</a>
        </div>
        <hr/>
        <form method="GET" action="<c:url value="/shop/goodEditSave/${good.getId()}"/>">
            <input type="hidden" name="id" value="${good.getId()}" />
            <label for="name">Название:</label>
            <input type="text" name="name" value="${good.getName()}" />
            <label for="desc">Описание:</label>
            <input type="text" name="desc" value="${good.getDescription()}" />
            <label for="price">Цена:</label>
            <input type="text" name="price" value="${good.getPrice()}"/>
            <label for="cat">Категория:</label>
            <select name="cat">
                <c:forEach items="${cats}" var ="cat">
                    <option <c:if test="${good.category_id} == ${cat.id}">selected</c:if>value="${cat.id}">${cat.name}</option>
                </c:forEach>
            </select>
            <input type="submit" value="Сохранить"/>
        </form>
    </body>
</html>
