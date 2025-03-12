<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- JQuery -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <!-- Bootstrap 5 JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/boxicons/2.1.0/css/boxicons.min.css"
          integrity="sha512-pVCM5+SN2+qwj36KonHToF2p1oIvoU3bsqxphdOIWMYmgr4ZqD3t5DjKvvetKhXGc/ZG5REYTT6ltKfExEei/Q=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/MaterialDesign-Webfont/5.3.45/css/materialdesignicons.css"
          integrity="sha256-NAxhqDvtY0l4xn+YVa6WjAcmd94NNfttjNsDmNatFVc=" crossorigin="anonymous"/>


    <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
    <link rel="icon" type="image/png" href="../assets/img/estate.png">
    <title>
        Quản lý
    </title>
    <!--     Fonts and icons     -->
    <link rel="stylesheet" type="text/css"
          href="https://fonts.googleapis.com/css?family=Inter:300,400,500,600,700,900"/>
    <!-- Nucleo Icons -->
    <link href="../assets/css/nucleo-icons.css" rel="stylesheet"/>
    <link href="../assets/css/nucleo-svg.css" rel="stylesheet"/>
    <!-- Font Awesome Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

    <!-- Material Icons -->
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css2?family=Material+Symbols+Rounded:opsz,wght,FILL,GRAD@24,400,0,0"/>
    <!-- CSS Files -->
    <link id="pagestyle" href="../assets/css/material-dashboard.css?v=3.2.0" rel="stylesheet"/>
</head>

<body class="g-sidenav-show  bg-gray-100">
<aside class="sidenav navbar navbar-vertical navbar-expand-xs border-radius-lg fixed-start ms-2  bg-white my-2"
       id="sidenav-main">
    <div class="sidenav-header">
        <i class="fas fa-times p-3 cursor-pointer text-dark opacity-5 position-absolute end-0 top-0 d-none d-xl-none"
           aria-hidden="true" id="iconSidenav"></i>
        <a class="navbar-brand px-4 py-3 m-0" href="/dashboard">
            <img src="../assets/img/estate.png" class="navbar-brand-img" width="26" height="26" alt="main_logo">
            <span class="ms-1 text-sm text-dark">Estate</span>
        </a>
    </div>
    <hr class="horizontal dark mt-0 mb-2">
    <div class="collapse navbar-collapse  w-auto " id="sidenav-collapse-main">
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link active bg-gradient-dark text-white" href="/tables">
                    <i class="material-symbols-rounded opacity-5">receipt_long</i>
                    <span class="nav-link-text ms-1">Quản lý</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link text-dark" href="/">
                    <i class="material-symbols-rounded opacity-5">login</i>
                    <span class="nav-link-text ms-1">Client</span>
                </a>
            </li>

        </ul>
    </div>

