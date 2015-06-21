

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="http://www.99lime.com/site/templates/js/kickstart.js"></script>
        <script type="text/javascript" src="http://www.templatemo.com/templates/templatemo_365_orando/js/jquery.min.js"></script>
        <script type="text/javascript" src="http://www.templatemo.com/templates/templatemo_365_orando/js/ddsmoothmenu.js"></script>
        <title>Добавить пользователя</title>
    </head>
    <body>
        <div>
            <a href="<c:url value="/user/login" />">Войти</a>|
            <a href="<c:url value="/shop" />">Просмотр категорий</a>|
            <a href="<c:url value="/user/show" />">Профиль</a>|  
            <a href="<c:url value="/user/logout" />">Выход</a>
        </div>
        <hr/>
        <form method="GET" action="<c:url value="/user/userSave"/>">
            <input type="hidden" name="id" />
            <label for="name">Имя:</label>
            <input type="text" name="name" />
            <label for="email">Email:</label>
            <input type="text" name="email" />
            <label for="password">Пароль:</label>
            <input type="text" name="password" />
            <label for="isAdmin">Сделать администратором:</label>
            <input type="checkbox" name="isAdmin" value="1"/>
            <input type="submit" value="Добавить пользователя"/>
        </form>
    </body>
</html>
