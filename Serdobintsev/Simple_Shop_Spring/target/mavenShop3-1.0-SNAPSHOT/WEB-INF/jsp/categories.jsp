

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <script type="text/javascript" src="http://www.99lime.com/site/templates/js/kickstart.js"></script>
        
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><script type="text/javascript" src="http://www.templatemo.com/templates/templatemo_365_orando/js/jquery.min.js"></script>
        <script type="text/javascript" src="http://www.templatemo.com/templates/templatemo_365_orando/js/ddsmoothmenu.js"></script>
        <title>Категории</title>
    </head>
    <body>
        <div>
            <a href="<c:url value="/user/login" />">Войти</a>|
            <a href="<c:url value="/shop" />">Просмотр категорий</a>|
            <a href="<c:url value="/user/show" />">Профиль</a>|  
            <a href="<c:url value="/user/logout" />">Выход</a>
        </div>
        <hr/>
                <h1>Просмотр категорий</h1>
                <div>
                            <ul>
                                <c:forEach items="${cats}" var="cat">
                                    <li><a class="button" href="<c:url value="/shop/category/${cat.id}" />"> ${cat.name}</a></li>
                                </c:forEach>
                            </ul>
                </div>
                <div class="col-md-6">
                    <div id="templatemo_menu" class="ddsmoothmenu">
                        <div class="panel-heading">
                            <h3 class="panel-title">Корзина</h3>
                        </div>
                        <div class="panel-body">
                            <ul>
                                <c:forEach items="${basket}" var="item">
                                    <li><strong>${item.value.good.name}</strong>: <span>${item.value.count}</span></li>
                                </c:forEach>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
    </body>
</html>
