

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="http://www.99lime.com/site/templates/js/kickstart.js"></script>
        <title>Список товаров</title>
    </head>
    <body>
        <div><a href="<c:url value="/user/login" />">Войти</a>|
                <a href="<c:url value="/shop" />">Просмотр категорий</a>|
                <a href="<c:url value="/user/show" />">Профиль</a>|  
                <a href="<c:url value="/user/logout" />">Выход</a></div>
        <hr/>
        <div id="templatemo_menu" class="ddsmoothmenu">
            <div class="jumbotron">
                <h1>Выбор товаров</h1>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <ul>
                                <c:forEach items="${goods}" var="good">
                                    <li><strong>${good.name}</strong><br/>Цена товара: <span style="color: red;">${good.price} грн</span><br/><a class="btn btn-success" href="<c:url value="/shop/add/${good.category_id}/${good.id}" />">Добавить в корзину</a><c:if test="${current.isAdmin}">  <a class="btn btn-info" href="<c:url value="/shop/editGood/${good.category_id}/${good.id}" />">Редактировать</a>  <a class="btn btn-danger" href="<c:url value="/shop/delete/${good.category_id}/${good.id}" />">Удалить</a></c:if></li><br/>
                                </c:forEach>
                            </ul>
                            <c:if test="${current.isAdmin}">
                                <br/><div><a class="btn btn-success" href="<c:url value="/shop/addGood" />">Добавить товар</a></div> 
                            </c:if>
                            
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">Корзина</h3>
                        </div>
                        <div class="panel-body">
                            <ul>
                                <c:forEach items="${basket}" var="item">
                                    <li>${item.value.good.name} : <span>${item.value.count}</span>  <a style="color: red" href="<c:url value="/shop/deleteGoodInBasket/${item.value.good.category_id}/${item.value.good.id}" />">-</strong></a></li>
                                </c:forEach>
                            </ul>  
                            <div><a class="btn btn-success" href="<c:url value="/shop/orderAdd" />">Заказать</a> <!--a class="btn btn-primary" href="<c:url value="/shop/history/${thisUser.id}"/>">История заказов</a--> <a class="btn btn-danger" href="<c:url value="/shop/basketDelete"/>">Очистить</a></div>
                        </div>  
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
