<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" isELIgnored="false"%> <%@ taglib prefix="fmt"
uri="http://java.sun.com/jsp/jstl/fmt"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html lang="zxx">
  <head>
    <meta charset="UTF-8" />
    <title>goodsDetail</title>
    <link href="${contextPath}/css/cyform.css" rel="stylesheet" />

    <link rel="stylesheet" href="${contextPath}/css/community.css" />
    <script src="${contextPath}/js/community.js"></script>

    <link href="${contextPath}/css/cyform.css" rel="stylesheet" />
  </head>
  <script>
    function readURL(input) {
      if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {
          $("#goods_preview").attr("src", e.target.result);
        };

        reader.readAsDataURL(input.files[0]);
      }
    }

    function fn_modify_goods(goodsNo, attribute) {
      //goodsId여ㅑㅆ음
      var frm_mod_goods = document.frm_mod_goods;
      var value = "";
      if (attribute == "goods_sort") {
        value = frm_mod_goods.goods_sort.value;
      } else if (attribute == "category") {
        value = frm_mod_goods.category.value;
      } else if (attribute == "name") {
        value = frm_mod_goods.name.value;
      } else if (attribute == "price") {
        value = frm_mod_goods.price.value;
      } else if (attribute == "manufacturer") {
        value = frm_mod_goods.manufacturer.value;
      } else if (attribute == "weight") {
        value = frm_mod_goods.weight.value;
      } else if (attribute == "expDate") {
        value = frm_mod_goods.expDate.value;
      } else if (attribute == "type") {
        value = frm_mod_goods.type.value;
      } else if (attribute == "img1") {
        value = frm_mod_goods.img1.value;
      }

      $.ajax({
        type: "post",
        async: false, //false인 경우 동기식으로 처리한다.
        url: "${contextPath}/admin/goods/modAdminGoods.do",
        data: {
          goodsNo: goodsNo,
          attribute: attribute,
          value: value,
        },
        success: function (data, textStatus) {
          if (data.trim() == "mod_success") {
            alert("상품 정보를 수정했습니다.");
          } else if (data.trim() == "failed") {
            alert("다시 시도해 주세요.");
          }
        },
        error: function (data, textStatus) {
          alert("에러가 발생했습니다." + data);
        },
        complete: function (data, textStatus) {
          alert("작업을완료 했습니다");
        },
      }); //end ajax
    }

    function input() {
      const date = document.querySelector("#input_date").value;
      console.log(date);

      const goods_description =
        document.querySelector("#goods_description").value;
      console.log(goods_description);
    }
  </script>

  <body>
    <!-- Product Details Section Begin -->
    <section class="spad" style="padding-top: 28px !important">
      <div class="container">
        <form
          id="mod-form"
          action="${contextPath}/admin/goods/adminGoodsMod.do?goodsNo=${sellerGoods.goodsNo}"
          method="post"
          enctype="multipart/form-data"
        >
          <div class="row">
            <div class="col-lg-6 col-md-6">
              <div class="product__details__pic">
                <div class="product__details__pic__item">
                  <img id="goods_preview" src="" alt="" />
                  <input
                    type="file"
                    name="img1"
                    value="onchange"
                    ="readURL(this)"
                  />
                  <input
                    type="file"
                    name="img2"
                    id=""
                    onchange="readURL(this)"
                  />
                  <input
                    type="file"
                    name="img3"
                    id=""
                    onchange="readURL(this)"
                  />
                  <input
                    type="file"
                    name="img4"
                    id=""
                    onchange="readURL(this)"
                  />
                  <input
                    type="file"
                    name="img5"
                    id=""
                    onchange="readURL(this)"
                  />
                </div>
              </div>
            </div>
            <div class="col-lg-6 col-md-6 text-left">
              <div class="product__details__text">
                <section>
                  <div class="property-margin1">
                    <dl class="property-flex2" style="height: 66px">
                      <dt
                        class="property_title1 textbold"
                        style="margin-top: 16px"
                      >
                        카테고리
                      </dt>
                      <dd class="property-flex1">
                        <div style="align-content: center; margin-top: 4px">
                          <select name="category" class="opt">
                            <option value="category">
                              카테고리를 선택해주세요
                            </option>
                            <option value="채소">채소</option>
                            <option value="과일">과일</option>
                            <option value="못난이주스/수제청">
                              못난이주스/수제청
                            </option>
                            <option value="찌개/탕/찜">찌개 / 탕 /찜</option>
                            <option value="식사/안주류">식사/안주류</option>
                            <option value="죽">죽</option>
                            <option value="식사 대용식">식사 대용식</option>
                            <option value="간편 한끼 반찬">
                              간편 한끼 반찬
                            </option>
                          </select>
                        </div>
                      </dd>
                    </dl>
                  </div>

                  <div class="property-margin1">
                    <dl class="property-flex2" style="height: 66px">
                      <dt
                        class="property_title1 textbold"
                        style="margin-top: 16px"
                      >
                        상품명
                      </dt>
                      <dd class="property-flex1">
                        <input
                          name="name"
                          value="${sellerGoods.name}"
                          class="property-font1 nice-select"
                          style="width: 176px"
                        />
                      </dd>
                    </dl>
                  </div>

                  <dl class="property-flex2" style="height: 60px">
                    <dt
                      class="property_title1 textbold"
                      style="margin-top: 16px"
                    >
                      판매가격
                    </dt>
                    <dd class="property-flex1">
                      <input
                        name="price"
                        value="${sellerGoods.price}"
                        class="property-font1 nice-select"
                        style="width: 176px"
                      />
                    </dd>
                  </dl>

                  <dl class="property-flex2" style="height: 60px">
                    <dt
                      class="property_title1 textbold"
                      style="margin-top: 16px"
                    >
                      판매자
                    </dt>
                    <dd class="property-flex1">
                      <input
                        value="원이츠"
                        readonly
                        class="property-font1 nice-select"
                        style="width: 176px"
                      />
                    </dd>
                  </dl>

                  <dl class="property-flex2" style="height: 60px">
                    <dt
                      class="property_title1 textbold"
                      style="margin-top: 16px"
                    >
                      포장타입
                    </dt>
                    <dd class="property-flex1">
                      <input
                        name="rapping"
                        value="${sellerGoods.rapping}"
                        class="property-font1 nice-select"
                        style="width: 176px"
                      />
                    </dd>
                  </dl>

                  <dl class="property-flex2" style="height: 60px">
                    <dt
                      class="property_title1 textbold"
                      style="margin-top: 16px"
                    >
                      제조원
                    </dt>
                    <dd class="property-flex1">
                      <input
                        name="manufacturer"
                        value="${sellerGoods.manufacturer}"
                        class="property-font1 nice-select"
                        style="width: 176px"
                      />
                    </dd>
                  </dl>

                  <dl class="property-flex2" style="height: 60px">
                    <dt
                      class="property_title1 textbold"
                      style="margin-top: 16px"
                    >
                      무게 / 용량
                    </dt>
                    <dd class="property-flex1">
                      <input
                        name="weight"
                        value="${sellerGoods.weight}"
                        class="property-font1 nice-select"
                        style="width: 176px"
                      />
                    </dd>
                  </dl>

                  <dl class="property-flex2" style="height: 60px">
                    <dt
                      class="property_title1 textbold"
                      style="margin-top: 16px"
                    >
                      유통기한
                    </dt>
                    <dd class="property-flex1">
                      <input
                        name="expDate"
                        value="${sellerGoods.expDate}"
                        type="date"
                        class="property-font1 nice-select"
                        style="width: 176px"
                        id="input_date"
                      />
                    </dd>
                  </dl>
                  <div class="row ingredient_grid">
                    <div class="col">
                      <div class="row">&nbsp;</div>
                      <div class="row ingredient_rows">
                        <div class="col-md-11 ingredient_col">
                          <div
                            class="row ingredient_row head_row bg-lightgreen"
                          >
                            <div class="col-md">옵션의 이름</div>
                            <div class="col-md">옵션의 양</div>

                            <div class="col-md">가격</div>
                            <div class="col-md-1"></div>
                          </div>
                          <c:forEach items="${options}" var="option">
                            <div class="row ingredient_row">
                              <div class="col-md">
                                <input
                                  name="option_name"
                                  type="text"
                                  value="${option.name}"
                                  class="form-control"
                                  placeholder="옵션명"
                                  required
                                />
                              </div>
                              <div class="col-md">
                                <input
                                  name="option_qty"
                                  type="text"
                                  value="${option.option_qty}"
                                  class="form-control"
                                  placeholder="숫자로 적어주세요"
                                  required
                                />
                              </div>
                              <input type="hidden" name="optionNo" />

                              <div class="col-md">
                                <input
                                  name="option_price"
                                  type="text"
                                  value="${option.price}"
                                  class="form-control"
                                  placeholder="가격"
                                  required
                                />
                              </div>
                              <div class="col-md-1"></div>
                            </div>
                          </c:forEach>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div
                      class="col-md-11"
                      style="width: 100%; text-align: center"
                    >
                      <img
                        id="plus_btn"
                        src="${contextPath}/img/icon/plus.png"
                        alt="더하기 버튼"
                        class="btn-smallsquare border"
                      />
                    </div>
                  </div>
                  <div class="row"></div>
                  <div class="property-flex2" style="height: 60px">
                    <div
                      class="property_title1 textbold"
                      style="margin-top: 16px"
                    >
                      상품 정보 기입
                    </div>
                  </div>
                  <p style="margin-top: 16px">
                    <textarea
                      class="goodsinfo description_textarea"
                      cols="50"
                      rows="8"
                      style="width: 350px"
                    >
                    </textarea>
                    <input
                      type="hidden"
                      name="description"
                      id="goods_description"
                      value="${option.name}"
                    />
                  </p>

                  <div style="display: inline-block; margin: 50px 145px 0 0">
                    <button
                      class="cart-button css-cartbtn e4nu7ef3"
                      type="reset"
                      radius="3"
                      style="width: 100px"
                      onclick="location.href='${contextPath}/admin/goods/adminGoodsList.do'"
                    >
                      <span class="css-nytqmg textbold">취소</span>
                    </button>
                  </div>
                  <!--중간부분-->
                  <div style="display: inline-block">
                    <button
                      class="cart-button css-cartbtn"
                      type="submit"
                      radius="3"
                      style="width: 100px"
                    >
                      <span class="css-nytqmg textbold">상품 수정</span>
                    </button>
                  </div>
                </section>
              </div>
            </div>
          </div>
        </form>
      </div>
    </section>
    <script>
      $(document).ready(function () {
        var textareaInput = $(".description_textarea").val();
        var output = textareaInput.replace(/\n/g, "<br>");
        var input = textareaInput.replace(/<br>/g, "\n");
        $(".description_textarea").val(input);
        $("#goods_description").val(output);

        $(".description_textarea").on("input", function () {
          var textareaInput = $(this).val();
          var output = textareaInput.replace(/\n/g, "<br>");

          $("#goods_description").val(output);
        });
      });
    </script>
  </body>
</html>
