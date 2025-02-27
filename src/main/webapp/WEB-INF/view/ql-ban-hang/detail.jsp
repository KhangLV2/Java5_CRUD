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
    <form action="/trang-chu/mua-hang" method="post">

        <div class="row">
            <div class="col-5" >
                <img src="https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/1057bb40-83be-436d-b137-2b21ae59be20/full-force-low-shoes-w2MKmW.png"
                     class="card-img-top" alt="..." height="400px">
            </div>
            <div class="col-7">
<%--                --%>
                <h3 class="mt-5" style="text-align: center">Thông tin sản phẩm</h3>
    <input type="text" name="id" value="${chiTietSP.id}" style="display: none">
    <p>Tên sản phẩm: ${chiTietSP.idSanPham.ten}</p>
    <input type="text" name="ten" value="${chiTietSP.idSanPham.ten}" style="display: none">
    <p>Giá sản phẩm: ${chiTietSP.donGia}$</p>
    <input type="text" name="donGia" value="${chiTietSP.donGia}" style="display: none">
    <div class="row">
        <div class="col-6 mb-3">
            <label for="pwd" class="form-label">Kích thước:</label>
            <select class="form-select" name="idKichThuoc">
                <c:forEach items="${listKichThuoc}" var="i">
                    <option value="${i.ten}" ${chiTietSP.idKichThuoc.ten==i.ten?"selected":""}>${i.ten}</option>
                </c:forEach>
            </select>
        </div>
        <div class="col-6 mb-3">
            <label for="pwd" class="form-label">Màu sắc:</label>
            <select class="form-select" name="idMauSac">
                <c:forEach items="${listMauSac}" var="i">
                    <option value="${i.ten}" ${chiTietSP.idMauSac.ten==i.ten?"selected":""}>${i.ten}</option>
                </c:forEach>
            </select>
        </div>
    </div>
    <div class="col-4 mb-3">
        <label for="pwd" class="form-label">Số lượng:</label>
        <input type="number" class="form-control" id="pwd" name="soLuong" value="1">
    </div>
    <button type="submit" class="btn btn-primary">Mua ngay</button>

            </div>
        </div>


    </form>
</div>
</body>
</html>