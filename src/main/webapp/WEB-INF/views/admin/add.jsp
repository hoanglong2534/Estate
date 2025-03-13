<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/boxicons/2.1.0/css/boxicons.min.css"
          integrity="sha512-pVCM5+SN2+qwj36KonHToF2p1oIvoU3bsqxphdOIWMYmgr4ZqD3t5DjKvvetKhXGc/ZG5REYTT6ltKfExEei/Q=="
          crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/MaterialDesign-Webfont/5.3.45/css/materialdesignicons.css"
          integrity="sha256-NAxhqDvtY0l4xn+YVa6WjAcmd94NNfttjNsDmNatFVc=" crossorigin="anonymous" />


    <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
    <link rel="icon" type="image/png" href="../assets/img/estate.png">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <title>
        Thêm tòa nhà
    </title>
    <!--     Fonts and icons     -->
    <link rel="stylesheet" type="text/css"
          href="https://fonts.googleapis.com/css?family=Inter:300,400,500,600,700,900" />
    <!-- Nucleo Icons -->
    <link href="../assets/css/nucleo-icons.css" rel="stylesheet" />
    <link href="../assets/css/nucleo-svg.css" rel="stylesheet" />
    <!-- Font Awesome Icons -->
    <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
    <!-- Material Icons -->
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css2?family=Material+Symbols+Rounded:opsz,wght,FILL,GRAD@24,400,0,0" />
    <!-- CSS Files -->
    <link id="pagestyle" href="../assets/css/material-dashboard.css?v=3.2.0" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

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
                <a class="nav-link text-dark" href="#">
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
                    <li class="nav-item dropdown pe-3 d-flex align-items-center">
                        <ul class="dropdown-menu  dropdown-menu-end  px-2 py-3 me-sm-n4"
                            aria-labelledby="dropdownMenuButton">
                            <li class="mb-2">
                                <a class="dropdown-item border-radius-md" href="javascript:;">
                                    <div class="d-flex py-1">
                                        <div class="my-auto">
                                            <img src="../assets/img/team-2.jpg" class="avatar avatar-sm  me-3 ">
                                        </div>
                                        <div class="d-flex flex-column justify-content-center">
                                            <h6 class="text-sm font-weight-normal mb-1">
                                                <span class="font-weight-bold">New message</span> from Laur
                                            </h6>
                                            <p class="text-xs text-secondary mb-0">
                                                <i class="fa fa-clock me-1"></i>
                                                13 minutes ago
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="mb-2">
                                <a class="dropdown-item border-radius-md" href="javascript:;">
                                    <div class="d-flex py-1">
                                        <div class="my-auto">
                                            <img src="../assets/img/small-logos/logo-spotify.svg"
                                                 class="avatar avatar-sm bg-gradient-dark  me-3 ">
                                        </div>
                                        <div class="d-flex flex-column justify-content-center">
                                            <h6 class="text-sm font-weight-normal mb-1">
                                                <span class="font-weight-bold">New album</span> by Travis Scott
                                            </h6>
                                            <p class="text-xs text-secondary mb-0">
                                                <i class="fa fa-clock me-1"></i>
                                                1 day
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a class="dropdown-item border-radius-md" href="javascript:;">
                                    <div class="d-flex py-1">
                                        <div class="avatar avatar-sm bg-gradient-secondary  me-3  my-auto">
                                            <svg width="12px" height="12px" viewBox="0 0 43 36" version="1.1"
                                                 xmlns="http://www.w3.org/2000/svg"
                                                 xmlns:xlink="http://www.w3.org/1999/xlink">
                                                <title>credit-card</title>
                                                <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                    <g transform="translate(-2169.000000, -745.000000)"
                                                       fill="#FFFFFF" fill-rule="nonzero">
                                                        <g transform="translate(1716.000000, 291.000000)">
                                                            <g transform="translate(453.000000, 454.000000)">
                                                                <path class="color-background"
                                                                      d="M43,10.7482083 L43,3.58333333 C43,1.60354167 41.3964583,0 39.4166667,0 L3.58333333,0 C1.60354167,0 0,1.60354167 0,3.58333333 L0,10.7482083 L43,10.7482083 Z"
                                                                      opacity="0.593633743"></path>
                                                                <path class="color-background"
                                                                      d="M0,16.125 L0,32.25 C0,34.2297917 1.60354167,35.8333333 3.58333333,35.8333333 L39.4166667,35.8333333 C41.3964583,35.8333333 43,34.2297917 43,32.25 L43,16.125 L0,16.125 Z M19.7083333,26.875 L7.16666667,26.875 L7.16666667,23.2916667 L19.7083333,23.2916667 L19.7083333,26.875 Z M35.8333333,26.875 L28.6666667,26.875 L28.6666667,23.2916667 L35.8333333,23.2916667 L35.8333333,26.875 Z">
                                                                </path>
                                                            </g>
                                                        </g>
                                                    </g>
                                                </g>
                                            </svg>
                                        </div>
                                        <div class="d-flex flex-column justify-content-center">
                                            <h6 class="text-sm font-weight-normal mb-1">
                                                Payment successfully completed
                                            </h6>
                                            <p class="text-xs text-secondary mb-0">
                                                <i class="fa fa-clock me-1"></i>
                                                2 days
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                        </ul>
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
        <h3 class="mb-0">Thêm tòa nhà</h3>
        <div class="card mt-4">
            <div class="card-header pb-0 p-3">
                <div class="row">
                    <div class="col-6 d-flex align-items-center">
                        <h6 class="mb-0">Thêm</h6>
                    </div>
                    <div class="col-6 text-end">
                        <a href="/tables" class="btn btn-success bg-gradient-info ">
                            <i class="bx bx-x me-1"></i> Hủy thao tác

                        </a>

                        <button type="button" class="btn btn-success bg-gradient-success" id="btnAdd">
                            <i class="bx bx-plus me-1"></i> Thêm tòa nhà
                        </button>

                    </div>


                </div>
            </div>
            <form action="${pageContext.request.contextPath}/building/addBuilding" method="post" id="buildingForm">

            <div class="card-body p-3">
                    <div class="row" style="margin-bottom: 10px;">
                        <div class="col-md-4 mb-md-0 mb-4">
                            <label style="margin: 0;">Tên tòa nhà</label>
                            <input type="text" class="form-control border rounded-0 flex-row p-1" id="name" name="name">
                        </div>
                        <div class="col-md-4">
                            <label style="margin: 0;">Diện tích sàn</label>
                            <input type="number" class="form-control border p-1 rounded-0" id="floorarea" name="floorarea">
                        </div>
                        <div class="col-md-4 mb-md-0 mb-4">
                            <label style="margin: 0;">Số tầng hầm</label>
                            <input type="number" class="form-control border rounded-0 flex-row p-1" id="numberofbasement" name="numberofbasement">
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-2 mb-md-0 mb-4">
                            <label style="margin: 0;">Quận</label>
                            <input type="text" class="form-control border rounded-0 flex-row p-1" id="district" name="district">
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
                        <div class="col-md-6 mb-md-0 mb-4">
                            <label style="margin: 0;">Diện tích thuê</label>
                            <input type="number" class="form-control border rounded-0 flex-row p-1" id="rentarea" name="rentarea">
                        </div>
                        <div class="col-md-6">
                            <label style="margin: 0;">Giá thuê</label>
                            <input type="number" class="form-control border p-1 rounded-0" id="rentprice" name="rentprice">
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-5 mb-md-0 mb-4">
                            <label style="margin: 0;">Tên quản lý</label>
                            <input type="text" class="form-control border rounded-0 flex-row p-1" id="managername" name="managername">
                        </div>
                        <div class="col-md-5">
                            <label style="margin: 0;">Số điện thoại quản lý</label>
                            <input type="text" class="form-control border p-1 rounded-0" id="managerphonenumber" name="managerphonenumber">
                        </div>
                        <div class="col-md-2">
                            <label style="margin: 0;">Nhân viên</label>
                            <input type="text" class="form-control border p-1 rounded-0" id="staff" name="staff">
                        </div>
                    </div>

                    <div class="col-md-12 mt-2" id="loaiToaNha">
                        <label>Loại tòa nhà:</label>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="checkbox" name="buildingtype" value="nguyen-can">
                            <label class="form-check-label">Nguyên căn</label>
                        </div>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="checkbox" name="buildingtype" value="noi-that">
                            <label class="form-check-label">Nội thất</label>
                        </div>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="checkbox" name="buildingtype" value="tang-tret">
                            <label class="form-check-label">Tầng trệt</label>
                        </div>
                    </div>


                </div>
            </form>

            <style>
                    #loaiToaNha .form-check-input {
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
                    #loaiToaNha .form-check-input:checked {
                        background-color: black !important;
                        border-color: black !important;
                    }

                    /* Ẩn dấu check trắng */
                    #loaiToaNha .form-check-input:checked::after {
                        display: none !important;
                        content: "";
                    }

                    #loaiToaNha .form-check-input:checked::before {
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
                            onclick="sidebarType(this)">Tối</button>
                    <button class="btn bg-gradient-dark px-3 mb-2 ms-2" data-class="bg-transparent"
                            onclick="sidebarType(this)">Trong suốt</button>
                    <button class="btn bg-gradient-dark px-3 mb-2  active ms-2" data-class="bg-white"
                            onclick="sidebarType(this)">Sáng</button>
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

    <!--   Core JS Files   -->
    <script src="../assets/js/core/popper.min.js"></script>
    <script src="../assets/js/core/bootstrap.min.js"></script>
    <script src="../assets/js/plugins/perfect-scrollbar.min.js"></script>
    <script src="../assets/js/plugins/smooth-scrollbar.min.js"></script>
    <script src="../assets/js/plugins/chartjs.min.js"></script>



    <script>
        document.addEventListener("DOMContentLoaded", function () {
            document.getElementById("btnAdd").addEventListener("click", function () {
                let name = document.getElementById("name").value.trim();
                let floorArea = document.getElementById("floorarea").value.trim();
                let numberOfBasement = document.getElementById("numberofbasement").value.trim();
                let district = document.getElementById("district").value.trim();
                let ward = document.getElementById("ward").value.trim();
                let street = document.getElementById("street").value.trim();
                let rentArea = document.getElementById("rentarea").value.trim();
                let rentPrice = document.getElementById("rentprice").value.trim();
                let managername = document.getElementById("managername").value.trim();
                let managerphonenumber = document.getElementById("managerphonenumber").value.trim();
                let staff = document.getElementById("staff").value.trim();

                // Lấy danh sách loại tòa nhà được chọn
                let buildingtypes = [];
                document.querySelectorAll("input[name='buildingtype']:checked").forEach((checkbox) => {
                    buildingtypes.push(checkbox.value);
                });

                // Kiểm tra dữ liệu có hợp lệ không
                if (!name || !floorarea || !rentprice || !numberofbasement || !district || !ward || !street || !rentarea || !managername || !managerphonenumber || !staff || buildingtypes.length === 0) {
                    Swal.fire({
                        icon: "warning",
                        title: "Thiếu thông tin!",
                        text: "Vui lòng nhập đầy đủ tất cả thông tin bắt buộc, bao gồm ít nhất một loại tòa nhà!"
                    });
                    return;
                }


                let formData = {
                    name,
                    floorarea: parseInt(floorArea),
                    numberofbasement: parseInt(numberOfBasement),
                    district,
                    ward,
                    street,
                    rentarea: parseInt(rentArea),
                    rentprice: parseInt(rentPrice),
                    managername,
                    managerphonenumber,
                    staff,
                    buildingtypes
                };

                console.log("Sending data: ", formData);

                // Gửi dữ liệu bằng AJAX
                fetch("/api/building/addBuilding", {
                    method: "POST",
                    headers: {
                        "Content-Type": "application/json",
                    },
                    body: JSON.stringify(formData),
                })
                    .then(response => {
                        if (!response.ok) {
                            throw new Error("Lỗi khi gửi dữ liệu!");
                        }
                        return response.json();
                    })
                    .then(data => {
                        Swal.fire({
                            icon: "success",
                            title: "Thêm thành công!",
                            text: "Tòa nhà đã được thêm vào hệ thống.",
                            showConfirmButton: false,
                            timer: 2000
                        }).then(() => {
                            window.location.reload(); // Tải lại trang sau khi thêm thành công
                        });
                    })
                    .catch(error => {
                        console.error("Error:", error);
                        Swal.fire({
                            icon: "error",
                            title: "Lỗi hệ thống!",
                            text: "Không thể thêm tòa nhà. Vui lòng thử lại sau."
                        });
                    });
            });
        });
    </script>




    <!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
    <script src="../assets/js/material-dashboard.min.js?v=3.2.0"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</main>
</body>

</html>