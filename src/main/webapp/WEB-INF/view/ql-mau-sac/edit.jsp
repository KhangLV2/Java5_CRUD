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
    <sf:form method="post" action="/mau-sac/update/${mauSac.id}">
        <div class="col-4 ms-3">
            <label class="form-label">ID:</label>
            <input class="form-control me-2" type="text" name="id" value="${mauSac.id}" disabled>
        </div>
        <div class="col-4 ms-3">
            <label class="form-label">Mã:</label>
            <input class="form-control me-2" type="text" name="ma" value="${mauSac.ma}">
        </div>
        <div class="col-4 ms-3">
            <label class="form-label">Tên:</label>
            <input class="form-control me-2" type="text" name="ten" value="${mauSac.ten}">
        </div>
        <div class="col-4 ms-3">
            <label class="form-label">Trạng thái:</label>
            <input class="form-control me-2" type="text" name="trangThai" value="${mauSac.trangThai}">
        </div>
        <button class="btn btn-success mt-2 ms-3" type="submit">Thêm</button>
    </sf:form>
</div>
</body>
</html>