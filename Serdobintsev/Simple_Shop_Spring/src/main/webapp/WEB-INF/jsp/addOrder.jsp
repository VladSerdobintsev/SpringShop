
<%@page import="org.itstep.java.web.mavenShop3.model.Order"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="http://www.99lime.com/site/templates/js/kickstart.js"></script>
        <script type="text/javascript" src="http://www.templatemo.com/templates/templatemo_365_orando/js/jquery.min.js"></script>
        <script type="text/javascript" src="http://www.templatemo.com/templates/templatemo_365_orando/js/ddsmoothmenu.js"></script>
        <title>Заказать</title>
    </head>
    <body>
        <div>
            <a href="<c:url value="/user/login" />">Войти</a>|
            <a href="<c:url value="/shop" />">Просмотр категорий</a>|
            <a href="<c:url value="/user/show" />">Профиль</a>|  
            <a href="<c:url value="/user/logout" />">Выход</a>
        </div>
        <hr/>
         <form method="POST" action="<c:url value="/shop/saveOrder"/>">
             <div class="col-md-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">Заказ</h3>
                        </div>
                        <div id="templatemo_menu" class="ddsmoothmenu">
                            <ul sidebar_list>
                                <input type="hidden" name="id" value="${thisUser.id}" />
                                 <div>
                                     <label for="name">Имя: </label>
                                     <input type="text" name="userName" value="${current.name}" readonly="readonly" />
                                 </div>
                                 <div>
                                    <label for="name">Адрес: </label>
                                    <input type="text" name="DeliverAddress" value="" />
                                 </div>
                            </ul>  
                                 <input type="submit" value="Заказать"/>
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
                                <c:forEach items="${basket}" var="item" >
                                    <li>Название: ${item.value.good.name}<br/>
                                        Количество: ${item.value.count}</li>
                                </c:forEach>
                            </ul>  
                        </div>  
                    </div>
                </div>               
        </form>                                    
    </body>
</html>
