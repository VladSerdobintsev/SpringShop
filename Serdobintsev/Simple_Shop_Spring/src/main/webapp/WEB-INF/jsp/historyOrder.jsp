

<%@page import="java.sql.Date"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
          <link rel="stylesheet" type="text/css" href="http://www.99lime.com/site/templates/css/kickstart.css" />
        <script type="text/javascript" src="http://www.99lime.com/site/templates/js/kickstart.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>История заказов</title>
    </head>
    <body>
        <div>
            <a href="<c:url value="/user/login" />">Войти</a>|
            <a href="<c:url value="/shop" />">Просмотр категорий</a>|
            <a href="<c:url value="/user/show" />">Профиль</a>|  
            <a href="<c:url value="/user/logout" />">Выход</a>
        </div>
        <hr/>
        <div>Имя: ${thisUser.name}</div>
        <c:if test="${Order.size() != 0}">
            <c:set var="ress" scope="session" value="${date}"/>
            <c:set var="string" scope="session" value="${str}"/>
            <div id="templatemo_menu" class="ddsmoothmenu"><c:forEach items="${Order}" var="oi">                   
                    <c:choose>
                        <c:when test="${ress == oi.date && string == oi.address}">                              
                        </c:when>
                        <c:otherwise>    
                            <ul><li>Date : ${oi.date}, Address : ${oi.address}</li></ul>
                            <c:set var="ress" scope="session" value="${oi.date}"/>
                            <c:set var="string" scope="session" value="${oi.address}"/>
                            
                        </c:otherwise>
                    </c:choose>
                            <c:forEach items="${Good}" var="g">
                                <c:if test="${oi.idGood == g.id}">
                                <li><ul>Товар: ${g.name}<br/>
                                        Количество: ${oi.amount}<br/>
                                        Цена: ${oi.price}</li></ul>
                            <c:set var="res" scope="session" value="${oi.amount * oi.price}"/>
                            </c:if>
                </c:forEach>                                                               
                <div>Всего: <c:out value="${res}"/></div>
            </c:forEach>               
        </c:if>
    </div>
        <c:if test="${Order.size() == 0}">История пуста</c:if>
    </body>
</html>
