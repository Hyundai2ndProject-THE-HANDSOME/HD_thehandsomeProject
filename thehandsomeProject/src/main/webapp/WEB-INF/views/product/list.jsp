<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@include file ="/WEB-INF/views/common/header.jspf" %>
<!-- <link rel="stylesheet" type="text/css" href="/resources/css/product.css"> -->

	
	
	<div id="bodyWrap" class="products">
		<!-- 대, 중, 소 카테고리 표시 -->
		<h3 class="cnts_title ou1804">
			<span> <!-- 정상 브랜드 카테고리 목록 --> 
				<c:if test = "${not empty bname}">
					<a href="javascript:void(0);" >${bname}</a>
				</c:if>
				<c:if test = "${not empty ctgName[0]}">
					<a href="javascript:void(0);" >${ctgName[0]}</a>
				</c:if>
				<c:if test = "${not empty ctgName[1]}">
					<img
						src="http://cdn.thehandsome.com/_ui/desktop/common/images/products/ou_location_arr.png"
						alt="location arr" />
					<a href="javascript:void(0);" >${ctgName[1]}</a>
				</c:if>
				<c:if test = "${not empty ctgName[2]}">
					<img
						src="http://cdn.thehandsome.com/_ui/desktop/common/images/products/ou_location_arr.png"
						alt="location arr" />
					<a href="javascript:void(0);" >${ctgName[2]}</a>
				</c:if>	
