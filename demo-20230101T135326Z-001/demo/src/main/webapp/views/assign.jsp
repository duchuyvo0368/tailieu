<!DOCTYPE html>
<html lang="en">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
  background-color: #f2f2f2;
  box-sizing: border-box;
  margin-top: 10px
}

input[type=text], select, textarea {
  width: 50%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}

label {
  padding: 12px 12px 12px 0;
  display: inline-block;
}

input[type=submit] {
  background-color: #04AA6D;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: center;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}

.col-25 {
  float: center;
  width: 25%;
  margin-top: 6px;
}

.col-75 {
  float: left;
  width: 75%;
  margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .col-25, .col-75, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
}
</style>
</head>
<body>

<h2>Responsive Form</h2>
<div class="container">
  <form th:action="/student/updateStudent/${student.getId()}" method="POST" th:object="${course}>
    <div class="row">
      <div class="col-25">
        <label for="fname">Tên Nhân Viên</label>
      </div>
      <div class="col-75">
      <input type="hidden" id="fname" name="firstname" path="TenNhanVien" th:field="*{id}" placeholder="Your name.." value="${student.getId()}">
        <input type="text" id="fname" name="firstname" path="TenNhanVien" th:field="*{TenNhanVien}" placeholder="Your name.." value="${student.getTenNhanVien()}">
      </div>
    </div>
    <div class="row">
          <div class="col-25">
            <label for="country">Giới Tính</label>
          </div>
          <div class="col-75">
            <select id="country" name="country">
              <option value="australia" path="GioiTinh">Nam</option>
              <option value="canada">Nữ</option>
            </select>
          </div>
        </div>
    <div class="row">
      <div class="col-25">
        <label for="lname">Ngày Sinh</label>
      </div>
      <div class="col-75">
        <input type="text" id="lname" path="NgaySinh" name="lastname" th:field="*{NgaySinh}" placeholder="Your last name.." value="${student.getNgaySinh()}">
      </div>
    </div>

    <div class="row">
      <div class="col-25">
        <label for="subject">Địa Chỉ</label>
      </div>
      <div class="col-75">
        <input type="text" id="lname" name="lastname" path="DiaChi" th:field="*{DiaChi}" placeholder="Your last name.." value="${student.getDiaChi()}">
      </div>
    </div>
    <div class="row">
          <div class="col-25">
            <label for="lname">Chức Vụ</label>
          </div>
          <div class="col-75">
            <input type="text" id="lname" name="lastname" path="ChucVu" th:field="*{ChucVu}" placeholder="Your last name.." value="${student.getChucVu()}">
          </div>
        </div>
    <div class="row">
      <input type="submit" value="Submit">
    </div>
  </form>
</div>

</body>
</html>
