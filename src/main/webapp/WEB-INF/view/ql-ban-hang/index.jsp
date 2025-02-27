<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
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
    <div class="row">
        <div class="col-8">
            <div class="table1">
                <h4>Hóa đơn chờ</h4>z
                <table class="table table-bordered">
                    <thead>
                    <tr>
                        <th scope="col">STT</th>
                        <th scope="col">ID</th>
                        <th scope="col">Ngày tạo</th>
                        <th scope="col">Tên nhân viên</th>
                        <th scope="col">
                            <form>
                                <button type="submit" class="btn btn-success">+</button>
                            </form>
                        </th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>John</td>
                        <td>Doe</td>
                        <td>john@example.com</td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <div class="table2">
                <h4>Giỏ hàng</h4>
                <table class="table table-bordered mt-4">
                    <thead>
                    <tr>
                        <th scope="col">STT</th>
                        <th scope="col">Mã SP</th>
                        <th scope="col">Tên SP</th>
                        <th scope="col">Số lượng</th>
                        <th scope="col">Đơn giá</th>
                        <th scope="col">Thành tiền</th>
                        <th scope="col"></th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>John</td>
                        <td>Doe</td>
                        <td>john@example.com</td>
                    </tr>
                    <tr>
                        <td>Mary</td>
                        <td>Moe</td>
                        <td>mary@example.com</td>
                    </tr>
                    <tr>
                        <td>July</td>
                        <td>Dooley</td>
                        <td>july@example.com</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="col-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">HÓA ĐƠN</h5>
                    <sf:form>
                        <div class="row mb-3">
                            <label class="col-sm-4 col-form-label">ID hóa đơn</label>
                            <div class="col-sm-8">
                                <input class="form-control me-2" type="text" name="id">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label class="col-sm-4 col-form-label">Ngày tạo</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" name="ngayMuaHang"/>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label class="col-sm-4 col-form-label">Sđt khách hàng</label>
                            <div class="col-sm-6">
                                <select class="form-select">
                                    <option>1</option>
                                    <option>2</option>
                                    <option>3</option>
                                    <option>4</option>
                                </select>
                            </div>
                            <a class="col-sm-2" data-bs-toggle="modal" data-bs-target="#exampleModal" href="#">
                                <i class=" bi bi-folder-plus col-3" style="font-size: 25px;"></i>
                            </a>
                        </div>
                        <div class="row mb-3">
                            <label class="col-sm-4 col-form-label">Tổng tiền</label>
                            <div class="col-sm-8">
                                <input id="tongTien" type="number" class="form-control" readonly/>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label class="col-sm-4 col-form-label">Tiền khách đưa</label>
                            <div class="col-sm-6">
                                <input id="tienKhachDua" class="form-control" type="number" required>
                            </div>
                            <i id="calculateChangeButton" class=" col-sm-2 bi bi-chevron-double-down"
                               style="font-size: 20px" onclick="calculateChange()"></i>
                        </div>

                        <div class="row mb-3">
                            <label class="col-sm-4 col-form-label">Trả lại</label>
                            <div class="col-sm-8">
                                <input id="tienTraLai" type="number" class="form-control" required>
                            </div>
                        </div>
                        <div class="row mb-3 mt-4 justify-content-end text-end">
                            <div class="col-sm-10">
                                <button type="submit" class="btn btn-success ">THANH TOÁN</button>
                            </div>
                        </div>
                    </sf:form><!-- End General Form Elements -->
                </div>
            </div>
        </div>
    </div>

<%--    --%>
    <div class="row">
        <table class="table mt-5">
            <thead>
            <tr>
                <th scope="col">STT</th>
                <th scope="col">Mã</th>
                <th scope="col">Tên SP</th>
                <th scope="col">Kích thước</th>
                <th scope="col">Màu sắc</th>
                <th scope="col">Số lượng</th>
                <th scope="col">Đơn giá</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                <td>1</td>
            </tr>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>