<!-- 			<a href="/ko/c/WE/" onclick="GA_Event('카테고리_리스트','카테고리','여성')"> 여성</a> <img
				src="http://cdn.thehandsome.com/_ui/desktop/common/images/products/ou_location_arr.png"
				alt="location arr" /> <a href="/ko/c/WE05/"
				onclick="GA_Event('카테고리_리스트','카테고리','아우터')"> 아우터</a> <img
				src="http://cdn.thehandsome.com/_ui/desktop/common/images/products/ou_location_arr.png"
				alt="location arr" /> <a href="javascript:void(0);"
				onclick="GA_Event('카테고리_리스트','카테고리','점퍼')"> 점퍼</a> -->
			</span>
		</h3>
		<!-- 카테고리 표시 끝 -->
		<div class="adaptive_wrap">
			 <form id="categoryListForm" action="/ko/c/categoryList">
        <input type="hidden" id="brandCode" name="brandCode" value="">
        <input type="hidden" id="brandName" name="brandName" value="">
        <input type="hidden" id="subBrand" name="subBrand" value="">
        <input type="hidden" name="categoryCode" value="me031">
        <input type="hidden" id="genderCategoryCode" name="genderCategoryCode" value="">
        <input type="hidden" id="mainCateFlag" name="mainCateFlag" value="">
        <input type="hidden" id="repProdColorCode" name="repProdColorCode" value="">
        <input type="hidden" id="repSizeEnumCode" name="repSizeEnumCode" value="">
        <input type="hidden" id="priceOrderCode" name="priceOrderCode" value="">
        <input type="hidden" id="productOrderCode" name="productOrderCode" value="NEW">
        <input type="hidden" id="check4pmCode" name="check4pmCode" value="">
        <input type="hidden" id="checkAtHomeCode" name="checkAtHomeCode" value="">
        <input type="hidden" id="checkSaleCode" name="checkSaleCode" value="">
        <input type="hidden" id="checkQuickCode" name="checkQuickCode" value="">
        <input type="hidden" id="checkDeliveryCode" name="checkDeliveryCode" value="">
        <!-- 뒤로가기 버튼 클릭시 페이징 기억용 -->
        <input type="hidden" id="rememberPage" name="rememberPage" value="">
        <input type="hidden" id="FKD-001_015" value="컬러 더보기"> <!-- 컬러 더보기 -->

        <!-- sort wrap -->
        <div class="filterWrap hsDelivery1902">
            <ul class="clearfix float_left">
            <!-- 정상용 브랜드 검색 -->
            
                <li class="brand" id="brand_li_btn" >
                <a href="javascript:void(0);" class="select" >브랜드
                    <span class="current" id="brandCurrent" > <span class="ico_arr">arrow</span> </span>                   
					
                    </a>
                    <div class="list" id="brand_list_li" style="display: none;">
                        <ul id="category_brand_chip">
                        	<li><input type="checkbox" id="brand_ck" name="brand" value="1" onclick="GA_Event('카테고리_리스트','정렬','FOURM THE STORE');setOnlineShopBrand(this, 'BR35');"><label for="brand_ck21" id="BR35">FOURM THE STORE</label></li>
                            <li><input type="checkbox" id="brand_ck" name="brand" value="2" onclick="GA_Event('카테고리_리스트','정렬','O&amp;#039;2nd');setOnlineShopBrand(this, 'BR45');"><label for="brand_ck12" id="BR45">O'2nd</label></li>
                             <li><input type="checkbox" id="brand_ck" name="brand" value="3" onclick="GA_Event('카테고리_리스트','정렬','the CASHMERE');setOnlineShopBrand(this, 'BR08');"><label for="brand_ck9" id="BR08">the CASHMERE</label></li>
							 <li><input type="checkbox" id="brand_ck" name="brand" value="4" onclick="GA_Event('카테고리_리스트','정렬','MUE');setOnlineShopBrand(this, 'BR16');"><label for="brand_ck24" id="BR16">MUE</label></li>
                             <li><input type="checkbox" id="brand_ck" name="brand" value="5" onclick="GA_Event('카테고리_리스트','정렬','TIME');setOnlineShopBrand(this, 'BR01');"><label for="brand_ck1" id="BR01">TIME</label></li>
                            <li><input type="checkbox" id="brand_ck" name="brand" value="6" onclick="GA_Event('카테고리_리스트','정렬','MINE');setOnlineShopBrand(this, 'BR02');"><label for="brand_ck2" id="BR02">MINE</label></li>
                            <li><input type="checkbox" id="brand_ck" name="brand" value="7" onclick="GA_Event('카테고리_리스트','정렬','LANVIN COLLECTION');setOnlineShopBrand(this, 'BR19');"><label for="brand_ck3" id="BR19">LANVIN COLLECTION</label></li>
                            <li><input type="checkbox" id="brand_ck" name="brand" value="8" onclick="GA_Event('카테고리_리스트','정렬','TOM GREYHOUND');setOnlineShopBrand(this, 'BR15');"><label for="brand_ck20" id="BR15">TOM GREYHOUND</label></li>
                            <li><input type="checkbox" id="brand_ck" name="brand" value="9" onclick="GA_Event('카테고리_리스트','정렬','SJSJ');setOnlineShopBrand(this, 'BR04');"><label for="brand_ck6" id="BR04">SJSJ</label></li>
                             <li><input type="checkbox" id="brand_ck" name="brand" value="10" onclick="GA_Event('카테고리_리스트','정렬','CLUB MONACO');setOnlineShopBrand(this, 'BR44');"><label for="brand_ck13" id="BR44">CLUB MONACO</label></li>
                             <li><input type="checkbox" id="brand_ck" name="brand" value="11" onclick="GA_Event('카테고리_리스트','정렬','OBZEE');setOnlineShopBrand(this, 'BR43');"><label for="brand_ck11" id="BR43">OBZEE</label></li>
                             <li><input type="checkbox" id="brand_ck" name="brand" value="12" onclick="GA_Event('카테고리_리스트','정렬','SYSTEM');setOnlineShopBrand(this, 'BR03');"><label for="brand_ck5" id="BR03">SYSTEM</label></li>
                              <li><input type="checkbox" id="brand_ck" name="brand" value="13" onclick="GA_Event('카테고리_리스트','정렬','FOURM STUDIO');setOnlineShopBrand(this, 'BR30');"><label for="brand_ck22" id="BR30">FOURM STUDIO</label></li>
                               <li><input type="checkbox" id="brand_ck" name="brand" value="14" onclick="GA_Event('카테고리_리스트','정렬','3.1 Phillip Lim');setOnlineShopBrand(this, 'BR41');"><label for="brand_ck18" id="BR41">3.1 Phillip Lim</label></li>
                             <li><input type="checkbox" id="brand_ck" name="brand" value="15" onclick="GA_Event('카테고리_리스트','정렬','LANVIN PARIS');setOnlineShopBrand(this, 'BR20');"><label for="brand_ck17" id="BR20">LANVIN PARIS</label></li>
                              <li><input type="checkbox" id="brand_ck" name="brand" value="16" onclick="GA_Event('카테고리_리스트','정렬','ROCHAS');setOnlineShopBrand(this, 'BR37');"><label for="brand_ck19" id="BR37">ROCHAS</label></li>
                                <li><input type="checkbox" id="brand_ck" name="brand" value="17" onclick="GA_Event('카테고리_리스트','정렬','H : SCENE');setOnlineShopBrand(this, 'BR47');"><label for="brand_ck25" id="BR47">H : SCENE</label></li>
                                <li><input type="checkbox" id="brand_ck" name="brand" value="18" onclick="GA_Event('카테고리_리스트','정렬','TIME HOMME');setOnlineShopBrand(this, 'BR06');"><label for="brand_ck7" id="BR06">TIME HOMME</label></li>
                                  <li><input type="checkbox" id="brand_ck" name="brand" value="19" onclick="GA_Event('카테고리_리스트','정렬','SYSTEM HOMME');setOnlineShopBrand(this, 'BR07');"><label for="brand_ck8" id="BR07">SYSTEM HOMME</label></li>
                                  <li><input type="checkbox" id="brand_ck" name="brand" value="20" onclick="GA_Event('카테고리_리스트','정렬','FOURM MEN&amp;#039;S LOUNGE');setOnlineShopBrand(this, 'BR32');"><label for="brand_ck23" id="BR32">FOURM MEN'S LOUNGE</label></li>
                            	   <li><input type="checkbox" id="brand_ck" name="brand" value="21" onclick="GA_Event('카테고리_리스트','정렬','BALLY');setOnlineShopBrand(this, 'BR21');"><label for="brand_ck16" id="BR21">BALLY</label></li>
                                </ul>
                    </div>
                 </li>
                 <li class="color"  id="color_li_btn"><a href="javascript:void(0);" class="select">색상<span class="ico_arr">arrow</span></a>
                    <div class="list list_item4" id="color_list_li" style="display: none;">
                        <ul class="color_chip clearfix" id="category_color_chip">
                        	<li><a href="javascript:void(0);" style="background:#fae7c4;" value="1" name="color_a">BEIGE</a></li>
                            <li><a href="javascript:void(0);" style="background:#000000;" value="2" name="color_a">BLACK</a></li>
                            <li><a href="javascript:void(0);" style="background:#0f45bc;" value="3" name="color_a">BLUE</a></li>
                            <li class="mr0"><a href="javascript:void(0);" style="background:#673915;" value="4" name="color_a">BROWN</a></li>
                            <li><a href="javascript:void(0);" style="background:#741313;" value="5" name="color_a">BURGUNDY</a></li>
                            <li><a href="javascript:void(0);" style="background:#876c41;" value="6" name="color_a">CAMEL</a></li>
                            <li><a href="javascript:void(0);" style="background:#ffc733;" value="7" name="color_a">GOLD</a></li>
                            <li class="mr0"><a href="javascript:void(0);" style="background:#0f6f0e;" value="8" name="color_a">GREEN</a></li>
                            <li><a href="javascript:void(0);" style="background:#444445;" value="9" name="color_a">GREY</a></li>
                            <li><a href="javascript:void(0);" style="background:#fff8d9;" value="10" name="color_a">IVORY</a></li>
                            <li><a href="javascript:void(0);" style="background:#465626;" value="11" name="color_a">KHAKI</a></li>
                            <li class="mr0"><a href="javascript:void(0);" style="background:#9c81bb;" value="12" name="color_a">LAVENDER</a></li>
                            <li><a href="javascript:void(0);" style="background:#9d9fa2;" value="13" name="color_a">METAL</a></li>
                            <li><a href="javascript:void(0);" style="background:#95d0ab;" value="14" name="color_a">MINT</a></li>
                            <li><a href="javascript:void(0);" style="background:#534741;" value="15" name="color_a">MULTI</a></li>
                            <li class="mr0"><a href="javascript:void(0);" style="background:#061836;" value="16" name="color_a">NAVY</a></li>
                            <li><a href="javascript:void(0);" style="background:#5d682d;" value="17" name="color_a">OLIVE</a></li>
                            <li><a href="javascript:void(0);" style="background:#ee6423;" value="18" name="color_a">ORANGE</a></li>
                            <li><a href="javascript:void(0);" style="background:#ea589b;" value="19" name="color_a">PINK</a></li>
                            <li class="mr0"><a href="javascript:void(0);" style="background:#833b95;" value="20" name="color_a">PURPLE</a></li>
                            <li><a href="javascript:void(0);" style="background:#ec1e24;" value="21" name="color_a">RED</a></li>
                            <li><a href="javascript:void(0);" style="background:#c0c0c0;" value="22" name="color_a">SILVER</a></li>
                            <li><a href="javascript:void(0);" style="background:#a2d6f3;" value="23" name="color_a">SKY</a></li>
                            <li class="mr0"><a href="javascript:void(0);" style="background:#4c2b7b;" value="24" name="color_a">VIOLET</a></li>
                            <li><a href="javascript:void(0);" class="wt" style="background:#ffffff;" value="25" name="color_a">WHITE</a></li>
                            <li><a href="javascript:void(0);" style="background:#ffea0a;" value="26" name="color_a">YELLOW</a></li>
                            </ul>
                    </div>
                </li>
                <li class="size" id="size_li_btn"><a href="javascript:void(0);" class="select">사이즈<span class="ico_arr">arrow</span></a>
                    <div class="list list_item3" id="size_list_li" style="display: none;">
                        <ul class="size_chip clearfix" id="category_size_chip">
                        <!-- <li><a href="javascript:setRepSizeEnumCode('XXXS')" onclick="GA_Event('카테고리_리스트','정렬','XXXS');">XXXS</a></li>
                        <li><a href="javascript:setRepSizeEnumCode('XXS')" onclick="GA_Event('카테고리_리스트','정렬','XXS');">XXS</a></li>
                        <li class="mr0"><a href="javascript:setRepSizeEnumCode('XS')" onclick="GA_Event('카테고리_리스트','정렬','XS');">XS</a></li>
                        <li><a href="javascript:setRepSizeEnumCode('S')" onclick="GA_Event('카테고리_리스트','정렬','S');">S</a></li>
                        <li><a href="javascript:setRepSizeEnumCode('M')" onclick="GA_Event('카테고리_리스트','정렬','M');">M</a></li>
                        <li class="mr0"><a href="javascript:setRepSizeEnumCode('L')" onclick="GA_Event('카테고리_리스트','정렬','L');">L</a></li>
                        <li><a href="javascript:setRepSizeEnumCode('XL')" onclick="GA_Event('카테고리_리스트','정렬','XL');">XL</a></li>
                        <li><a href="javascript:setRepSizeEnumCode('XXL')" onclick="GA_Event('카테고리_리스트','정렬','XXL');">XXL</a></li>
                        <li class="mr0"><a href="javascript:setRepSizeEnumCode('XXXL')" onclick="GA_Event('카테고리_리스트','정렬','XXXL');">XXXL</a></li>
                        <li><a href="javascript:setRepSizeEnumCode('XXXXL')" onclick="GA_Event('카테고리_리스트','정렬','XXXXL');">XXXXL</a></li> -->
                        <li><a href="javascript:void(0);" value='1' name="size_a">FREE</a></li>
                        <!-- <li class="mr0"><a href="javascript:setRepSizeEnumCode('ETC')" onclick="GA_Event('카테고리_리스트','정렬','ETC');">ETC</a></li> -->
                        </ul>
                    </div>
                </li>
                <li class="price" id="price_li_btn" ><a href="javascript:void(0);" class="select" >가격<span class="ico_arr">arrow</span></a>
                    <div class="list" id="price_list_li" style="display: none;">
                        <ul>
                            <li><input type="checkbox" id="price_ck" value="1"> <label for="price_ck1" id="lable_ck1"> ￦100,000 이하</label></li>
                            <li><input type="checkbox" id="price_ck" value="2"> <label for="price_ck2" id="lable_ck2">￦100,000 ~ ￦300,000</label></li>
                            <li><input type="checkbox" id="price_ck" value="3"> <label for="price_ck3" id="lable_ck3">￦300,000 ~ ￦500,000</label></li>
                            <li><input type="checkbox" id="price_ck" value="4"> <label for="price_ck4" id="lable_ck4">￦500,000 ~ ￦1,000,000</label></li>
                            <li><input type="checkbox" id="price_ck" value="5"> <label for="price_ck5" id="lable_ck5">￦1,000,000 이상</label></li>
                        </ul>
                    </div>
                </li>
                            

                
                <li class="sortby"  id="sortby_li_btn" >
                	<a href="javascript:void(0);" class="select" >정렬순<span class="current" id="chang_filter_categoriy"></span><span class="ico_arr">arrow</span>
                	</a>
                    <div class="list" id="sortby_list_li"  style="display: none;">
                        <ul >
                            <li id="new"><a href="javascript:void(0);" value="1" name="order_a">신상품</a></li>
                            <li id="most"><a href="javascript:void(0);" value="2" name="order_a">판매순</a></li>
                            <li id="max"><a href="javascript:void(0);" value="3" name="order_a">고가순</a></li>
                            <li id="min"><a href="javascript:void(0);" value="4" name="order_a">저가순</a></li>
                            </ul>
                    </div>
                </li>
                 <li class="prd_list_filter1810 sale_filter">
                    <div class="input_wrap">
                        <!-- <input type="checkbox" id="checkSale" name="checkSale" onclick="setCheckSaleCode();GA_Event('카테고리_리스트','정렬','SALE');" style="margin: 3px 10px 0 0;"><label for="checkSale" id="checkSale" style="color: #ff0000;">SALE</label> -->
                    </div>
                </li>
                <li class="prd_list_filter1810 delivery" style=""><!-- 딜리버리 190219 -->
                   <!-- <div class="input_wrap">
                        <input type="checkbox" id="checkDelivery" name="checkDelivery" onclick="sethsDeliveryCode();GA_Event('카테고리_리스트','정렬','한섬딜리버리');"><label for="checkDelivery" id="hsDelivery">한섬딜리버리</label> 
                    </div>
                    <img src="http://cdn.thehandsome.com/_ui/desktop/common/images/common/ico_quest.png" alt="한섬딜리버리란?" class="tlt" onmouseover="onMouseOverRecommend();" onmouseout="onMouseOutRecommend();">
                    <div class="rmd_pb_popup" style="display: none;">
                    <p>4PM, 퀵배송이 가능합니다.</p> 
                    <span class="box_arr"></span>
                 </div> -->
                </li>
               

                <li class="btn"><a  id="resetapp" href="javascript:void(0);" >초기화</a><a id="filterapp" href="javascript:void(0);">적용</a></li>

            </ul>
         	<div class="items_count float_right">
                        <span class="num">${productCount}</span> <span>전체</span>
            </div>
        </div>
        </form>
			<!-- 여기서 부터가 상품 진열 -->
			<div class="items_list cate_item4" id="listContent"
				style="display: block">
				<ul class="clearfix" id="listBody">
					<c:forEach items="${productList}" var="product">
						<li>
							<div class="item_box">
								<a href="#" class="item_info1"
									onclick="setEcommerceData('0', 'CATEGORY');"> <span
									class="item_img"> <img
										src="" id="T01_IMG_0"
										alt="${product.pname}" targetcode="TM2CAWOT761W_BK"
										class="respon_image"
										onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img3.jpg'" />
										<img src=""
										id="T02_IMG_0" alt="${product.pname}"
										targetcode="TM2CAWOT761W_BK" class="respon_image on"
										onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img3.jpg'"
										style= "/* display: none; */opacity: 0;" /> <input type="hidden"
										id="newImage1_0"
										value="http://newmedia.thehandsome.com/TM/2C/FW/TM2CAWOT761W_BK_T01.jpg" />
										<input type="hidden" id="newImage2_0"
										value="http://newmedia.thehandsome.com/TM/2C/FW/TM2CAWOT761W_BK_T02.jpg" />
								</span> 
								<span class="item_size" id="itemsize_0"
									style="display: none; height: 20px; padding-top: 15px; margin-top: 0px; padding-bottom: 15px; margin-bottom: 0px;">
										<div>
											<c:forEach items="${product.p_size}" var="size">
												<span>${size}</span>
											</c:forEach>
										</div>
