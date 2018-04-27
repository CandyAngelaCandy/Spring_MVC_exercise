<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>员工列表</title>
   <style>
         table{
           margin-top: 100px;
           margin: 0 auto;
           border-collapse:collapse;
         }
         table tr{
           height: 65px;
         }
         table td{
           border: 2px solid black;
           width: 318px;
           text-align: center;
           font-size: 21px;
         }
         table  tr:nth-child(even) {
           background-color: rgb(238,238,238);
         }
         table  tr:nth-child(odd)  {
            background-color: rgb(255,255,255);
         }
         table tr:nth-child(1){
           background-color:  rgb(0,0,0);
           color: rgb(255,255,255);
         }
       </style>
</head>
<body>

<div>${message}</div>
<div>${allEmployees}</div>

<table border="1">
<tr>
    <td>编号</td>
    <td>姓名</td>
    <td>年龄</td>
    <td>性别</td>
</tr>

<c:forEach items="${allEmployees}" var="employee">
<tr>

    <td>${employee.id}</td>
    <td>${employee.name}</td>
    <td>${employee.age}</td>
    <td>${employee.getGender()}</td>
</tr>
</c:forEach>

</table>

</body>
</html>
