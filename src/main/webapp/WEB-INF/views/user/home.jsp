<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Trang chủ</title>
    <link rel="stylesheet" href="/css/home.css">
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
                        <img width="40px" src="/css/img/avatar-post.png" alt="">
                    </a>
                    <a href="${ pageContext.request.contextPath }/logout/" class="text-light">Đăng xuất</a>
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
                        <div class="col-4 text-in-a"><a href="${ pageContext.request.contextPath }/home/giohang/">Giỏ hàng</a></div>
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
                            <a id="phone" class="row" href="${ pageContext.request.contextPath }/home/dienthoai/">
                                <i class="fa fa-mobile col-2" aria-hidden="true"></i>
                                <p class="col-8">
                                    Điện thoại
                                </p>
                                <i class="fa fa-angle-right col-2" aria-hidden="true"></i>
                            </a>
                        </li>
                        <li>
                            <a id="laptop" class="row" href="${ pageContext.request.contextPath }/home/laptop/">
                                <i class="fa fa-laptop col-2" aria-hidden="true"></i>
                                <p class="col-8">Laptop</p>
                                <i class="fa fa-angle-right col-2" aria-hidden="true"></i>
                            </a>
                        </li>
                        <li>
                            <a id="music" class="row" href="${ pageContext.request.contextPath }/home/amthanh/">
                                <i class="fa fa-music col-2" aria-hidden="true"></i>
                                <div class="col-8">Âm thanh </div>
                                <i class="fa fa-angle-right col-2" aria-hidden="true"></i>
                            </a>
                        </li>
                        <li>
                            <a id="clock" class="row" href="${ pageContext.request.contextPath }/home/dongho/">
                                <i class="fa fa-clock-o col-2" aria-hidden="true"></i>
                                <p class="col-8">
                                    Đồng hồ
                                </p>
                                <i class="fa fa-angle-right col-2" aria-hidden="true"></i>
                            </a>
                        </li>
                        <li><a id="camera" class="row" href="${ pageContext.request.contextPath }/home/mayanh/">
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
            <h2 class="color-red">HOT SALE <img class="icon-set-sale" width="25px" src="/css/img/icon-set.gif" alt="">
                ĐIỆN THOẠI</h2>

            <div class="row-custom">
                <c:forEach items="${ dtpro }" var="dtpro">
                    <div class="col-custom ">
                        <div class="sale">
                            <p>-14%</p>
                        </div>
                        <div class="row">
                            <a href="">
                                <img class="img-withd" src="/storage/${ dtpro.image }" alt="">
                            </a>
                        </div>
                        <div class="row">
                            <h3>${ dtpro.name }</h3>
                            <div class="price-card">
                                <div class="price pr-3">
                                    <span>${dtpro.price}</span>
                                    <span1>${dtpro.price+2000000}</span1>
                                </div>
                                <a class="btn-add-card" href="${ pageContext.request.contextPath }/home/giohang/add/${ dtpro.id }"><i class="fa fa-cart-plus" aria-hidden="true"></i></a>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>


        <!-- Laptop -->
        <div class="produc-sale">
            <h2 class="color-red">HOT SALE <img class="icon-set-sale" width="25px" src="/css/img/icon-set.gif" alt="">
                LAPTOP</h2>
            <div class="row-custom">
                <c:forEach items="${ laptopPro }" var="laptopPro">
                    <div class="col-custom ">
                        <div class="sale">
                            <p>-20%</p>
                        </div>
                        <div class="row">
                            <a href="">
                                <img class="img-withd" src="/storage/${ laptopPro.image }" alt="">
                            </a>
                        </div>
                        <div class="row">
                            <h3>${ laptopPro.name }</h3>
                            <div class="price-card">
                                <div class="price">
                                    <span>${ laptopPro.price }</span>
                                    <span1>${ laptopPro.price+3000000 }</span1>
                                </div>
                                <a class="btn-add-card" href="${ pageContext.request.contextPath }/home/giohang/add/${ laptopPro.id }"><i class="fa fa-cart-plus" aria-hidden="true"></i></a>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
        <!-- Âm thanh -->
        <div class="produc-sale">
            <h3>Âm thanh</h3>
            <div class="row-custom">
                <c:forEach items="${ amthanhPro }" var="amthanhPro">
                    <div class="col-custom ">
                        <div class="sale">
                            <p>-5%</p>
                        </div>
                        <div class="row">
                            <a href="">
                                <img class="img-withd" src="/storage/${ amthanhPro.image }" alt="">
                            </a>
                        </div>
                        <div class="row">
                            <h3>${ amthanhPro.name }</h3>
                            <div class="price-card">
                                <div class="price">
                                    <span>${ amthanhPro.price }</span>
                                    <span1>${ amthanhPro.price + 500000 }</span1>
                                </div>
                                <a class="btn-add-card" href="${ pageContext.request.contextPath }/home/giohang/add/${ amthanhPro.id }"><i class="fa fa-cart-plus" aria-hidden="true"></i></a>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
        <!-- Đồng hồ -->
        <div class="produc-sale">
            <h3>Đồng hồ</h3>
            <div class="row-custom">
                <c:forEach items="${ donghoPro }" var="donghoPro">
                    <div class="col-custom ">
                        <div class="sale">
                            <p>-5%</p>
                        </div>
                        <div class="row">
                            <a href="">
                                <img class="img-withd" src="/storage/${ donghoPro.image }" alt="">
                            </a>
                        </div>
                        <div class="row">
                            <h3>${ donghoPro.name }</h3>
                            <div class="price-card">
                                <div class="price">
                                    <span>${ donghoPro.price }</span>
                                    <span1>${ donghoPro.price + 500000 }</span1>
                                </div>
                                <a class="btn-add-card" href="${ pageContext.request.contextPath }/home/giohang/add/${ donghoPro.id }"><i class="fa fa-cart-plus" aria-hidden="true"></i></a>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
        <!-- Máy ảnh -->
        <div class="produc-sale">
            <h3>Máy ảnh</h3>
            <div class="row-custom">
                <c:forEach items="${ cameraPro }" var="cameraPro">
                    <div class="col-custom ">
                        <div class="sale">
                            <p>-5%</p>
                        </div>
                        <div class="row">
                            <a href="">
                                <img class="img-withd" src="/storage/${ cameraPro.image }" alt="">
                            </a>
                        </div>
                        <div class="row">
                            <h3>${ cameraPro.name }</h3>
                            <div class="price-card">
                                <div class="price">
                                    <span>${ cameraPro.price }</span>
                                    <span1>${ cameraPro.price + 2000000 }</span1>
                                </div>
                                <a class="btn-add-card" href="${ pageContext.request.contextPath }/home/giohang/add/${ cameraPro.id }"><i class="fa fa-cart-plus" aria-hidden="true"></i></a>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
    <footer>Dưỡng Đào</footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous">
    </script>
    <script src="./js/home.js"></script>
</body>

</html>