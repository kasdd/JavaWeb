<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<html >
    <head>
        <spring:url value="/css/style.css" var="urlCss"/>
        <link rel="stylesheet" href="${urlCss}" type="text/css" /> 
        <title>Students</title>
    </head>
    <body>
        <h2>Studenten</h2>
        <table width="50%">
            <tr>
                <th>Name</th>
                <th>Lastname</th>
                <th>Email</th>
            </tr>
            <spring:url value ="/students/" var="showUrl"/>
            <c:forEach items="${studentList}" var="student" varStatus="status">
                <tr>
                    <td>
                        <a href="${showUrl}${student.id}.htm">
                            ${student.firstname}
                        </a>
                    </td>

                    <td>
                        ${student.lastname}
                    </td>
                    <td>
                        ${student.email}
                    </td>
                </tr>
            </c:forEach>

        </table>
            <br>
            <a href="${showUrl}voegStudentToe.htm">Voeg student toe</a>
        <br>
    </body>
</html>