<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" isELIgnored="false"%> <%@ taglib prefix="fmt"
uri="http://java.sun.com/jsp/jstl/fmt"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<% request.setCharacterEncoding("utf-8"); %>
<style>
  float-left {
    float: left !important;
  }

  .material-symbols-outlined {
    font-variation-settings: "FILL" 0, "wght" 400, "GRAD" 0, "opsz" 48;
  }
</style>

<!DOCTYPE html>
<html lang="zxx">
  <head>
    <meta charset="UTF-8" />
    <title>goodsDetail</title>

    <!-- Google Font -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Roboto:wght@500&display=swap"
      rel="stylesheet"
    />

    <!-- Css Styles -->

    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0"
    />
    <link
      rel="stylesheet"
      href="${contextPath}/css/bootstrap.min.css"
      type="text/css"
    />
    <link
      rel="stylesheet"
      href="${contextPath}/css/font-awesome.min.css"
      type="text/css"
    />
    <link
      rel="stylesheet"
      href="${contextPath}/css/elegant-icons.css"
      type="text/css"
    />
    <link
      rel="stylesheet"
      href="${contextPath}/css/nice-select.css"
      type="text/css"
    />
    <link
      rel="stylesheet"
      href="${contextPath}/css/jquery-ui.min.css"
      type="text/css"
    />
    <link
      rel="stylesheet"
      href="${contextPath}/css/owl.carousel.min.css"
      type="text/css"
    />
    <link
      rel="stylesheet"
      href="${contextPath}/css/slicknav.min.css"
      type="text/css"
    />
    <link
      rel="stylesheet"
      href="${contextPath}/css/style.css"
      type="text/css"
    />
  </head>

  <body>
    <!-- Breadcrumb Section Begin -->
    <section
      class="breadcrumb-section set-bg"
      data-setbg="${contextPath}/img/breadcrumb.jpg"
    >
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-center">
            <div class="breadcrumb__text">
              <h2>못난이 상품</h2>
              <div class="breadcrumb__option">
                <a href="./index.html">Home</a>
                <a href="./index.html">못난이 상품</a>
                <span>채소</span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Product Details Section Begin -->
    <section class="product-details spad">
      <div class="container">
        <div class="row">
          <div class="col-lg-6 col-md-6">
            <div class="product__details__pic">
              <div class="product__details__pic__item">
                <img
                  class="product__details__pic__item--large"
                  src="${contextPath}/img/product/details/product-details-1.jpg"
                  alt=""
                />
              </div>
              <div class="product__details__pic__slider owl-carousel">
                <img
                  data-imgbigurl="img/product/details/product-details-2.jpg"
                  src="${contextPath}/img/product/details/thumb-1.jpg"
                  alt=""
                />
                <img
                  data-imgbigurl="img/product/details/product-details-3.jpg"
                  src="${contextPath}/img/product/details/thumb-2.jpg"
                  alt=""
                />
                <img
                  data-imgbigurl="img/product/details/product-details-5.jpg"
                  src="${contextPath}/img/product/details/thumb-3.jpg"
                  alt=""
                />
                <img
                  data-imgbigurl="img/product/details/product-details-4.jpg"
                  src="${contextPath}/img/product/details/thumb-4.jpg"
                  alt=""
                />
              </div>
            </div>
          </div>
          <div class="col-lg-6 col-md-6">
            <div class="product__details__text">
              <div class="float-left">
                <h3>못난이 당근</h3>
                <div class="product__details__rating">
                  <img
                    src="${contextPath}/img/product/review/star.png"
                    alt="리뷰 별"
                  />
                  <img
                    src="${contextPath}/img/product/review/star.png"
                    alt="리뷰 별"
                  />
                  <img
                    src="${contextPath}/img/product/review/star.png"
                    alt="리뷰 별"
                  />
                  <img
                    src="${contextPath}/img/product/review/star.png"
                    alt="리뷰 별"
                  />
                  <img
                    src="${contextPath}/img/product/review/half-star.png"
                    alt="리뷰 별"
                  />

                  <span>(3 reviews)</span>
                </div>
                <div class="product__details__price">￦900</div>

                <div>배송 : 택배 배송(기본3일)</div>
                <div>판매자 : 김씨</div>
                <div>포장타입 : 상온(종이 포장)</div>
                <div>원산지 : 논산</div>
                <div>무게 / 용량 : 300g</div>
                <div>수확시기 :8월</div>
                <select name="select">
                  <option value="옵션을 선택해주세요" width="80" selected>
                    옵션을 선택해주세요
                  </option>
                  <option value="못난이 당근 단품 900원">
                    못난이 당근 단품 900원
                  </option>
                  <option value="못난이 당근 3개묶음 2500원">
                    못난이 당근 3개묶음 2500원
                  </option>
                  <option value="못난이 당근 5개묶음 4300원">
                    못난이 당근 5개묶음 4300원
                  </option>
                </select>

                <div class="product__details__quantity">
                  <div class="quantity">
                    <div class="pro-qty">
                      <input type="text" value="1" />
                    </div>
                  </div>
                </div>
                <a href="#" class="primary-btn">장바구니 담기</a>
                <span class="material-symbols-outlined"> favorite </span>
              </div>
            </div>
          </div>
          <div class="col-lg-12">
            <div class="product__details__tab">
              <ul class="nav nav-tabs" role="tablist">
                <li class="nav-item">
                  <a
                    class="nav-link active"
                    data-toggle="tab"
                    href="#tabs-1"
                    role="tab"
                    aria-selected="true"
                    >Description</a
                  >
                </li>
                <li class="nav-item">
                  <a
                    class="nav-link"
                    data-toggle="tab"
                    href="#tabs-2"
                    role="tab"
                    aria-selected="false"
                    >Information</a
                  >
                </li>
                <li class="nav-item">
                  <a
                    class="nav-link"
                    data-toggle="tab"
                    href="#tabs-3"
                    role="tab"
                    aria-selected="false"
                    >Reviews <span>(1)</span></a
                  >
                </li>
              </ul>
              <div class="tab-content">
                <div class="tab-pane active" id="tabs-1" role="tabpanel">
                  <div class="product__details__tab__desc">
                    <h6>Products Infomation</h6>
                    <p>
                      Vestibulum ac diam sit amet quam vehicula elementum sed
                      sit amet dui. Pellentesque in ipsum id orci porta dapibus.
                      Proin eget tortor risus. Vivamus suscipit tortor eget
                      felis porttitor volutpat. Vestibulum ac diam sit amet quam
                      vehicula elementum sed sit amet dui. Donec rutrum congue
                      leo eget malesuada. Vivamus suscipit tortor eget felis
                      porttitor volutpat. Curabitur arcu erat, accumsan id
                      imperdiet et, porttitor at sem. Praesent sapien massa,
                      convallis a pellentesque nec, egestas non nisi. Vestibulum
                      ac diam sit amet quam vehicula elementum sed sit amet dui.
                      Vestibulum ante ipsum primis in faucibus orci luctus et
                      ultrices posuere cubilia Curae; Donec velit neque, auctor
                      sit amet aliquam vel, ullamcorper sit amet ligula. Proin
                      eget tortor risus.
                    </p>
                    <p>
                      Praesent sapien massa, convallis a pellentesque nec,
                      egestas non nisi. Lorem ipsum dolor sit amet, consectetur
                      adipiscing elit. Mauris blandit aliquet elit, eget
                      tincidunt nibh pulvinar a. Cras ultricies ligula sed magna
                      dictum porta. Cras ultricies ligula sed magna dictum
                      porta. Sed porttitor lectus nibh. Mauris blandit aliquet
                      elit, eget tincidunt nibh pulvinar a. Vestibulum ac diam
                      sit amet quam vehicula elementum sed sit amet dui. Sed
                      porttitor lectus nibh. Vestibulum ac diam sit amet quam
                      vehicula elementum sed sit amet dui. Proin eget tortor
                      risus.
                    </p>
                  </div>
                </div>
                <div class="tab-pane" id="tabs-2" role="tabpanel">
                  <div class="product__details__tab__desc">
                    <h6>Products Infomation</h6>
                    <p>
                      Vestibulum ac diam sit amet quam vehicula elementum sed
                      sit amet dui. Pellentesque in ipsum id orci porta dapibus.
                      Proin eget tortor risus. Vivamus suscipit tortor eget
                      felis porttitor volutpat. Vestibulum ac diam sit amet quam
                      vehicula elementum sed sit amet dui. Donec rutrum congue
                      leo eget malesuada. Vivamus suscipit tortor eget felis
                      porttitor volutpat. Curabitur arcu erat, accumsan id
                      imperdiet et, porttitor at sem. Praesent sapien massa,
                      convallis a pellentesque nec, egestas non nisi. Vestibulum
                      ac diam sit amet quam vehicula elementum sed sit amet dui.
                      Vestibulum ante ipsum primis in faucibus orci luctus et
                      ultrices posuere cubilia Curae; Donec velit neque, auctor
                      sit amet aliquam vel, ullamcorper sit amet ligula. Proin
                      eget tortor risus.
                    </p>
                    <p>
                      Praesent sapien massa, convallis a pellentesque nec,
                      egestas non nisi. Lorem ipsum dolor sit amet, consectetur
                      adipiscing elit. Mauris blandit aliquet elit, eget
                      tincidunt nibh pulvinar a. Cras ultricies ligula sed magna
                      dictum porta. Cras ultricies ligula sed magna dictum
                      porta. Sed porttitor lectus nibh. Mauris blandit aliquet
                      elit, eget tincidunt nibh pulvinar a.
                    </p>
                  </div>
                </div>
                <div class="tab-pane" id="tabs-3" role="tabpanel">
                  <div class="product__details__tab__desc">
                    <h6>Products Infomation</h6>
                    <p>
                      Vestibulum ac diam sit amet quam vehicula elementum sed
                      sit amet dui. Pellentesque in ipsum id orci porta dapibus.
                      Proin eget tortor risus. Vivamus suscipit tortor eget
                      felis porttitor volutpat. Vestibulum ac diam sit amet quam
                      vehicula elementum sed sit amet dui. Donec rutrum congue
                      leo eget malesuada. Vivamus suscipit tortor eget felis
                      porttitor volutpat. Curabitur arcu erat, accumsan id
                      imperdiet et, porttitor at sem. Praesent sapien massa,
                      convallis a pellentesque nec, egestas non nisi. Vestibulum
                      ac diam sit amet quam vehicula elementum sed sit amet dui.
                      Vestibulum ante ipsum primis in faucibus orci luctus et
                      ultrices posuere cubilia Curae; Donec velit neque, auctor
                      sit amet aliquam vel, ullamcorper sit amet ligula. Proin
                      eget tortor risus.
                    </p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Product Details Section End -->

    <!-- Related Product Section Begin -->
    <section class="related-product">
      <div class="container">
        <div class="row">
          <div class="col-lg-12">
            <div class="section-title related__product__title">
              <h2>Related Product</h2>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-3 col-md-4 col-sm-6">
            <div class="product__item">
              <div
                class="product__item__pic set-bg"
                data-setbg="${contextPath}/img/product/product-1.jpg"
              >
                <ul class="product__item__pic__hover">
                  <li>
                    <a href="#"><i class="fa fa-heart"></i></a>
                  </li>
                  <li>
                    <a href="#"><i class="fa fa-retweet"></i></a>
                  </li>
                  <li>
                    <a href="#"><i class="fa fa-shopping-cart"></i></a>
                  </li>
                </ul>
              </div>
              <div class="product__item__text">
                <h6><a href="#">Crab Pool Security</a></h6>
                <h5>$30.00</h5>
              </div>
            </div>
          </div>
          <div class="col-lg-3 col-md-4 col-sm-6">
            <div class="product__item">
              <div
                class="product__item__pic set-bg"
                data-setbg="${contextPath}/img/product/product-2.jpg"
              >
                <ul class="product__item__pic__hover">
                  <li>
                    <a href="#"><i class="fa fa-heart"></i></a>
                  </li>
                  <li>
                    <a href="#"><i class="fa fa-retweet"></i></a>
                  </li>
                  <li>
                    <a href="#"><i class="fa fa-shopping-cart"></i></a>
                  </li>
                </ul>
              </div>
              <div class="product__item__text">
                <h6><a href="#">Crab Pool Security</a></h6>
                <h5>$30.00</h5>
              </div>
            </div>
          </div>
          <div class="col-lg-3 col-md-4 col-sm-6">
            <div class="product__item">
              <div
                class="product__item__pic set-bg"
                data-setbg="${contextPath}/img/product/product-3.jpg"
              >
                <ul class="product__item__pic__hover">
                  <li>
                    <a href="#"><i class="fa fa-heart"></i></a>
                  </li>
                  <li>
                    <a href="#"><i class="fa fa-retweet"></i></a>
                  </li>
                  <li>
                    <a href="#"><i class="fa fa-shopping-cart"></i></a>
                  </li>
                </ul>
              </div>
              <div class="product__item__text">
                <h6><a href="#">Crab Pool Security</a></h6>
                <h5>$30.00</h5>
              </div>
            </div>
          </div>
          <div class="col-lg-3 col-md-4 col-sm-6">
            <div class="product__item">
              <div
                class="product__item__pic set-bg"
                data-setbg="${contextPath}/img/product/product-7.jpg"
              >
                <ul class="product__item__pic__hover">
                  <li>
                    <a href="#"><i class="fa fa-heart"></i></a>
                  </li>
                  <li>
                    <a href="#"><i class="fa fa-retweet"></i></a>
                  </li>
                  <li>
                    <a href="#"><i class="fa fa-shopping-cart"></i></a>
                  </li>
                </ul>
              </div>
              <div class="product__item__text">
                <h6><a href="#">Crab Pool Security</a></h6>
                <h5>$30.00</h5>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Related Product Section End -->

    <!-- Js Plugins -->
    <script src="${contextPath}/js/jquery-3.3.1.min.js"></script>
    <script src="${contextPath}/js/bootstrap.min.js"></script>
    <script src="${contextPath}/js/jquery.nice-select.min.js"></script>
    <script src="${contextPath}/js/jquery-ui.min.js"></script>
    <script src="${contextPath}/js/jquery.slicknav.js"></script>
    <script src="${contextPath}/js/mixitup.min.js"></script>
    <script src="${contextPath}/js/owl.carousel.min.js"></script>
    <script src="${contextPath}/js/main.js"></script>
  </body>
</html>
