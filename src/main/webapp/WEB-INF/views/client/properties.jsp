<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <title>Bất động sản</title>
    <meta name="description" content="">
    <meta name="keywords" content="">

    <!-- Favicons -->
    <link href="assets/img/estate.png" rel="icon">

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com" rel="preconnect">
    <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Raleway:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="assets/vendor/aos/aos.css" rel="stylesheet">
    <link href="assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
    <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

    <!-- Main CSS File -->
    <link href="assets/css/main.css" rel="stylesheet">

</head>

<body class="properties-page">

<header id="header" class="header d-flex align-items-center fixed-top">
    <div class="container-fluid container-xl position-relative d-flex align-items-center justify-content-between">

        <a href="/" class="logo d-flex align-items-center">
            <h1 class="sitename">Estate<span>Agency</span></h1>
        </a>

        <nav id="navmenu" class="navmenu">
            <ul>
                <li><a href="/" >Home</a></li>
                <li><a href="/about">About</a></li>
                <li><a href="/services">Services</a></li>
                <li><a href="/properties" class="active">Properties</a></li>
                <li><a href="/agents">Agents</a></li>
                <li class="dropdown"><a href="#"><span>Dropdown</span> <i class="bi bi-chevron-down toggle-dropdown"></i></a>
                    <ul>
                        <li><a href="#">Dropdown 1</a></li>
                        <li class="dropdown"><a href="#"><span>Deep Dropdown</span> <i class="bi bi-chevron-down toggle-dropdown"></i></a>
                            <ul>
                                <li><a href="#">Deep Dropdown 1</a></li>
                                <li><a href="#">Deep Dropdown 2</a></li>
                                <li><a href="#">Deep Dropdown 3</a></li>
                                <li><a href="#">Deep Dropdown 4</a></li>
                                <li><a href="#">Deep Dropdown 5</a></li>
                            </ul>
                        </li>
                        <li><a href="#">Dropdown 2</a></li>
                        <li><a href="#">Dropdown 3</a></li>
                        <li><a href="#">Dropdown 4</a></li>
                    </ul>
                </li>
                <li><a href="/contact">Contact</a></li>
            </ul>
            <i class="mobile-nav-toggle d-xl-none bi bi-list"></i>
        </nav>

    </div>
</header>

