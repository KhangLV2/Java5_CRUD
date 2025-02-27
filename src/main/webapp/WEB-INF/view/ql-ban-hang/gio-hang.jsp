<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.UUID" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <title>E-Commerce Cart</title>

    <head>
        <meta name="viewport" content="width=device-width,initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Latest compiled and minified CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

        <!-- Latest compiled JavaScript -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon" />

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.gstatic.com" />
        <link
                href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
                rel="stylesheet"
        />

        <!-- Font Awesome -->
        <link
                href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
                rel="stylesheet"
        />

        <!-- Libraries Stylesheet -->
        <!-- <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet"> -->

        <!-- Customized Bootstrap Stylesheet -->
<%--        <link href="../css/style.css" rel="stylesheet" />--%>
    </head>
    <style type="text/css">
        .table tbody td {
            vertical-align: middle;
        }

        .btn-incre,
        .btn-decre {
            box-shadow: none;
            font-size: 25px;
        }
    </style>
</head>

<body>

<div class="container my-3">
    <div class="row px-xl-5">
        <div class="col-lg-8 table-responsive mb-5">

            <table class="table">
                    <thead>
                    <tr>
                        <th>Tên</th>
                        <th>Giá</th>
                        <th>Số lượng</th>
                        <th>Size</th>
                        <th>Màu</th>
                        <th>Thao tác</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${list}" var="gioHang">
                    <tr>
                        <td>${gioHang.idSanPham.ten}</td>
                        <td>${gioHang.donGia*gioHang.soLuong}$</td>
                        <td>
                            <input type="number" value="${gioHang.soLuong}" style="width: 50px;">
                        </td>
                        <td>${gioHang.idKichThuoc.ten}</td>
                        <td>${gioHang.idMauSac.ten}</td>
                        <td>
                            <a href="/trang-chu/delete/${gioHang.id}" class="btn btn-danger">Xóa</a>
                        </td>
                    </tr>
                    </c:forEach>


            </table>
<%--            <c:if test="${cart==null}">--%>
<%--                <div class="alert alert-warning" role="alert">--%>
<%--                    Chưa có sản phẩm nào trong giỏ hàng--%>
<%--                </div>--%>
<%--            </c:if>--%>
        </div>

        <!-- Right -->
        <div class="col-lg-4">
            <form action="/check-out" method="post">
                <div class="card border-secondary mb-5">
                    <div class="card-header bg-secondary border-0">
                        <h4 class="font-weight-semi-bold m-0">Thông tin khách hàng</h4>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Họ tên</label>
                        <input type="type" class="form-control" name="name" />
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Số điện thoại</label>
                        <input type="type" class="form-control" name="phone" />
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Địa chỉ</label>
                        <textarea
                                rows=""
                                cols=""
                                name="address"
                                class="form-control"
                        ></textarea>
                    </div>
                    <div class="card-footer border-secondary bg-transparent">
                        <div class="d-flex justify-content-between mt-2">
                            <h5 class="font-weight-bold">Total Price: ${total}$</h5>

<%--                            <h5 class="font-weight-bold">${total}</h5>--%>

                        </div>
                        <button
                                type="submit"
                                class="btn btn-block btn-primary my-3 py-3"
                        >
                            Đặt đơn hàng
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </div>


    <div class="d-flex py-3">
        <a class="mx-3 btn btn-primary" href="/trang-chu">Quay lại</a>
    </div>
</div>

</body>

</html>