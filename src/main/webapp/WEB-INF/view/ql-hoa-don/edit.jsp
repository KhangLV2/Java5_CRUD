<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    <sf:form id="myForm" action="/hoa-don/update/${hoaDon.id}" method="post">
<%--        <div class="mb-3 mt-3">--%>
<%--            <label class="form-label">ID:</label>--%>
<%--            <input type="text" class="form-control" name="id" value="${hoaDon.id}" disabled>--%>
<%--        </div>--%>
        <div class="mb-3">
            <label  class="form-label">ID khách hàng:</label>
            <select class="form-select" name="idKhachHang">
                <c:forEach items="${listKhachHang}" var="i">
                    <option value="${i.id}" ${hoaDon.idKhachHang.id==i.id?"selected":""}>${i.ten}</option>
                </c:forEach>
            </select>
        </div>
        <div class="mb-3">
            <label  class="form-label">ID nhân viên:</label>
            <select class="form-select" name="idNhanVien">
                <c:forEach items="${listNhanVien}" var="i">
                    <option value="${i.id}" ${hoaDon.idNhanVien.id==i.id?"selected":""}>${i.ten}</option>
                </c:forEach>
            </select>
        </div>
                <div class="mb-3">
                    <label for="pwd" class="form-label">Ngày mua hàng:</label>
                    <input type="text" class="form-control" name="ngayMuaHang" value="<fmt:formatDate value="${hoaDon.ngayMuaHang}" pattern="dd/MM/yyyy"/>" >
                    <span id="errSL"></span>
                </div>
        <div class="mb-3">
            <label  class="form-label">Trạng thái:</label>
            <input type="text" class="form-control" name="trangThai" value="${hoaDon.trangThai}">
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
        let soLuong = document.getElementById("soLuong").value;
        let donGia = document.getElementById("donGia").value;

        let errmaSpCT = document.getElementById("errMaSpCT");
        let errSL = document.getElementById("errSL");
        let errDonGia = document.getElementById("errDonGia");

        if (maSpCT==""){
            errmaSpCT.textContent="Bạn chưa nhập mã SPCT";
            return false;
        }else {
            errmaSpCT.textContent="";
        }

        if (soLuong==""){
            errSL.textContent="Bạn chưa nhập số lượng";
            return false;
        }else {
            errSL.textContent="";
        }

        if (donGia==""){
            errDonGia.textContent="Bạn chưa nhập đơn giá";
            return false;
        }else {
            errDonGia.textContent="";
        }
        return true;
    }

</script>

</html>