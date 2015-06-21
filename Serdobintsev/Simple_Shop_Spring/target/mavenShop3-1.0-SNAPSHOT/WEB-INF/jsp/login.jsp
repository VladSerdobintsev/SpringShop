

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Вход</title>
    </head>
    <body>
        <div>
            <a href="<c:url value="/user/login" />">Войти</a>|
            <a href="<c:url value="/shop" />">Просмотр категорий</a>|
            <a href="<c:url value="/user/show" />">Профиль</a>|  
            <a href="<c:url value="/user/logout" />">Выход</a>
        </div>
        <hr/>
        <div style="size: 20px; text-align: center">
            <form action="<c:url value="/j_spring_security_check" />" method="post">
                Email: <input type="text" name="j_username" />
                Пароль: <input type="password" name="j_password" />
                <div style="text-align: center;">
                    <input type="submit" value="Войти" />
                </div>
            </form>
        </div>
    </body>
</html>