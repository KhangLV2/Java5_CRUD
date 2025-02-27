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
    <form action="/chi-tiet-sp/update/${chiTietSP.id}" method="post">
        <div class="mb-3 mt-3">
            <label for="email" class="form-label">ID:</label>
            <input type="text" class="form-control" id="email" name="id" value="${chiTietSP.id}" disabled>
        </div>
        <div class="mb-3">
            <label for="pwd" class="form-label">Mã chi tiết sản phẩm:</label>
            <input type="text" class="form-control" id="pwd" name="maSpCT" value="${chiTietSP.maSpCT}">
        </div>
        <div class="mb-3">
            <label for="pwd" class="form-label">Kích thước:</label>
            <select class="form-select" name="idKichThuoc">
                <c:forEach items="${listKichThuoc}" var="i">
                    <option value="${i.id}" ${chiTietSP.idKichThuoc.id==i.id?"selected":""}>${i.ten}</option>
                </c:forEach>
            </select>
        </div>
        <div class="mb-3">
            <label for="pwd" class="form-label">Màu sắc:</label>
            <select class="form-select" name="idMauSac">
                <c:forEach items="${listMauSac}" var="i">
                    <option value="${i.id}" ${chiTietSP.idMauSac.id==i.id?"selected":""}>${i.ten}</option>
                </c:forEach>
            </select>
        </div>
        <div class="mb-3">
            <label for="pwd" class="form-label">Sản phẩm:</label>
            <select class="form-select" name="idSanPham">
                <c:forEach items="${listSP}" var="i">
                    <option value="${i.id}" ${chiTietSP.idSanPham.id==i.id?"selected":""}>${i.ten}</option>
                </c:forEach>
            </select>
        </div>
        <div class="mb-3">
            <label for="pwd" class="form-label">Số lượng:</label>
            <input type="text" class="form-control" id="pwd" name="soLuong" value="${chiTietSP.soLuong}">
        </div>
        <div class="mb-3">
            <label for="pwd" class="form-label">Đơn giá:</label>
            <input type="text" class="form-control" id="pwd" name="donGia" value="${chiTietSP.donGia}">
        </div>
        <div class="mb-3">
            <label for="pwd" class="form-label">Trạng thái:</label>
            <input type="text" class="form-control" id="pwd" name="trangThai" value="${chiTietSP.trangThai}">
        </div>
        <button type="submit" class="btn btn-primary">Update</button>
    </form>
</div>
</body>
</html>