<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>员工列表</title>
   <style>
         .wrapper{
            padding-top:50px;
         }
         #employeeList{
           margin: 0 auto;
           border-collapse:collapse;
           border:2px solid black;
         }
         #employeeList tr{
           height: 65px;
         }
         #employeeList td{
           border: 2px solid black;
           width: 318px;
           text-align: center;
           font-size: 21px;
         }
         #employeeList  tr:nth-child(even) {
           background-color: rgb(238,238,238);
         }
         #employeeList  tr:nth-child(odd)  {
            background-color: rgb(255,255,255);
         }
         #employeeList tr:nth-child(1){
           background-color:  rgb(0,0,0);
           color: rgb(255,255,255);
           font-size: 21px;
         }
       </style>
</head>
<body>

<div class="wrapper">
    <table id="employeeList">
        <tr>
            <th>编号</th>
            <th>姓名</th>
            <th>年龄</th>
            <th>性别</th>
        </tr>
        <c:forEach items="${allEmployees}" var="employee">
            <tr>
                <td>${employee.id}</td>
                <td>${employee.name}</td>
                <td>${employee.age}</td>
                <td>${employee.gender}</td>
            </tr>
        </c:forEach>
    </table>
</div>

</body>
</html>