</aside>
<main class="main-content position-relative max-height-vh-100 h-100 border-radius-lg ">
    <!-- Navbar -->
    <nav class="navbar navbar-main navbar-expand-lg px-0 mx-3 shadow-none border-radius-xl" id="navbarBlur"
         data-scroll="true">
        <div class="container-fluid py-1 px-3">

            <div class="collapse navbar-collapse mt-sm-0 mt-2 me-md-0 me-sm-4" id="navbar">
                <div class="ms-md-auto pe-md-3 d-flex align-items-center">

                </div>
                <ul class="navbar-nav d-flex align-items-center  justify-content-end">
                    <li class="nav-item d-xl-none ps-3 d-flex align-items-center">
                        <a href="javascript:;" class="nav-link text-body p-0" id="iconNavbarSidenav">
                            <div class="sidenav-toggler-inner">
                                <i class="sidenav-toggler-line"></i>
                                <i class="sidenav-toggler-line"></i>
                                <i class="sidenav-toggler-line"></i>
                            </div>
                        </a>
                    </li>
                    <li class="nav-item px-3 d-flex align-items-center">
                        <a href="javascript:;" class="nav-link text-body p-0">
                            <i class="material-symbols-rounded fixed-plugin-button-nav">settings</i>
                        </a>
                    </li>
                    <li class="nav-item d-flex align-items-center">
                        <a href="/sign-in" class="nav-link text-body font-weight-bold px-0">
                            <i class="material-symbols-rounded">account_circle</i>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- End Navbar -->
    <style>
        @keyframes fadeIn {
            from {
                opacity: 0;
            }

            to {
                opacity: 1;
            }
        }

        .animated-text {
            font-size: 4rem;
            font-weight: bold;
            color: #000;
            animation: fadeIn 2s ease-in;
        }
    </style>
    <!-- tìm kiếm -->

    <div class="col-md-12 mb-lg-0 mb-4 search-container">
        <h3 class="mb-0">Danh sách toà nhà</h3>
        <div class="card mt-4">
            <div class="card-header pb-0 p-3">
                <div class="row">
                    <div class="col-6 d-flex align-items-center">
                        <h6 class="mb-0">Tìm kiếm</h6>
                    </div>
                    <div class="col-6 text-end">
                        <a class="btn btn-info bg-gradient-info  mb-0" href="javascript:;" id="btnSearch">
                            <i class="material-symbols-rounded text-sm">search</i>&nbsp;&nbsp;Tìm kiếm
                        </a>
                    </div>

                </div>
            </div>
            <div class="card-body p-3">

                <form action="/tables" id="searchForm" method="GET">
                    <div class="row" style="margin-bottom: 10px;">
                        <div class="col-md-6 mb-md-0 mb-4">
                            <label style="margin: 0;">Tên tòa nhà</label>
                            <input type="text" class="form-control border  rounded-0 flex-row p-1" id="name" name="name">
                        </div>
                        <div class="col-md-6">
                            <label style="margin: 0;">Diện tích sàn</label>
                            <input type="text" class="form-control border p-1 rounded-0" id="floorarea" name="floorarea">
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-md-4 mb-md-0 mb-4">
                            <label style="margin: 0;">Số tầng hầm</label>
                            <input type="text" class="form-control border  rounded-0 flex-row p-1"
                                   id="numberofbasement" name="numberofbasement">
                        </div>
                        <div class="col-md-4">
                            <label style="margin: 0;">Hướng</label>
                            <input type="text" class="form-control border p-1 rounded-0" id="direction" name="direction">
                        </div>
                        <div class="col-md-4">
                            <label style="margin: 0;">Hạng</label>
                            <input type="text" class="form-control border p-1 rounded-0" id="level" name="level">
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-2 mb-md-0 mb-4">
                            <label style="margin: 0;">Quận</label>
                            <select class="form-select border rounded-0 flex-row p-1" id="districtid" name="districid">
                                <option value="">Chọn quận</option>
                                <c:forEach var="district" items="${districtList}">
                                    <option value="${district.id}">${district.name}</option>
                                </c:forEach>

                            </select>
                        </div>
                        <div class="col-md-5">
                            <label style="margin: 0;">Phường</label>
                            <input type="text" class="form-control border p-1 rounded-0" id="ward" name="ward">
                        </div>
                        <div class="col-md-5">
                            <label style="margin: 0;">Đường</label>
                            <input type="text" class="form-control border p-1 rounded-0" id="street" name="street">
                        </div>
                    </div>


                    <div class="row">
                        <div class="col-md-3 mb-md-0 mb-4">
                            <label style="margin: 0;">Diện tích từ</label>
                            <input type="text" class="form-control border  rounded-0 flex-row p-1" id="rentareafrom" name="rentareafrom">
                        </div>
                        <div class="col-md-3">
                            <label style="margin: 0;">Diện tích đến</label>
                            <input type="text" class="form-control border p-1 rounded-0" id="rentareato" name="rentareato">
                        </div>
                        <div class="col-md-3">
                            <label style="margin: 0;">Giá thuê từ</label>
                            <input type="text" class="form-control border p-1 rounded-0" id="rentpricefrom" name="rentpricefrom">
                        </div>
                        <div class="col-md-3">
                            <label style="margin: 0;">Giá thuê đến</label>
                            <input type="text" class="form-control border p-1 rounded-0" id="rentpriceto" name="rentpriceto">
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-5 mb-md-0 mb-4">
                            <label style="margin: 0;">Tên quản lý</label>
                            <input type="text" class="form-control border  rounded-0 flex-row p-1" id="managername" name="managername">
                        </div>
                        <div class="col-md-5">
                            <label style="margin: 0;">Số điện thoại quản lý</label>
                            <input type="text" class="form-control border p-1 rounded-0" id="managerphonenumber" name="managerphonenumber">
                        </div>
                        <div class="col-md-2">
                            <label style="margin: 0;">Nhân viên</label>
                            <select class="form-select border rounded-0 flex-row p-1" id="staffid" name="staffid">
                                <option value="">Chọn nhân viên</option>
                                <c:forEach var="user" items="${userList}">
                                    <option value="${user.id}">${user.fullname}</option>
                                </c:forEach>

                            </select>
                        </div>
                    </div>

                    <div class="col-md-12 mt-2" id="buildingType" name="buildingType" >
                        <label>Loại tòa nhà:</label>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="checkbox" id="nguyenCan" name="buildingType"
                                   value="nguyen-can">
                            <label class="form-check-label" for="nguyenCan">Nguyên căn</label>
                        </div>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="checkbox" name="buildingType" id="noiThat"
                                   value="noi-that">
                            <label class="form-check-label" for="noiThat">Nội thất</label>
                        </div>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="checkbox" name="buildingType" id="tangTret"
                                   value="tang-tret">
                            <label class="form-check-label" for="tangTret">Tầng trệt</label>
                        </div>

                    </div>
                </form>

                <style>
                    #buildingType .form-check-input {
                        appearance: none;
                        -webkit-appearance: none;
                        -moz-appearance: none;
                        width: 18px;
                        height: 18px;
                        border: 1px solid black;
                        border-radius: 0px;
                        background-color: white;
                        cursor: pointer;
                        display: inline-block;
                        position: relative;
                    }

                    /* Khi checkbox được chọn */
                    #buildingType .form-check-input:checked {
                        background-color: black !important;
                        border-color: black !important;
                    }

                    /* Ẩn dấu check trắng */
                    #buildingType .form-check-input:checked::after {
                        display: none !important;
                        content: "";
                    }

                    #buildingType .form-check-input:checked::before {
                        content: "✔";
                        font-size: 14px;
                        color: white;
                        position: absolute;
                        left: 50%;
                        top: 50%;
                        transform: translate(-50%, -50%);
                        font-weight: bold;
                    }
                </style>
            </div>
        </div>
    </div>


    <!-- respone -->

    <div class="col-md-12 mb-lg-0 mb-4 result-container">
        <div class="card mt-4">

            <div class="card-body p-3">
                <!-- bảng kết quả -->

                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-md-6">
                            <div class="mb-3">
                                <h6 class="mb-0">Kết quả tìm kiếm</h6>

                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="d-flex flex-wrap align-items-center justify-content-end gap-2 mb-3">
                                <div>
                                    <ul class="nav nav-pills">
                                        <a href="javascript:void(0);" data-bs-toggle="modal" data-bs-target=".add-new"
                                           class="btn btn-danger bg-gradient-danger" >
                                            <i class="bx bx-trash font-size-18"></i> Xóa tòa nhà
                                        </a>
                                    </ul>
                                </div>
                                <div>
                                    <a href="/add" class="btn btn-success bg-gradient-success">
                                        <i class="bx bx-plus me-1"></i> Thêm tòa nhà
                                    </a>
                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="">
                                <div class="table-responsive">

                                    <table class="table project-list-table table-nowrap align-middle table-borderless"
                                           id="respone">
                                        <thead>
                                        <tr>
                                            <th scope="col" class="ps-1" style="width: 50px;">
                                                <div class="form-check font-size-16"><input type="checkbox"
                                                                                            class="form-check-input"
                                                                                            id="contacusercheck"/><label
                                                        class="form-check-label" for="contacusercheck"></label>
                                                </div>
                                            </th>
                                            <th scope="col">Tên tòa nhà</th>
                                            <th scope="col">Địa chỉ</th>
                                            <th scope="col">Số tầng hầm</th>
                                            <th scope="col">Tên quản lý</th>
                                            <th scope="col">SĐT quản lý</th>
                                            <th scope="col">Diện tích sàn</th>
                                            <th scope="col">Diện tích thuê</th>
                                            <th scope="col" style="width: 200px;">Hành động</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach var="building" items="${buildingList}">
                                            <tr>
                                                <th scope="row" class="ps-1">
                                                    <div class="form-check font-size-16"><input type="checkbox"
                                                                                                class="form-check-input"
                                                                                                id="contacusercheck1"/><label
                                                            class="form-check-label" for="contacusercheck1"></label>
                                                    </div>
                                                </th>
                                                <td>${building.name}</td>
                                                <td>${building.address}</td>
                                                <td>${building.numberOfBasement}</td>
                                                <td>${building.managerName}</td>
                                                <td>${building.managerPhoneNumber}</td>
                                                <td>${building.floorArea}</td>
                                                <td>${building.rentArea}</td>
                                                <td>
                                                    <ul class="list-inline mb-0">
                                                        <li class="list-inline-item">
                                                            <a href="/edit" data-bs-toggle="tooltip"
                                                               data-bs-placement="top"
                                                               title="Sửa tòa nhà" class="px-2 text-primary"><i
                                                                    class="bx bx-pencil font-size-18"></i></a>
                                                        </li>
                                                        <li class="list-inline-item">
                                                            <a href="javascript:void(0);" onclick="confirmDelete(this, ${building.id})"
                                                               data-bs-toggle="tooltip" data-bs-placement="top"
                                                               title="Xóa tòa nhà" class="px-2 text-danger">
                                                                <i class="bx bx-trash-alt font-size-18"></i>
                                                            </a>
                                                        </li>


                                                        <li class="list-inline-item">
                                                            <a href="javascript:void(0);"
                                                               data-bs-toggle="modal"
                                                               data-bs-target="#modalGiaoToaNha"
                                                               data-bs-toggle="tooltip"
                                                               data-bs-placement="top"
                                                               title="Giao tòa nhà"
                                                               class="px-2 text-danger">
                                                                <i class="bx bx-user-check font-size-18"></i>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </td>
                                            </tr>
                                        </c:forEach>

                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <style>
                    td {
                        text-align: center;
                        /* Căn giữa ngang */
                        vertical-align: middle;
                        /* Căn giữa dọc */
                        padding: 10px;
                        /* Giãn cách để đẹp hơn */
                    }

                    #respone .form-check-input {
                        appearance: none;
                        -webkit-appearance: none;
                        -moz-appearance: none;
                        width: 18px;
                        height: 18px;
                        border: 1px solid black;
                        border-radius: 0px;
                        background-color: white;
                        cursor: pointer;
                        display: inline-block;
                        position: relative;
                    }

                    /* Khi checkbox được chọn */
                    #respone .form-check-input:checked {
                        background-color: black !important;
                        border-color: black !important;
                    }

                    /* Ẩn dấu check trắng */
                    #respone .form-check-input:checked::after {
                        display: none !important;
                        content: "";
                    }

                    #respone .form-check-input:checked::before {
                        content: "✔";
                        font-size: 14px;
                        color: white;
                        position: absolute;
                        left: 50%;
                        top: 50%;
                        transform: translate(-50%, -50%);
                        font-weight: bold;
                    }

                    .project-list-table {
                        border-collapse: separate;
                        border-spacing: 0 12px
                    }

                    .project-list-table tr {
                        background-color: #fff
                    }

                    .table-nowrap td,
                    .table-nowrap th {
                        white-space: nowrap;
                    }

                    .table-borderless > :not(caption) > * > * {
                        border-bottom-width: 0;
                    }

                    .table > :not(caption) > * > * {
                        padding: 0.75rem 0.75rem;
                        background-color: var(--bs-table-bg);
                        border-bottom-width: 1px;
                        box-shadow: inset 0 0 0 9999px var(--bs-table-accent-bg);
                    }

                    .avatar-sm {
                        height: 2rem;
                        width: 2rem;
                    }

                    .rounded-circle {
                        border-radius: 50% !important;
                    }

                    .me-2 {
                        margin-right: 0.5rem !important;
                    }

                    img,
                    svg {
                        vertical-align: middle;
                    }

                    a {
                        color: #3b76e1;
                        text-decoration: none;
                    }

                    .bg-soft-primary {
                        background-color: rgba(59, 118, 225, .25) !important;
                    }
                </style>

                <!-- end bảng kết quả -->
            </div>
        </div>
    </div>

    <style>
        @keyframes slideIn {
            from {
                opacity: 0;
                transform: translateY(100px);
                /* Bắt đầu từ dưới lên */
            }

            to {
                opacity: 2;
                transform: translateY(0);
            }
        }

        /* Áp dụng animation cho phần tìm kiếm */
        .search-container {
            animation: slideIn 0.8s ease-out;
        }

        /* Áp dụng animation cho bảng kết quả */
        .result-container {
            animation: slideIn 1s ease-out 0.3s;
            /* Delay 0.3s để kết quả xuất hiện sau */
            opacity: 0;
            /* Ẩn trước khi animation chạy */
            animation-fill-mode: forwards;
        }
    </style>

    <div class="fixed-plugin">
        <div class="card shadow-lg">
            <div class="card-header pb-0 pt-3">
                <div class="float-start">
                    <h5 class="mt-3 mb-0">Giao diện</h5>
                </div>
                <div class="float-end mt-4">
                    <button class="btn btn-link text-dark p-0 fixed-plugin-close-button">
                        <i class="material-symbols-rounded">clear</i>
                    </button>
                </div>
                <!-- End Toggle Button -->
            </div>
            <hr class="horizontal dark my-1">
            <div class="card-body pt-sm-3 pt-0">
                <!-- Sidebar Backgrounds -->

                <!-- Sidenav Type -->
                <div class="mt-3">
                    <h6 class="mb-0">Tùy chỉnh thanh bên</h6>

                </div>
                <div class="d-flex">
                    <button class="btn bg-gradient-dark px-3 mb-2" data-class="bg-gradient-dark"
                            onclick="sidebarType(this)">Tối
                    </button>
                    <button class="btn bg-gradient-dark px-3 mb-2 ms-2" data-class="bg-transparent"
                            onclick="sidebarType(this)">Trong suốt
                    </button>
                    <button class="btn bg-gradient-dark px-3 mb-2  active ms-2" data-class="bg-white"
                            onclick="sidebarType(this)">Sáng
                    </button>
                </div>
                <p class="text-sm d-xl-none d-block mt-2">You can change the sidenav type just on desktop view.</p>
                <!-- Navbar Fixed -->
                <div class="mt-3 d-flex">
                    <h6 class="mb-0">Cố định thanh điều hướng</h6>
                    <div class="form-check form-switch ps-0 ms-auto my-auto">
                        <input class="form-check-input mt-1 ms-auto" type="checkbox" id="navbarFixed"
                               onclick="navbarFixed(this)">
                    </div>
                </div>
                <hr class="horizontal dark my-3">
                <div class="mt-2 d-flex">
                    <h6 class="mb-0">Sáng / Tối</h6>
                    <div class="form-check form-switch ps-0 ms-auto my-auto">
                        <input class="form-check-input mt-1 ms-auto" type="checkbox" id="dark-version"
                               onclick="darkMode(this)">
                    </div>
                </div>
                <hr class="horizontal dark my-sm-4">

            </div>
        </div>
    </div>


    <!-- Modal Giao Tòa Nhà -->
    <div class="modal fade" id="modalGiaoToaNha" tabindex="-1" aria-labelledby="modalGiaoToaNhaLabel"
         aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="modalGiaoToaNhaLabel">Giao Tòa Nhà</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <p>Chọn nhân viên để giao</p>
                    <div class="list-group">
                        <label class="list-group-item">
                            <input class="form-check-input me-1" type="checkbox" value="1"> Nguyễn Văn A
                        </label>
                        <label class="list-group-item">
                            <input class="form-check-input me-1" type="checkbox" value="2"> Trần Thị B
                        </label>
                        <label class="list-group-item">
                            <input class="form-check-input me-1" type="checkbox" value="3"> Lê Văn C
                        </label>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Hủy</button>
                    <button type="button" class="btn btn-info" id="btnGiaoToaNha">Giao tòa nhà</button>
                </div>
            </div>
        </div>
    </div>

    <style>
        #modalGiaoToaNha .form-check-input {
            appearance: none;
            -webkit-appearance: none;
            -moz-appearance: none;
            width: 18px;
            height: 18px;
            border: 1px solid black;
            border-radius: 0px;
            background-color: white;
            cursor: pointer;
            display: inline-block;
            position: relative;
        }

        /* Khi checkbox được chọn */
        #modalGiaoToaNha .form-check-input:checked {
            background-color: black !important;
            border-color: black !important;
        }

        /* Ẩn dấu check trắng */
        #modalGiaoToaNha .form-check-input:checked::after {
            display: none !important;
            content: "";
        }

        #modalGiaoToaNha .form-check-input:checked::before {
            content: "✔";
            font-size: 14px;
            color: white;
            position: absolute;
            left: 50%;
            top: 50%;
            transform: translate(-50%, -50%);
            font-weight: bold;
        }
    </style>


    <!--   Core JS Files   -->
    <script src="../assets/js/core/popper.min.js"></script>
    <script src="../assets/js/core/bootstrap.min.js"></script>
    <script src="../assets/js/plugins/perfect-scrollbar.min.js"></script>
    <script src="../assets/js/plugins/smooth-scrollbar.min.js"></script>
    <script src="../assets/js/plugins/chartjs.min.js"></script>

    <script>
        $(document).ready(function () {
            loadDistricts();
            $("#btnSearch").click(function () {
                searchBuildings();
            });
        });

        // Lấy dữ liệu từ form
        function searchBuildings() {
            let data = {
                name: $('#name').val(),
                floorarea: $('#floorarea').val(),
                numberofbasement: $('#numberofbasement').val(),
                direction: $('#direction').val(),
                level: $('#level').val(),
                districtid: $('#districtid').val(),
                ward: $('#ward').val(),
                street: $('#street').val(),
                rentareafrom: $('#rentareafrom').val(),
                rentareato: $('#rentareato').val(),
                rentpricefrom: $('#rentpricefrom').val(),
                rentpriceto: $('#rentpriceto').val(),
                managername: $('#managername').val(),
                managerphonenumber: $('#managerphonenumber').val(),
                staffid: $('#staffid').val(),
                buildingType: $("input[name='buildingType']:checked").map((_, el) => el.value).get()
            };

            $.ajax({
                url: "/api/building/search",
                type: "GET",
                data: data,
                beforeSend: function () {
                    $("#respone tbody").html('<tr><td colspan="9">Đang tải dữ liệu...</td></tr>');
                },
                success: function (response) {
                    let rows = '';
                    if (response.length > 0) {
                        response.forEach(building => {
                            rows += "<tr>" +
                                "<th scope='row' class='ps-1'>" +
                                "<div class='form-check font-size-16'>" +
                                "<input type='checkbox' class='form-check-input' id='contacusercheck_" + building.id + "'/>" +
                                "<label class='form-check-label' for='contacusercheck_" + building.id + "'></label>" +
                                "</div>" +
                                "</th>" +
                                "<td>" + building.name + "</td>" +
                                "<td>" + building.address + "</td>" +
                                "<td>" + building.numberOfBasement + "</td>" +
                                "<td>" + building.managerName + "</td>" +
                                "<td>" + building.managerPhoneNumber + "</td>" +
                                "<td>" + building.floorArea + "</td>" +
                                "<td>" + building.rentArea + "</td>" +
                                "<td>" +
                                "<ul class='list-inline mb-0'>" +
                                "<li class='list-inline-item'>" +
                                "<a href='/edit?id=" + building.id + "' data-bs-toggle='tooltip' " +
                                "title='Sửa tòa nhà' class='px-2 text-primary'>" +
                                "<i class='bx bx-pencil font-size-18'></i>" +
                                "</a>" +
                                "</li>" +
                                "<li class='list-inline-item'>" +
                                "<a href='javascript:void(0);' onclick='deleteBuilding(" + building.id + ")' " +
                                "data-bs-toggle='tooltip' title='Xóa tòa nhà' class='px-2 text-danger'>" +
                                "<i class='bx bx-trash-alt font-size-18'></i>" +
                                "</a>" +
                                "</li>" +
                                "<li class='list-inline-item'>" +
                                "<a href='javascript:void(0);' data-bs-toggle='modal' " +
                                "data-bs-target='#modalGiaoToaNha' " +
                                "data-bs-toggle='tooltip' title='Giao tòa nhà' " +
                                "class='px-2 text-danger'>" +
                                "<i class='bx bx-user-check font-size-18'></i>" +
                                "</a>" +
                                "</li>" +
                                "</ul>" +
                                "</td>" +
                                "</tr>";

                        });
                    } else {
                        rows = '<tr><td colspan="9" class="text-center">Không tìm thấy dữ liệu</td></tr>';
                    }
                    $("#respone tbody").html(rows);
                    $("#respone tbody").show();
                },
                error: function () {
                    $("#respone tbody").html('<tr><td colspan="9" class="text-danger">Lỗi tải dữ liệu</td></tr>');
                }
            });
        }



        function confirmDelete(element,id) {
            console.log("Click vào icon xóa! ID:", id);
            if (confirm("Bạn có chắc chắn muốn xóa tòa nhà này không?")) {
                deleteBuilding(element,id); // Nếu OK, gọi API xóa
            }
        }

        function deleteBuilding(element, id) {
            $.ajax({
                url: "/api/building/delete/" + id,
                type: "DELETE",
                success: function () {
                    alert("Xoá thành công!");
                    $(element).closest("tr").remove();
                },
                error: function (xhr) {
                    alert("Lỗi: " + xhr.responseText);
                }
            });
        }

        function loadDistricts() {
            $.ajax({
                url: "/api/districts",
                type: "GET",
                success: function (data) {
                    let districtSelect = $("#districtid");
                    districtSelect.empty();
                    districtSelect.append('<option value="">Chọn quận</option>');
                    data.forEach(item => {
                        districtSelect.append('<option value="' + item.id + '">' + item.name + '</option>');

                        console.log(item.name);
                    });

                },
                error: function () {
                    alert("Lỗi khi tải danh sách quận!");
                }
            });
        }

    </script>



    <!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
    <script src="../assets/js/material-dashboard.min.js?v=3.2.0"></script>

</main>
</body>
</html>