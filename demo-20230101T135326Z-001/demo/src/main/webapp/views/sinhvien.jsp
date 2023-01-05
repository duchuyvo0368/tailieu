<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Category list</title>
    <style>
        table,
        th,
        td {
            border: 1px solid black;
        }
    </style>
</head>
<body>
    <h1>Category list</h1>
    <!-- <h1>Name = ${name}, age = ${age}</h1> -->
    <!-- Display categories here, inside a Table -->
    <!--for better UI, let's use Bootstrap-->
    <table>
        <tr>
            <th>SoCMND</th>
            <th>HoTen</th>
            <th>Email</th>
            <th>SoDT</th>
            <th>DiaChi</th>
          </tr>
          <c:forEach var="sinhvien" items="${sinhvien}">
              <tr>
                  <td>${sinhvien.getSoCMND()}</td>
                  <td>${sinhvien.getHoTen()}</td>
                  <td>${sinhvien.getEmail()}</td>
                  <td>${sinhvien.getSoDT()}</td>
                  <td>${sinhvien.getDiaChi()}</td>
                  <td>
                  <a>Them</a>
                </td>
                <td><a>Sua</a></td>
                <td><a>Xoa</a></td>
              </tr>
          </c:forEach>
    </table>
</body>
</html>
