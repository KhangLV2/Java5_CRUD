<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>

    <!-- Popper JS -->
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>

<body>
<!--  -->
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
    <!-- Brand/logo -->
    <a class="navbar-brand" href="#">Shop Giày</a>

    <!-- Links -->
    <ul class="navbar-nav">
        <li class="nav-item">
            <a class="nav-link" href="/mau-sac">QL Màu Sắc</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="/kich-thuoc">QL Kích thước</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="/san-pham">QL Sản Phẩm</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="/nhan-vien">QL Nhân Viên</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="/khach-hang">QL Khách Hàng</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="/chi-tiet-sp">QL Chi Tiết Sản Phẩm</a>
        </li>
    </ul>
</nav>
<!--  -->
<%--<div class="container mt-5">--%>
<%--    <div class="card-deck">--%>
<%--        <c:forEach items="${list}" var="o">--%>
<%--            <div class="card">--%>
<%--                <img src="https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/1057bb40-83be-436d-b137-2b21ae59be20/full-force-low-shoes-w2MKmW.png"--%>
<%--                     class="card-img-top" alt="...">--%>
<%--                <div class="card-body">--%>
<%--                    <h5 class="card-title"><a href="/trang-chu/edit/${o.id}">Tên sản phẩm: ${o.idSanPham.ten}</a> </h5>--%>
<%--                    <p class="card-text">Giá: ${o.donGia}$</p>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </c:forEach>--%>
<%--    </div>--%>
<%--</div>--%>

<%--<div class="page-container">--%>
<%--    <!-- HEADER DESKTOP-->--%>
<%--    <header class="header-desktop">--%>
<%--        <div class="section__content section__content--p30">--%>
<%--            <h3 style="padding-left: 300px;">Shop thời trang Việt Nam chất lượng cao</h3>--%>
<%--        </div>--%>
<%--    </header>--%>
<%--    <!-- END HEADER DESKTOP-->--%>

<%--    <!-- MAIN CONTENT-->--%>
<%--    <div class="main-content">--%>
<%--        <div class="section__content section__content--p30">--%>
<%--            <div class="container-fluid">--%>
<%--                <div class="row">--%>
<%--                    <div class="col-lg-9">--%>
<%--                        <div class="card">--%>
<%--                            <div class="">--%>
<%--                                <table class="table table-hover">--%>
<%--                                    <thead>--%>
<%--                                    <tr>--%>
<%--                                        <th>ID</th>--%>
<%--                                        <th>Tên nhân viên</th>--%>
<%--                                        <th>Ngày mua hàng</th>--%>
<%--                                        <th>Trạng thái</th>--%>
<%--                                        <th>--%>
<%--                                            <a href="/ban-hang/store" class="btn btn-success">+</a>--%>
<%--                                        </th>--%>
<%--                                    </tr>--%>
<%--                                    </thead>--%>
<%--                                    <tbody>--%>
<%--                                    <c:forEach varStatus="i" items="${listBH}" var="o">--%>
<%--                                        <tr>--%>
<%--                                            <td>${i.index+1}</td>--%>
<%--                                            <td>${o.idNhanVien.ten}</td>--%>
<%--                                            <td>${o.ngayMuaHang}</td>--%>
<%--                                            <td>${o.trangThai==0?"Đang chờ":"Hoàn thành"}</td>--%>
<%--                                            <td>--%>
<%--                                                <a href="" class="btn btn-primary">View</a>--%>
<%--                                            </td>--%>
<%--                                        </tr>--%>
<%--                                    </c:forEach>--%>

<%--                                    </tbody>--%>
<%--                                </table>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <!--  -->--%>
<%--                        <div class="card" style="margin-top: 50px">--%>
<%--                            <div class="">--%>
<%--                                <table class="table table-hover">--%>
<%--                                    <thead>--%>
<%--                                    <tr>--%>
<%--                                        <th>Firstname</th>--%>
<%--                                        <th>Lastname</th>--%>
<%--                                        <th>Email</th>--%>
<%--                                    </tr>--%>
<%--                                    </thead>--%>
<%--                                    <tbody>--%>
<%--                                    <tr>--%>
<%--                                        <td>John</td>--%>
<%--                                        <td>Doe</td>--%>
<%--                                        <td>john@example.com</td>--%>
<%--                                    </tr>--%>
<%--                                    <tr>--%>
<%--                                        <td>Mary</td>--%>
<%--                                        <td>Moe</td>--%>
<%--                                        <td>mary@example.com</td>--%>
<%--                                    </tr>--%>
<%--                                    <tr>--%>
<%--                                        <td>July</td>--%>
<%--                                        <td>Dooley</td>--%>
<%--                                        <td>july@example.com</td>--%>
<%--                                    </tr>--%>
<%--                                    </tbody>--%>
<%--                                </table>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="col-lg-3">--%>
<%--                        <div class="card">--%>
<%--                            <div class="card-body">--%>
<%--                                <form action="/action_page.php">--%>
<%--                                    <div class="form-group">--%>
<%--                                        <label for="email">ID:</label>--%>
<%--                                        <input type="text" class="form-control" id="email">--%>
<%--                                    </div>--%>
<%--                                    <div class="form-group">--%>
<%--                                        <label for="email">Tên nhân viên:</label>--%>
<%--                                        <input type="text" class="form-control" id="email">--%>
<%--                                    </div>--%>
<%--                                    <div class="mb-3">--%>
<%--                                        <label class="form-label">Chức vụ:</label>--%>
<%--                                        <select class="form-select" name="chucVu">--%>
<%--                                            <c:forEach items="${listChucVu}" var="i">--%>
<%--                                                <option>${i}</option>--%>
<%--                                            </c:forEach>--%>
<%--                                        </select>--%>
<%--                                    </div>--%>
<%--                                    <button type="submit" class="btn btn-primary">Submit</button>--%>
<%--                                </form>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>

<%--                <div class="row">--%>
<%--                    <div class="col-12">--%>
<%--                        <div class="card" style="margin-top: 50px;margin-bottom: 100px">--%>
<%--                            <div class="">--%>
<%--                                <table class="table table-hover">--%>
<%--                                    <thead>--%>
<%--                                    <tr>--%>
<%--                                        <th>Firstname</th>--%>
<%--                                        <th>Lastname</th>--%>
<%--                                        <th>Email</th>--%>
<%--                                    </tr>--%>
<%--                                    </thead>--%>
<%--                                    <tbody>--%>
<%--                                    <tr>--%>
<%--                                        <td>John</td>--%>
<%--                                        <td>Doe</td>--%>
<%--                                        <td>john@example.com</td>--%>
<%--                                    </tr>--%>
<%--                                    <tr>--%>
<%--                                        <td>Mary</td>--%>
<%--                                        <td>Moe</td>--%>
<%--                                        <td>mary@example.com</td>--%>
<%--                                    </tr>--%>
<%--                                    <tr>--%>
<%--                                        <td>July</td>--%>
<%--                                        <td>Dooley</td>--%>
<%--                                        <td>july@example.com</td>--%>
<%--                                    </tr>--%>
<%--                                    </tbody>--%>
<%--                                </table>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>

<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>
<%----%>
</body>

</html>