<!-- 										<div id="TM2CAWOT761W_BK">
											<span>82</span>
										</div>
										<div id="TM2CAWOT761W_IV" style="display: none">
											<span>82</span>
										</div> -->
								</span>
								</a> <a href="/ko/p/TM2CAWOT761W_BK?categoryCode=we052"
									class="item_info2" onclick="setEcommerceData('0', 'CATEGORY');">
									<span class="brand">${product.bname}</span> <span class="title">${product.pname}</span>
									<span class="price"><span id="price_TM2CAWOT761W_BK"><span>${product.pprice}</span></span></span>
									<!-- 테그는 일단생략하자 --> <!--               <span class="flag">
                <span class="product">NEW</span>
              </span> -->
								</a>
								<div class="color_more_wrap">
									<c:forEach items="${product.colorList}" var="color">
										<a href="/product/list/${color.ccolorcode };"
											class="cl wt"
											colorcode = "${color.ccolorcode}"
											thumbnailimage1="${color.c_thumbnail1}"
											thumbnailimage2="${color.c_thumbnail2}"
											style=" background: #000000 url('${color.ccolorimage}');"></a>
									</c:forEach>
								</div>
	<!-- 							<a href="javascript:addWishListClick('TM2CAWOT761W');"
									class="add_wishlist" id="wish_TM2CAWOT761W"
									onclick="GA_Category('wish', $(this));"
									data-value="TM2CAWOT761W_BK">위시리스트 담기</a> -->
							</div>
						</li>
					</c:forEach>
				</ul>
			</div>
			<!-- 상품진열 끝 -->
			
			<!-- paging -->
			<div class="paging" style="display: block;">
			
				<a class="prev2" href="javascript:void(0);">처음 페이지로 이동</a>
				<!-- 이전 버튼 -->
				<a class="prev" href="javascript:void(0);">이전 페이지로 이동</a>

				<span class="num"> 
					<!-- 1~10 버튼 --> 
					<c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
						<a href="javascript:void(0);" class="pageBtn " pagenum="${num}">${num}</a>
					</c:forEach> <!--공홈 참고용 <a href="javascript:void(0);" class="pageBtn  on  " pagenum="1">1</a>-->
				</span>
				
				<!-- 다음 버튼 -->
				<a class="next" href="javascript:void(0);" >다음 페이지로 이동</a>
				<a class="next2" href="javascript:void(0);" >마지막 페이지로 이동</a>
				
			</div>
			<form id='actionForm' action="/product/list" method='get'>
				<input type='hidden' name='ctg' value='${ctg}'>
				<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum}'>
				<input type='hidden' name='amount' value='${pageMaker.cri.amount}'>
			</form>
			<!-- 페이징처리 자바스크립트 나중에 맨 아래로 내리자 -->
			<script type="text/javascript">

				
			 	/* function change1(){
			        $("#chang_filter_categoriy").html($("#new").text());
			        order_filter = $("#new").attr('value');
			    }
			    function change2(){
			        $("#chang_filter_categoriy").html($("#most").text());
			        order_filter = $("#most").attr('value');
			    }
			    function change3(){
			        $("#chang_filter_categoriy").html($("#max").text());
			        order_filter = $("#max").attr('value');
			    }
			    function change4(){
			        $("#chang_filter_categoriy").html($("#min").text());
			        order_filter = $("#min").attr('value');
			    } */
				$(document).ready(
						function() {
							let color_filter = "";
							let size_filter = "";
							let order_filter = "";
							
							//color버튼 누르면
							$("a[name='color_a']").click(function(){
								color_filter = $(this).attr('value');
							});
							//size버튼 누르면
							$("a[name='size_a']").click(function(){
								size_filter = $(this).attr('value');
							});
							//order버튼 누르면
							$("a[name='order_a']").click(function(){
								order_filter = $(this).attr('value');
							});
							
							//초기화 버튼을 누르면 실행
							 $("#resetapp").click(function(){
								 console.log('resetapp click');
								
								//size 태그의 style를 제거
								$("a[name='size_a']").removeClass('on');
								//color 태그의 style를 제거
								$("a[name='color_a']").removeClass('on');
								
								//color_filter,size_filter,order_filter 초기화
								color_filter="";
								size_filter="";
								order_filter="";
								
								//checkbox type으로 되어있는 태그들을 해제.
								$("input:checkbox[id='brand_ck']:checked").each(function(){
									
									 $("input:checkbox[id='brand_ck']").prop("checked",false);
								})
								
								$("input:checkbox[id='price_ck']:checked").each(function(){
									$("input:checkbox[id='price_ck']").prop("checked",false);
								})
							}); 
							
							//적용버튼 누르면 필터 선택된 값들 다 가져오기
							$("#filterapp").click(function(){
								// 아래는 체크박스라서 안에다가 만듬
								let brand_filter = "";
								let price_filter = "";
								//brand가져오기
								$("input:checkbox[id='brand_ck']:checked").each(function(){
									brand_filter += $(this).val()+'.'
								})
								brand_filter = brand_filter.slice(0,-1);
								//price 가져로기
								$("input:checkbox[id='price_ck']:checked").each(function(){
									price_filter += $(this).val()+'.'
								})
								price_filter = price_filter.slice(0,-1);
								
								//핕터 속성들이 전부 "" 이 아니라면  filter 버튼 실행(필터 속성 값에 아무것도 안들어가 있는데 초기화버튼 누르는 것을 방지)
								if(color_filter === "" && size_filter === "" && order_filter === "" && brand_filter===""&& price_filter===""){
									alert("필터를 등록해주세요");
									console.log("brand_filter:"+brand_filter);
								}else{
								if(brand_filter === ""){
									brand_filter = "0"
								}
								if(color_filter === ""){
									color_filter = "0"
								}
								if(size_filter === ""){
									size_filter = "0"
								}
								if(price_filter === ""){
									price_filter = "0"
								}
								if(order_filter === ""){
									order_filter = "0"
								}
								
								const filter_values = brand_filter+"_"+color_filter+"_"+size_filter+"_"+price_filter+"_"+order_filter ; 
								console.log(filter_values);
								
								//console.log('/product/list/${ctg}/1_'+"${productCount}_"+filter_values);
								$(location).attr('href', '/product/list/${ctg}/1_'+"${productCount}_"+filter_values);
								}
							});
							//로드될때 이미지들 색깔에 맞게 띄우기
							const products = document.querySelectorAll(".item_box")
							for(i=0; i< products.length ; i++){
							    const img1 = products[i].getElementsByClassName("cl")[0].getAttribute("thumbnailimage1");
							    const img2 = products[i].getElementsByClassName("cl")[0].getAttribute("thumbnailimage2");
							    products[i].getElementsByClassName("respon_image")[0].setAttribute("src", img1);
							    products[i].getElementsByClassName("respon_image")[1].setAttribute("src", img2);
							    
							}
							/* $(".item_box").find("img:eq(0)").attr("src",$(this).find(".cl").attr("thumbnailimage1"));
							$(".item_box").find("img:eq(1)").attr("src",$(this).find(".cl").attr("thumbnailimage2")); */
							
							//이미지 hover처리
							$(".item_info1").hover(
									function(){
										//$(this).find("img:eq(1)").css('display', 'block');
										$(this).find("img:eq(1)").css('visibility', 'visible');
										$(this).find("img:eq(1)").css('opacity', 1);
										//사이즈 보여지게 처리
										$(this).find(".item_size").css('display', 'block');
										
									},
									function(){
										$(this).find("img:eq(1)").css('opacity', 0);
										$(this).find("img:eq(1)").css('visibility', 'hidden');
										//$(this).find("img:eq(1)").css('display', 'none');
										//사이즈 안보이게 처리
										$(this).find(".item_size").css('display', 'none');
									}
									);
							
							//색깔 이미지 클릭시
							$(".cl").on("click", function(e){
								e.preventDefault(); //<a> 작동 중지
								$(this).closest("li").find("img:eq(0)").attr("src", $(this).attr("thumbnailimage1"));
								$(this).closest("li").find("img:eq(1)").attr("src", $(this).attr("thumbnailimage2"));
								
							})
							
							//페이징 버튼 처리
							var actionForm = $("#actionForm"); //폼등록
							
							var curPageNum =$(".pageBtn[pagenum='${pageMaker.cri.pageNum}']");
							
							$(".pageBtn").on("click", function(e) {
								e.preventDefault(); //<a> 작동 중지
								/* actionForm
										.find("input[name='pageNum']")
										.val($(this).attr("pagenum"));
								actionForm.submit(); //form submit */
								location.href="/product/list/${ctg}/"+$(this).attr("pagenum")+ "_${productCount}" + "${page_info_ex}";
							});//end click
							
							//이전 < 버튼을 누를 경우 실행
							$(".prev").on("click",function(e){
								if(parseInt(curPageNum.attr("pagenum"))===1){
									alert("처음페이지입니다.");
								}else{
								e.preventDefault(); //<a> 작동 중지
								console.log('click');

								/* location.href="/product/list/${ctg}/"+(parseInt(curPageNum.attr("pagenum"))-1)+"_${productCount}"; */
								location.href="/product/list/${ctg}/"+(parseInt(curPageNum.attr("pagenum"))-1)+"_${productCount}" +"${page_info_ex}";
								}
							});
							
							//다음 > 버튼을 누를 경우 실행
							$(".next").on("click",function(e){
								if(parseInt(curPageNum.attr("pagenum"))===${pageMaker.realEnd}){
									alert("마지막페이지입니다.");
								}else {
								e.preventDefault(); //<a> 작동 중지
								console.log('click');
								/* location.href="/product/list/${ctg}/"+(parseInt(curPageNum.attr("pagenum"))+1)+"_${productCount}"+"_0_0_0_0_0"; */
								location.href="/product/list/${ctg}/"+(parseInt(curPageNum.attr("pagenum"))+1)+"_${productCount}" +"${page_info_ex}";

								}
							});
							
							//맨 끝 >> 버튼을 누를 경우 실행
							$(".next2").on("click",function(e){
								if(parseInt(curPageNum.attr("pagenum"))===${pageMaker.realEnd}){
									alert("마지막페이지입니다.");
								}else{
								e.preventDefault(); //<a> 작동 중지
								console.log('click');
								location.href="/product/list/${ctg}/${pageMaker.realEnd}"+"_${productCount}" +"${page_info_ex}";
								}
							});
							
							//맨 처음 << 버튼을 누를 경우 실행
							$(".prev2").on("click",function(e){
								if(parseInt(curPageNum.attr("pagenum"))===1){
									alert("처음페이지입니다.");
								}else{
								e.preventDefault(); //<a> 작동 중지
								console.log('click');
								location.href="/product/list/${ctg}/1"+"_${productCount}" +"${page_info_ex}";
								}
							});
							
							//해당 상품을 클릭할 경우 상품 상세 페이지로 ctg와 pagenum을 이동시킨다.
							$(".item_img").on("click",function(e){
								console.log('click');
								location.href="/product/product_detail/"+$(this).attr("alt");
								//${ctg}/"+curPageNum.attr("pagenum")+"_${productCount}" +"${page_info_ex}";
							}); 

							//현재 페이지 버튼의 class에 "on" 추가하기
							curPageNum.addClass("on");
					});
				$("#brand_li_btn").click(function(){
				    $("#brand_list_li").slideToggle(),
				    $("#sortby_list_li").slideUp(),
				    $("#size_list_li").slideUp(),
				    $("#price_list_li").slideUp(),
				    $("#color_list_li").slideUp();
				}),

				$("#color_li_btn").click(function(){
				    $("#color_list_li").slideToggle(),
				    $("#sortby_list_li").slideUp(),
				    $("#size_list_li").slideUp(),
				    $("#price_list_li").slideUp(),
				    $("#brand_list_li").slideUp();
				   
				 
				}),

				$("#size_li_btn").click(function(){

				    $("#size_list_li").slideToggle(),
				    $("#sortby_list_li").slideUp(),
				    $("#price_list_li").slideUp(),
				    $("#brand_list_li").slideUp(),
				    $("#color_list_li").slideUp();
				   
				 
				}),

				$("#price_li_btn").click(function(){
				   
				    $("#price_list_li").slideToggle(),
				    $("#sortby_list_li").slideUp(),
				    $("#size_list_li").slideUp(),
				    $("#brand_list_li").slideUp(),
				    $("#color_list_li").slideUp();
				 
				}),

				$("#sortby_li_btn").click(function(){
				    
				    $("#sortby_list_li").slideToggle(),
				    $("#size_list_li").slideUp(),
				    $("#brand_list_li").slideUp(),
				    $("#color_list_li").slideUp(),
				    $("#price_list_li").slideUp();
					
				}); 
				 function change1(){
				     
				        $("#chang_filter_categoriy").html($("#new").text());
				    }
				    function change2(){
				      
				        $("#chang_filter_categoriy").html($("#most").text());
				    }
				    function change3(){
				       
				        $("#chang_filter_categoriy").html($("#max").text());
				    }
				    function change4(){
				      
				        $("#chang_filter_categoriy").html($("#min").text());
				    }
				    function change5(){
				       
				        $("#chang_filter_categoriy").html($("#star").text());
				    }
			

				$("#chang_filter_categoriy").on("click",
						function(){
							console.log("click됨");
				});


			</script>
			<!-- //paging -->
		</div>
	</div>
<%@include file ="/WEB-INF/views/common/footer.jspf" %>