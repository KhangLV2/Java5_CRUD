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
    <sf:form id="myForm" method="post" action="/san-pham/store">
<%--        <div class="col-4 ms-3">--%>
<%--            <label class="form-label">ID:</label>--%>
<%--            <input class="form-control me-2" type="text" name="id">--%>
<%--        </div>--%>
        <div class="col-4 ms-3">
            <label class="form-label">Mã:</label>
            <input class="form-control me-2" type="text" name="ma" id="ma">
            <span id="errMa"></span>
        </div>
        <div class="col-4 ms-3">
            <label class="form-label">Tên:</label>
            <input class="form-control me-2" type="text" name="ten" id="ten">
            <span id="errTen"></span>
        </div>
        <div class="col-4 ms-3">
            <label class="form-label">Trạng thái:</label>
            <input class="form-control me-2" type="text" name="trangThai" id="trangThai">
            <span id="errTrangThai"></span>
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
        let ma = document.getElementById("ma").value;
        let ten = document.getElementById("ten").value;
        let trangThai = document.getElementById("trangThai").value;

        let errMa = document.getElementById("errMa");
        let errTen = document.getElementById("errTen");
        let errTrangThai = document.getElementById("errTrangThai")

        if (ma==""){
            errMa.textContent="Bạn chưa nhập mã";
            return false;
        }else {
            errMa.textContent="";
        }

        if (ten==""){
            errTen.textContent="Bạn chưa nhập tên";
            return false;
        }else {
            errTen.textContent="";
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