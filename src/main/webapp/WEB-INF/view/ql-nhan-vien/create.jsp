<%@ page contentType="text/html;charset=UTF-8" language="java" %>

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
    <sf:form id="myForm" method="post" action="/nhan-vien/store" >
        <div class="col-4 ms-3">
            <label class="form-label">ID:</label>
            <input class="form-control me-2" type="text" name="id" id="id">
            <span id="errID"></span>
        </div>
        <div class="col-4 ms-3">
            <label class="form-label">Tên:</label>
            <input class="form-control me-2" type="text" name="ten" id="ten">
            <span id="errTen"></span>
        </div>
        <div class="col-4 ms-3">
            <label class="form-label">Mã nhân viên:</label>
            <input class="form-control me-2" type="text" name="ma" id="ma">
            <span id="errMaNV"></span>
        </div>
        <div class="col-4 ms-3">
            <label class="form-label">Tên đăng nhập:</label>
            <input class="form-control me-2" type="text" name="tenDangNhap" id="tenDangNhap">
            <span id="errtenDangNhap"></span>
        </div>
        <div class="col-4 ms-3">
            <label class="form-label">Mật khẩu:</label>
            <input class="form-control me-2" type="text" name="matKhau" id="matKhau">
            <span id="errmatKhau"></span>
        </div>
        <div class="col-4 ms-3">
            <label class="form-label">Trạng thái</label>
            <input class="form-control me-2" type="text" name="trangThai" id="trangThai">
        </div>
        <button class="btn btn-success mt-2 ms-3" type="submit">Thêm</button>
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
        let ten = document.getElementById("ten").value;
        let ma = document.getElementById("ma").value;
        let tenDangNhap = document.getElementById("tenDangNhap").value;
        let matKhau = document.getElementById("matKhau").value;


        let errTen = document.getElementById("errTen");
        let errMaNV = document.getElementById("errMaNV");
        let errtenDangNhap = document.getElementById("errtenDangNhap");
        let errmatKhau = document.getElementById("errTen");

        if (ten==""){
            errTen.textContent="Bạn chưa nhập tên";
            return false;
        }else {
            errTen.textContent="";
        }

        if (ma==""){
            errMaNV.textContent="Bạn chưa nhập mã";
            return false;
        }else {
            errMaNV.textContent="";
        }

        if (tenDangNhap==""){
            errtenDangNhap.textContent="Bạn chưa nhập tên đăng nhập";
            return false;
        }else {
            errtenDangNhap.textContent="";
        }

        if (matKhau==""){
            errmatKhau.textContent="Bạn chưa nhập mật khẩu";
            return false;
        }else {
            errmatKhau.textContent="";
        }

        return true;
    }
</script>

</html>