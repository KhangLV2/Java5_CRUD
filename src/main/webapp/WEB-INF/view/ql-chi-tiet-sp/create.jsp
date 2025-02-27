<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <!-- Latest compiled and minified CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<div class="container">
    <sf:form id="myForm" action="/chi-tiet-sp/store" method="post">
<%--        <div class="mb-3 mt-3">--%>
<%--            <label--%>
<%--                    class="form-label">ID:</label>--%>
<%--            <input type="text" class="form-control" name="id" >--%>
<%--        </div>--%>
        <div class="mb-3">
            <label  class="form-label">Mã chi tiết sản phẩm:</label>
            <input type="text" class="form-control" name="maSpCT" id="maSpCT">
            <span id="errMaSpCT"></span>
        </div>
        <div class="mb-3">
            <label  class="form-label">Kích thước:</label>
            <select class="form-select" name="idKichThuoc">
                <c:forEach items="${listKichThuoc}" var="i">
                    <option value="${i.id}">${i.ten}</option>
                </c:forEach>
            </select>
        </div>
        <div class="mb-3">
            <label  class="form-label">Màu sắc:</label>
            <select class="form-select" name="idMauSac">
                <c:forEach items="${listMauSac}" var="i">
                    <option value="${i.id}">${i.ten}</option>
                </c:forEach>
            </select>
        </div>
        <div class="mb-3">
            <label class="form-label">Sản phẩm:</label>
            <select class="form-select" name="idSanPham">
                <c:forEach items="${listSP}" var="i">
                    <option value="${i.id}">${i.ten}</option>
                </c:forEach>
            </select>
        </div>
        <div class="mb-3">
            <label class="form-label">Số lượng:</label>
            <input type="text" class="form-control" name="soLuong" id="soLuong">
            <span id="errSL"></span>
        </div>
        <div class="mb-3">
            <label class="form-label">Đơn giá:</label>
            <input type="text" class="form-control"name="donGia" id="donGia">
            <span id="errDonGia"></span>
        </div>
        <div class="mb-3">
            <label  class="form-label">Trạng thái:</label>
            <input type="text" class="form-control" name="trangThai" id="trangThai">
            <span id="errTrangThai" style="color: red"></span>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </sf:form>
</div>
</body>

<script>
    document.getElementById("myForm").addEventListener("submit",function (evt){
        if (!checkValiDate()){
            evt.preventDefault();
        }else {
            alert('Thêm thành công');
        }
    })
    function checkValiDate(){

        let maSpCT = document.getElementById("maSpCT").value;
        let trangThai = document.getElementById("trangThai").value;

        let errMaSpCT = document.getElementById("errMaSpCT");
        let errTrangThai = document.getElementById("errTrangThai");

        if (maSpCT==""){
            errMaSpCT.textContent="Bạn chưa nhập mã";
            return false;
        }else {
            errMaSpCT.textContent="";
        }

        if (trangThai==""){
            errTrangThai.textContent="Bạn chưa nhập trạng thái";
            return  false;
        }else {
            if (trangThai<0){
                errTrangThai.textContent="Trạng thái lớn hơn -1"
                return false;
            }else {
                errTrangThai.textContent = ""
            }
        }
      return true;
    }

</script>

</html>