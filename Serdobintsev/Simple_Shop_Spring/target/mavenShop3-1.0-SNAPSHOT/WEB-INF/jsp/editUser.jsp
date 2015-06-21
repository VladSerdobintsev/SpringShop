

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="http://www.99lime.com/site/templates/js/kickstart.js"></script>
        <script type="text/javascript" src="http://www.templatemo.com/templates/templatemo_365_orando/js/jquery.min.js"></script>
        <script type="text/javascript" src="http://www.templatemo.com/templates/templatemo_365_orando/js/ddsmoothmenu.js"></script>
        <title>Редактировать пользователя</title>
    </head>
    <body>
        <form method="GET" action="<c:url value="/user/userEditSave" />">
            <input type="hidden" name="id" value="${user.getId()}" />
            <label for="name">Имя:</label>
            <input type="text" name="name" value="${user.getName()}" />
            <label for="email">Email:</label>
            <input type="text" name="email" value="${user.getEmail()}"/>
            <label for="password">Пароль:</label>
            <input type="text" name="password" value="${user.getPassword()}" />
            <label for="isAdmin">Является ли он администратором:</label>
            <input type="checkbox" name="isAdmin" value="${user.isIsAdmin()}"<c:if test="${user.isAdmin}">checked=""</c:if>/>
            <input type="submit" value="Сохранить"/>
        </form>
    </body>
</html>