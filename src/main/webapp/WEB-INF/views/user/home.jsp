<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Trang chủ</title>
    <link rel="stylesheet" href="css/home.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <script src="https://use.fontawesome.com/036b4f2931.js"></script>
</head>

<body>
    <div class="header">
        <div class="container">
            <div class="row ">
                <div class="col-4 logo">
                    <a href="">
                        <img width="40px" src="css/img/avatar-post.png" alt="">
                    </a>
                </div>
                <div class="col-4 center">
                    <div class="nav-search">
                        <input type="text" placeholder="Bạn cần tìm gì?">
                        <a class="btn-search" href=""><i class="fa fa-search" aria-hidden="true"></i></a>
                    </div>
                </div>
                <div class="col-4 nav-right">
                    <div class="row">
                        <div class="col-4 text-in-a"><a href="">SĐT: 332211</a></div>
                        <div class="col-4 text-in-a"><a href="">Tìm cửa hàng</a></div>
                        <div class="col-4 text-in-a"><a href="">Giỏ hàng</a></div>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <!-- Thanh công cụ và ảnh trình chiếu -->
    <div class="container margin-4">
        <div class="row">
            <div class="col-3">
                <div class="nav">
                    <ul>
                        <li>
                            <a id="phone" class="row" href="">
                                <i class="fa fa-mobile col-2" aria-hidden="true"></i>
                                <p class="col-8">
                                    Điện thoại
                                </p>
                                <i class="fa fa-angle-right col-2" aria-hidden="true"></i>
                            </a>
                        </li>
                        <li>
                            <a id="laptop" class="row" href="">
                                <i class="fa fa-laptop col-2" aria-hidden="true"></i>
                                <p class="col-8">Laptop</p>
                                <i class="fa fa-angle-right col-2" aria-hidden="true"></i>
                            </a>
                        </li>
                        <li>
                            <a id="music" class="row" href="">
                                <i class="fa fa-music col-2" aria-hidden="true"></i>
                                <div class="col-8">Âm thanh </div>
                                <i class="fa fa-angle-right col-2" aria-hidden="true"></i>
                            </a>
                        </li>
                        <li>
                            <a id="clock" class="row" href="">
                                <i class="fa fa-clock-o col-2" aria-hidden="true"></i>
                                <p class="col-8">
                                    Đồng hồ
                                </p>
                                <i class="fa fa-angle-right col-2" aria-hidden="true"></i>
                            </a>
                        </li>
                        <li><a id="camera" class="row" href="">
                                <i class="fa fa-camera-retro col-2" aria-hidden="true"></i>
                                <p class="col-8">Máy ảnh</p>
                                <i class="fa fa-angle-right col-2" aria-hidden="true"></i>
                            </a></li>
                    </ul>
                </div>
            </div>
            <div class="col-9">
                <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
                    <div class="carousel-indicators">
                        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0"
                            class="active" aria-current="true" aria-label="Slide 1"></button>
                        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1"
                            aria-label="Slide 2"></button>
                        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2"
                            aria-label="Slide 3"></button>
                    </div>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="https://cdn.cellphones.com.vn/media/ltsoft/promotion/690x300_Acer_Swift_SF314.png"
                                class="d-block w-100" alt="...">
                            <div class="carousel-caption d-none d-md-block">
                                <h5>ACER SWIFT 3X</h5>
                                <p>Giá bán hấp dẫn</p>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img src="https://cdn.cellphones.com.vn/media/ltsoft/promotion/690x300_19990.png"
                                class="d-block w-100" alt="...">
                            <div class="carousel-caption d-none d-md-block">
                                <h5>NOTE 20 ULTTRA 5G</h5>
                                <p>Hot sale sập sàn</p>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img src="https://cdn.cellphones.com.vn/media/ltsoft/promotion/iPad_Pro_11_Sliding_desk.png"
                                class="d-block w-100" alt="...">
                            <div class="carousel-caption d-none d-md-block">
                                <h5>IPAD PRO 2021 CPU M2</h5>
                                <p>Giá tốt mua ngay</p>
                            </div>
                        </div>
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions"
                        data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions"
                        data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>
                </div>
            </div>
        </div>
        <!-- banner -->
        <div class="row">
            <a class="baner" href=""><img src="https://cdn.cellphones.com.vn/media/wysiwyg/new-HP_DESKTOP_COVID.png"
                    alt=""></a>
        </div>
        <!-- Điện thoại -->
        <div class="produc-sale">
            <h2 class="color-red">HOT SALE <img class="icon-set-sale" width="25px" src="css/img/icon-set.gif" alt=""> ĐIỆN THOẠI</h2>
            <div class="row-custom">
                <div class="col-custom ">
                    <div class="sale">
                        <p>-14%</p>
                    </div>
                    <div class="row">
                        <a href="">
                            <img class="img-withd"
                                src="https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/x/i/xiaomi-redmi-note-10-pro_2_.png"
                                alt="">
                        </a>
                    </div>
                    <div class="row">
                        <h3>Xiaomi Redmi Note 10 Pro</h3>
                        <div class="price-card">
                            <div class="price">
                                <span>6.550.000</span>
                                <span1>7.550.000</span1>
                            </div>
                            <a class="btn-add-card" href=""><i class="fa fa-cart-plus" aria-hidden="true"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-custom ">
                    <div class="sale">
                        <p>-14%</p>
                    </div>
                    <div class="row">
                        <a href="">
                            <img class="img-withd"
                                src="https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/x/i/xiaomi-redmi-note-10-pro_2_.png"
                                alt="">
                        </a>
                    </div>
                    <div class="row">
                        <h3>Xiaomi Redmi Note 10 Pro</h3>
                        <div class="price-card">
                            <div class="price">
                                <span>6.550.000</span>
                                <span1>7.550.000</span1>
                            </div>
                            <a class="btn-add-card" href=""><i class="fa fa-cart-plus" aria-hidden="true"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-custom ">
                    <div class="sale">
                        <p>-14%</p>
                    </div>
                    <div class="row">
                        <a href="">
                            <img class="img-withd"
                                src="https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/x/i/xiaomi-redmi-note-10-pro_2_.png"
                                alt="">
                        </a>
                    </div>
                    <div class="row">
                        <h3>Xiaomi Redmi Note 10 Pro</h3>
                        <div class="price-card">
                            <div class="price">
                                <span>6.550.000</span>
                                <span1>7.550.000</span1>
                            </div>
                            <a class="btn-add-card" href=""><i class="fa fa-cart-plus" aria-hidden="true"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-custom ">
                    <div class="sale">
                        <p>-14%</p>
                    </div>
                    <div class="row">
                        <a href="">
                            <img class="img-withd"
                                src="https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/x/i/xiaomi-redmi-note-10-pro_2_.png"
                                alt="">
                        </a>
                    </div>
                    <div class="row">
                        <h3>Xiaomi Redmi Note 10 Pro</h3>
                        <div class="price-card">
                            <div class="price">
                                <span>6.550.000</span>
                                <span1>7.550.000</span1>
                            </div>
                            <a class="btn-add-card" href=""><i class="fa fa-cart-plus" aria-hidden="true"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-custom ">
                    <div class="sale">
                        <p>-14%</p>
                    </div>
                    <div class="row">
                        <a href="">
                            <img class="img-withd"
                                src="https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/x/i/xiaomi-redmi-note-10-pro_2_.png"
                                alt="">
                        </a>
                    </div>
                    <div class="row">
                        <h3>Xiaomi Redmi Note 10 Pro</h3>
                        <div class="price-card">
                            <div class="price">
                                <span>6.550.000</span>
                                <span1>7.550.000</span1>
                            </div>
                            <a class="btn-add-card" href=""><i class="fa fa-cart-plus" aria-hidden="true"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Laptop -->
        <div class="produc-sale">
            <h2 class="color-red">HOT SALE <img class="icon-set-sale" width="25px" src="css/img/icon-set.gif" alt=""> LAPTOP</h2>
            <div class="row-custom">
                <div class="col-custom ">
                    <div class="sale">
                        <p>-14%</p>
                    </div>
                    <div class="row">
                        <a href="">
                            <img class="img-withd"
                                src="https://cdn.cellphones.com.vn/media/catalog/product/cache/7/small_image/220x175/9df78eab33525d08d6e5fb8d27136e95/m/a/macbook-air-gold-select-201810_4.jpg"
                                alt="">
                        </a>
                    </div>
                    <div class="row">
                        <h3>Apple Macbook Ari M1 2020</h3>
                        <div class="price-card">
                            <div class="price">
                                <span>6.550.000</span>
                                <span1>7.550.000</span1>
                            </div>
                            <a class="btn-add-card" href=""><i class="fa fa-cart-plus" aria-hidden="true"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-custom ">
                    <div class="sale">
                        <p>-14%</p>
                    </div>
                    <div class="row">
                        <a href="">
                            <img class="img-withd"
                                src="https://cdn.cellphones.com.vn/media/catalog/product/cache/7/small_image/220x175/9df78eab33525d08d6e5fb8d27136e95/m/a/macbook-air-gold-select-201810_4.jpg"
                                alt="">
                        </a>
                    </div>
                    <div class="row">
                        <h3>Apple Macbook Ari M1 2020</h3>
                        <div class="price-card">
                            <div class="price">
                                <span>6.550.000</span>
                                <span1>7.550.000</span1>
                            </div>
                            <a class="btn-add-card" href=""><i class="fa fa-cart-plus" aria-hidden="true"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-custom ">
                    <div class="sale">
                        <p>-14%</p>
                    </div>
                    <div class="row">
                        <a href="">
                            <img class="img-withd"
                                src="https://cdn.cellphones.com.vn/media/catalog/product/cache/7/small_image/220x175/9df78eab33525d08d6e5fb8d27136e95/m/a/macbook-air-gold-select-201810_4.jpg"
                                alt="">
                        </a>
                    </div>
                    <div class="row">
                        <h3>Apple Macbook Ari M1 2020</h3>
                        <div class="price-card">
                            <div class="price">
                                <span>6.550.000</span>
                                <span1>7.550.000</span1>
                            </div>
                            <a class="btn-add-card" href=""><i class="fa fa-cart-plus" aria-hidden="true"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-custom ">
                    <div class="sale">
                        <p>-14%</p>
                    </div>
                    <div class="row">
                        <a href="">
                            <img class="img-withd"
                                src="https://cdn.cellphones.com.vn/media/catalog/product/cache/7/small_image/220x175/9df78eab33525d08d6e5fb8d27136e95/m/a/macbook-air-gold-select-201810_4.jpg"
                                alt="">
                        </a>
                    </div>
                    <div class="row">
                        <h3>Apple Macbook Ari M1 2020</h3>
                        <div class="price-card">
                            <div class="price">
                                <span>6.550.000</span>
                                <span1>7.550.000</span1>
                            </div>
                            <a class="btn-add-card" href=""><i class="fa fa-cart-plus" aria-hidden="true"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-custom ">
                    <div class="sale">
                        <p>-14%</p>
                    </div>
                    <div class="row">
                        <a href="">
                            <img class="img-withd"
                                src="https://cdn.cellphones.com.vn/media/catalog/product/cache/7/small_image/220x175/9df78eab33525d08d6e5fb8d27136e95/m/a/macbook-air-gold-select-201810_4.jpg"
                                alt="">
                        </a>
                    </div>
                    <div class="row">
                        <h3>Apple Macbook Ari M1 2020</h3>
                        <div class="price-card">
                            <div class="price">
                                <span>6.550.000</span>
                                <span1>7.550.000</span1>
                            </div>
                            <a class="btn-add-card" href=""><i class="fa fa-cart-plus" aria-hidden="true"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="produc-sale">
            <h3>Âm thanh</h3>
            <div class="row-custom">
                <div class="col-custom ">
                    <div class="sale">
                        <p>-14%</p>
                    </div>
                    <div class="row">
                        <a href="">
                            <img class="img-withd"
                                src="https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/a/i/airpods-2.jpg"
                                alt="">
                        </a>
                    </div>
                    <div class="row">
                        <h3>Tai nghe Bluetooth Apple AirPods 2 VN/A</h3>
                        <div class="price-card">
                            <div class="price">
                                <span>6.550.000</span>
                                <span1>7.550.000</span1>
                            </div>
                            <a class="btn-add-card" href=""><i class="fa fa-cart-plus" aria-hidden="true"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="menu-item">
        <div id="menu-phone" class="closed">
            <div class="phone">
                <p><a href="">Iphone</a></p>
                <p><a href="">SamSung</a></p>
                <p><a href="">Oppo</a></p>
                <p><a href="">Xiaomi</a></p>
                <p><a href="">Vivo</a></p>
                <p><a href="">Vsmart</a></p>
            </div>
        </div>
        <div id="menu-laptop" class="closed">
            <div class="phone">
                <p><a href="">Macbook</a></p>
                <p><a href="">Asus</a></p>
                <p><a href="">Thinkpad</a></p>
                <p><a href="">HP</a></p>
                <p><a href="">Dell</a></p>
                <p><a href="">Acer</a></p>
            </div>
        </div>
        <div id="menu-music" class="closed">
            <div class="phone">
                <p><a href="">Tai nghe không dây</a></p>
                <p><a href="">Loa</a></p>
            </div>
        </div>
        <div id="menu-clock" class="closed">
            <div class="phone">
                <p><a href="">Appe Watch</a></p>
                <p><a href="">Sam Sung</a></p>
                <p><a href="">Xiaomi</a></p>
                <p><a href="">Garmin</a></p>
                <p><a href="">Oppo</a></p>
                <p><a href="">Hãng khác</a></p>
            </div>
        </div>
        <div id="menu-camera" class="closed">
            <div class="phone">
                <p><a href="">Canon</a></p>
                <p><a href="">Sony</a></p>
                <p><a href="">Nikon</a></p>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous">
    </script>
    <script src="./js/home.js"></script>
</body>

</html>