<main class="main">

    <!-- Page Title -->
    <div class="page-title" data-aos="fade">
        <div class="heading">
            <div class="container">
                <div class="row d-flex justify-content-center text-center">
                    <div class="col-lg-8">
                        <h1>Properties</h1>
                        <p class="mb-0">Odio et unde deleniti. Deserunt numquam exercitationem. Officiis quo odio sint voluptas consequatur ut a odio voluptatem. Sit dolorum debitis veritatis natus dolores. Quasi ratione sint. Sit quaerat ipsum dolorem.</p>
                    </div>
                </div>
            </div>
        </div>
        <nav class="breadcrumbs">
            <div class="container">
                <ol>
                    <li><a href="/">Home</a></li>
                    <li class="current">Properties</li>
                </ol>
            </div>
        </nav>
    </div><!-- End Page Title -->

    <!-- Real Estate Section -->
    <section id="real-estate" class="real-estate section">

        <div class="container">

            <div class="row gy-4">

                <div class="col-xl-4 col-md-6" data-aos="fade-up" data-aos-delay="100">
                    <div class="card">
                        <img src="assets/img/properties/property-1.jpg" alt="" class="img-fluid">
                        <div class="card-body">
                            <span class="sale-rent">Rent | $1200</span>
                            <h3><a href="/property-single" class="stretched-link">204 Mount Olive Road Two</a></h3>
                            <div class="card-content d-flex flex-column justify-content-center text-center">
                                <div class="row propery-info">
                                    <div class="col">Area</div>
                                    <div class="col">Beds</div>
                                    <div class="col">Baths</div>
                                    <div class="col">Garages</div>
                                </div>
                                <div class="row">
                                    <div class="col">340m2</div>
                                    <div class="col">5</div>
                                    <div class="col">2</div>
                                    <div class="col">1</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div><!-- End Property Item -->

                <div class="col-xl-4 col-md-6" data-aos="fade-up" data-aos-delay="200">
                    <div class="card">
                        <img src="assets/img/properties/property-2.jpg" alt="" class="img-fluid">
                        <div class="card-body">
                            <span class="sale-rent">Sale | $350.000</span>
                            <h3><a href="/property-single" class="stretched-link">647 Molie Road</a></h3>
                            <div class="card-content d-flex flex-column justify-content-center text-center">
                                <div class="row propery-info">
                                    <div class="col">Area</div>
                                    <div class="col">Beds</div>
                                    <div class="col">Baths</div>
                                    <div class="col">Garages</div>
                                </div>
                                <div class="row">
                                    <div class="col">340m2</div>
                                    <div class="col">5</div>
                                    <div class="col">2</div>
                                    <div class="col">1</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div><!-- End Property Item -->

                <div class="col-xl-4 col-md-6" data-aos="fade-up" data-aos-delay="300">
                    <div class="card">
                        <img src="assets/img/properties/property-3.jpg" alt="" class="img-fluid">
                        <div class="card-body">
                            <span class="sale-rent">Sale | $580.000</span>
                            <h3><a href="/property-single" class="stretched-link">711 Avenue Road</a></h3>
                            <div class="card-content d-flex flex-column justify-content-center text-center">
                                <div class="row propery-info">
                                    <div class="col">Area</div>
                                    <div class="col">Beds</div>
                                    <div class="col">Baths</div>
                                    <div class="col">Garages</div>
                                </div>
                                <div class="row">
                                    <div class="col">340m2</div>
                                    <div class="col">5</div>
                                    <div class="col">2</div>
                                    <div class="col">1</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div><!-- End Property Item -->

                <div class="col-xl-4 col-md-6" data-aos="fade-up" data-aos-delay="400">
                    <div class="card">
                        <img src="assets/img/properties/property-4.jpg" alt="" class="img-fluid">
                        <div class="card-body">
                            <span class="sale-rent">Rent | $6500</span>
                            <h3><a href="/property-single" class="stretched-link">117 Milk Road</a></h3>
                            <div class="card-content d-flex flex-column justify-content-center text-center">
                                <div class="row propery-info">
                                    <div class="col">Area</div>
                                    <div class="col">Beds</div>
                                    <div class="col">Baths</div>
                                    <div class="col">Garages</div>
                                </div>
                                <div class="row">
                                    <div class="col">340m2</div>
                                    <div class="col">5</div>
                                    <div class="col">2</div>
                                    <div class="col">1</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div><!-- End Property Item -->

                <div class="col-xl-4 col-md-6" data-aos="fade-up" data-aos-delay="500">
                    <div class="card">
                        <img src="assets/img/properties/property-5.jpg" alt="" class="img-fluid">
                        <div class="card-body">
                            <span class="sale-rent">Rent | $3000</span>
                            <h3><a href="/property-single" class="stretched-link">678 Broad Road</a></h3>
                            <div class="card-content d-flex flex-column justify-content-center text-center">
                                <div class="row propery-info">
                                    <div class="col">Area</div>
                                    <div class="col">Beds</div>
                                    <div class="col">Baths</div>
                                    <div class="col">Garages</div>
                                </div>
                                <div class="row">
                                    <div class="col">340m2</div>
                                    <div class="col">5</div>
                                    <div class="col">2</div>
                                    <div class="col">1</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div><!-- End Property Item -->

                <div class="col-xl-4 col-md-6" data-aos="fade-up" data-aos-delay="600">
                    <div class="card">
                        <img src="assets/img/properties/property-6.jpg" alt="" class="img-fluid">
                        <div class="card-body">
                            <span class="sale-rent">Sale | $650.000</span>
                            <h3><a href="/property-single" class="stretched-link">974 Denim Road</a></h3>
                            <div class="card-content d-flex flex-column justify-content-center text-center">
                                <div class="row propery-info">
                                    <div class="col">Area</div>
                                    <div class="col">Beds</div>
                                    <div class="col">Baths</div>
                                    <div class="col">Garages</div>
                                </div>
                                <div class="row">
                                    <div class="col">340m2</div>
                                    <div class="col">5</div>
                                    <div class="col">2</div>
                                    <div class="col">1</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div><!-- End Property Item -->

            </div>

        </div>

    </section><!-- /Real Estate Section -->

</main>

<footer id="footer" class="footer light-background">

    <div class="container">
        <div class="row gy-3">
            <div class="col-lg-3 col-md-6 d-flex">
                <i class="bi bi-geo-alt icon"></i>
                <div class="address">
                    <h4>Address</h4>
                    <p>A108 Adam Street</p>
                    <p>New York, NY 535022</p>
                    <p></p>
                </div>

            </div>

            <div class="col-lg-3 col-md-6 d-flex">
                <i class="bi bi-telephone icon"></i>
                <div>
                    <h4>Contact</h4>
                    <p>
                        <strong>Phone:</strong> <span>+1 5589 55488 55</span><br>
                        <strong>Email:</strong> <span>info@example.com</span><br>
                    </p>
                </div>
            </div>

            <div class="col-lg-3 col-md-6 d-flex">
                <i class="bi bi-clock icon"></i>
                <div>
                    <h4>Opening Hours</h4>
                    <p>
                        <strong>Mon-Sat:</strong> <span>11AM - 23PM</span><br>
                        <strong>Sunday</strong>: <span>Closed</span>
                    </p>
                </div>
            </div>

            <div class="col-lg-3 col-md-6">
                <h4>Follow Us</h4>
                <div class="social-links d-flex">
                    <a href="#" class="twitter"><i class="bi bi-twitter-x"></i></a>
                    <a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
                    <a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
                    <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></a>
                </div>
            </div>

        </div>
    </div>

    <div class="container copyright text-center mt-4">
        <p><span>Copyright</span> <strong class="px-1 sitename">Hoang Long</strong> <span>2025</span></p>
        <div class="credits">
        </div>
    </div>

</footer>

<!-- Scroll Top -->
<a href="#" id="scroll-top" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

<!-- Preloader -->
<div id="preloader"></div>

<!-- Vendor JS Files -->
<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="assets/vendor/php-email-form/validate.js"></script>
<script src="assets/vendor/aos/aos.js"></script>
<script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
<script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>

<!-- Main JS File -->
<script src="assets/js/main.js"></script>

</body>

</html>