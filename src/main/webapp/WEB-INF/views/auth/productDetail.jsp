<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product Details</title>
    <style>
        body {
            font-family: "Roboto Condensed", sans-serif;
            background-color: #f5f5f5;
        }

        .hedding {
            font-size: 20px;
            color: #ab8181`;
        }

        .main-section {
            position: absolute;
            left: 50%;
            right: 50%;
            transform: translate(-50%, 5%);
        }

        .left-side-product-box img {
            width: 100%;
        }

        .left-side-product-box .sub-img img {
            margin-top: 5px;
            width: 83px;
            height: 100px;
        }

        .right-side-pro-detail span {
            font-size: 15px;
        }

        .right-side-pro-detail p {
            font-size: 25px;
            color: #a1a1a1;
        }

        .right-side-pro-detail .price-pro {
            color: #e45641;
        }

        .right-side-pro-detail .tag-section {
            font-size: 18px;
            color: #5d4c46;
        }

        .pro-box-section .pro-box img {
            width: 100%;
            height: 200px;
        }

        @media (min-width: 360px) and (max-width: 640px) {
            .pro-box-section .pro-box img {
                height: auto;
            }
        }
    </style>
</head>
<body oncontextmenu="return false" class="snippet-body">
  <div class="container" style="text-align: center">
        <div class="col-lg-8 border p-3 main-section bg-white">
            <div class="row hedding m-0 pl-3 pt-0 pb-3">
                Product Detail Design Using Bootstrap 4.0
            </div>
            <div class="row m-0">
                <div class="col-lg-4 left-side-product-box pb-3">
                    <img src="http://nicesnippets.com/demo/pd-image1.jpg" class="border p-3" />

                </div>
                <div class="col-lg-8">
                    <div class="right-side-pro-detail border p-3 m-0">
                        <div class="row">
                            <div class="col-lg-12">
                                <p class="m-0 p-0">Women's Velvet Dress</p>
                            </div>
                            <div class="col-lg-12">
                                <p class="m-0 p-0 price-pro">$30</p>
                                <hr class="p-0 m-0" />
                            </div>
                            <div class="col-lg-12 pt-2">
                                <h5>Product Detail</h5>
                                <span>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
                                    sed do eiusmod tempor incididunt ut labore et dolore magna
                                    aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                                    ullamco laboris.</span>
                                <hr class="m-0 pt-2 mt-2" />
                            </div>
                            <div class="col-lg-12">
                                <p class="tag-section">
                                    <strong>Tag : </strong><a href="">Woman</a><a href="">,Man</a>
                                </p>
                            </div>
                            <div class="col-lg-12">
                                <h6>Quantity :</h6>
                                <input type="number" class="form-control text-center w-100" value="1" />
                            </div>
                            <div class="col-lg-12 mt-3">
                                <div class="row">
                                    <div class="col-lg-6 pb-2">
                                        <a href="#" class="btn btn-danger w-100">Add To Cart</a>
                                    </div>
                                    <div class="col-lg-6">
                                        <a href="#" class="btn btn-success w-100">Shop Now</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12 text-center pt-3">
                    <h4>More Product</h4>
                </div>
            </div>
            <div class="row mt-3 p-0 text-center pro-box-section">
                <div class="col-lg-3 pb-2">
                    <div class="pro-box border p-0 m-0">
                        <img src="http://nicesnippets.com/demo/pd-b-image1.jpg" />
                    </div>
                </div>
 
            </div>
        </div>
    </div>
    <script type="text/javascript"></script>






 
<%-- 	<form action="product/<c:out value="${productDetail[0].name}"/>" method="POST" >
		<c:out value="${productDetail[0].name}" />
		<p>size</p>
		<c:forEach items="${productDetail}" var="productDetail">
			<input type="radio" id="${productDetail.primaryKeyProduct.size}"
				name="${productDetail.primaryKeyProduct.id}"
				value="${productDetail.primaryKeyProduct.size}">${productDetail.primaryKeyProduct.size}  

		</c:forEach>

		<p>Mô tả</p>	
		<h6>
			<c:out value="${productDetail[0].description}" />
		</h6>
		<h4>
			<c:out value="${productDetail[0].discount}" />
		</h4>
		<a href="" type="submit">Thêm vào giỏ hàng</a>
	</form> 

 --%>
		

</body>
</html>