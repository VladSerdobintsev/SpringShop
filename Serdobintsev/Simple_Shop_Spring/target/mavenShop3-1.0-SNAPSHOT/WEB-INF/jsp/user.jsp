
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <script type="text/javascript" src="http://www.99lime.com/site/templates/js/kickstart.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="http://www.templatemo.com/templates/templatemo_365_orando/js/jquery.min.js"></script>
        <script type="text/javascript" src="http://www.templatemo.com/templates/templatemo_365_orando/js/ddsmoothmenu.js"></script>
        <title>Пользователь</title>
    </head>
    <body>
        <div>
            <a href="<c:url value="/user/login" />">Войти</a>|
            <a href="<c:url value="/shop" />">Просмотр категорий</a>|
            <a href="<c:url value="/user/show" />">Профиль</a>|  
            <a href="<c:url value="/user/logout" />">Выход</a>
        </div>
        <hr/>
        <div class="container">
            <div class="jumbotron">
                <h2>Профиль пользователя ${current.name}</h2>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">Выбранный пользователь</h3>
                        </div>
                        <div class="panel-body" style="background-color: activeborder">
                            <ul>
                                <c:if test="${current.isAdmin}">
                                    <c:forEach items="${users}" var="user1">
                                        <li>Имя: ${user1.name}<br/>
                                            Email: ${user1.email}<br/>
                                            Пароль: ${user1.password}<br/>
                                        <c:if test="${user1.isAdmin == true}">Администратор</c:if><c:if test="${user1.isAdmin != true}">Не администратор</c:if><br/><a class="btn btn-info" href="<c:url value="/user/editUser/${user1.id}" />">Редактировать пользователя</a>  <a class="btn btn-danger" href="<c:url value="/user/delete/${user1.id}" />">Удалить пользователя</a></li>
                                    </c:forEach>
                                        <br/><div><a class="btn btn-success" href="<c:url value="/user/addUser" />">Добавить пользователя</a></div> 
                                </c:if>
                            </ul>
                            <div style="color: red">
                                <c:if test="${!current.isAdmin}">
                                    Нет доступа. Доступ дан только администраторам.
                                </c:if>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">Текущий пользователь</h3>
                        </div>
                        <div class="panel-body" style="background-color: activeborder">
                            <div>Имя: ${current.name}</div>
                            <div>Email: ${current.email}</div>
                            <div><c:if test="${current.isAdmin == true}">Администратор</c:if><c:if test="${current.isAdmin != true}">Не администратор</c:if></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
