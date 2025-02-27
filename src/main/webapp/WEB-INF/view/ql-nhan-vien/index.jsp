<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <h4 class="mt-4" style="text-align: center">Danh sách nhân viên</h4>
    <a href="/nhan-vien/create" class="btn btn-success">Thêm</a>
    <table class="table table-hover">
        <thead>
        <tr>
            <th>ID</th>
            <th>Tên</th>
            <th>Mã nhân viên</th>
            <th>Tên đăng nhập</th>
            <th>Mật khẩu</th>
            <th>Trạng thái</th>
            <th>Sự kiện</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${pageData.content}" var="o">
            <tr>
                <td>${o.id}</td>
                <td>${o.ten}</td>
                <td>${o.ma}</td>
                <td>${o.tenDangNhap}</td>
                <td>${o.matKhau}</td>
                <td>${o.trangThai}</td>
                <td>
                    <a href="/nhan-vien/edit/${o.id}" class="btn btn-warning">Chi tiết</a>
                    <a href="/nhan-vien/delete/${o.id}" onclick="return confirm('Bạn có muốn xóa không')" class="btn btn-danger">Xóa</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

    <div>
        <ul class="pagination">
            <c:if test="${pageData.number>0}">
                <li class="page-item"><a class="page-link" href="/nhan-vien?page=${pageData.number - 1}">Previous</a></li>
            </c:if>
            <c:forEach begin="1" end="${total}" var="i">
                <li class="page-item ${pageData.number==i-1?"active":""}"><a href="/nhan-vien?page=${i-1}" class="page-link">${i}</a></li>
            </c:forEach>

            <c:if test="${pageData.number<total-1}">
                <li class="page-item"><a class="page-link" href="/nhan-vien?page=${pageData.number + 1}">Next</a></li>
            </c:if>

        </ul>
    </div>
</div>
</body>
</html>