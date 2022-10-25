<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@include file="/WEB-INF/views/common/header.jspf"%>

<!-- bodyWrap -->
<body>
	<!-- headerWrap -->
	<div id="headerWrap">
		<div class="header header_fixed header_main1903">
			<script type="text/javascript" src="/_ui/desktop/common/js/SsoAjax.js"></script>

			<form id="autologinForm" name="autologinForm" action="/ko/hp/autologin" method="get">
				<input type="hidden" name="hcid" id="hcid" value="e2gaf@naver.com" />
			</form>
			<div class="top_nav topnav1903">
				<div class="top_nav_wrap clearfix">
					<div class="brand_menu brand_menu1903">
						<ul class="clearfix">
							<!-- 선호 브랜드 있음 -->
							<li><span class="on"><a href="/" onclick="GA_Event('공통','탑_네비게이션','HOME')">HOME</a></span></li>
							<!-- 공간 상 들어가지 못한 나머지 브랜드-->
						</ul>
					</div>
					<div class="gnb_sh_wrap" style="display: none;">
						<!-- search box -->
						<div class="gnb_sh_box">
							<input type="text" class="input" id="gnbsearchwords" title="검색어 입력" value=""
								onkeypress="if(event.keyCode==13) {EnterSearchHeader(); return false;}" />
							<a href="javascript:void(0);" id="gnbsearch">검색</a>
						</div>
						<!-- //search box -->
						<!-- search result -->
						<div class="gnb_sh_result">
							<div class="tab">
								<a href="javascript:void(0);" class="menu on">최근검색어</a>
								<div class="result_list on">
									<div class="searchWord1" style="display: none;">
										<a href="javascript:void(0);" class="ml newlyBtn" id="searchWord1"></a><a href="javascript:void(0);"
											class="close" onclick="deletecookie('HS_Seachwords1')">닫기</a>
									</div>
									<div class="searchWord2" style="display: none;">
										<a href="javascript:void(0);" class="ml newlyBtn" id="searchWord2"></a><a href="javascript:void(0);"
											class="close" onclick="deletecookie('HS_Seachwords2')">닫기</a>
									</div>
									<div class="searchWord3" style="display: none;">
										<a href="javascript:void(0);" class="ml newlyBtn" id="searchWord3"></a><a href="javascript:void(0);"
											class="close" onclick="deletecookie('HS_Seachwords3')">닫기</a>
									</div>
									<div class="searchWord4" style="display: none;">
										<a href="javascript:void(0);" class="ml newlyBtn" id="searchWord4"></a><a href="javascript:void(0);"
											class="close" onclick="deletecookie('HS_Seachwords4')">닫기</a>
									</div>
									<div class="searchWord5" style="display: none;">
										<a href="javascript:void(0);" class="ml newlyBtn" id="searchWord5"></a><a href="javascript:void(0);"
											class="close" onclick="deletecookie('HS_Seachwords5')">닫기</a>
									</div>
									<a href="javascript:void(0);" class="btn_svclose">검색어 <span id="searchSaveYN" save="on">끄기</span></a> 
									<a href="javascript:void(0);" class="btn_allclose on" onclick="searchOff()">닫기</a>
								</div>
								<a href="javascript:void(0);" class="menu">인기검색어</a>
								<div class="result_list">
									<div>
										<a href="javascript:void(0);" class="ml favBtn">jacket</a>
										<!-- <a href="javascript:void(0);" class="close">닫기</a> -->
									</div>
									<div>
										<a href="javascript:void(0);" class="ml favBtn">blouse</a>
										<!-- <a href="javascript:void(0);" class="close">닫기</a> -->
									</div>
									<div>
										<a href="javascript:void(0);" class="ml favBtn">stripe</a>
										<!-- <a href="javascript:void(0);" class="close">닫기</a> -->
									</div>
									<div>
										<a href="javascript:void(0);" class="ml favBtn">ribbon</a>
										<!-- <a href="javascript:void(0);" class="close">닫기</a> -->
									</div>
									<div>
										<a href="javascript:void(0);" class="ml favBtn">blouson</a>
										<!-- <a href="javascript:void(0);" class="close">닫기</a> -->
									</div>
									<a href="javascript:void(0);" class="btn_svclose">검색어 <span id="searchSaveYNfame" save="on">끄기</span></a>
									<a href="javascript:void(0);" class="btn_allclose" onclick="searchOff()">닫기</a>
								</div>
							</div>
						</div>
						<!-- //search result -->
					</div>
					<!-- 201705 search_box_wrap -->
					<div class="search_box_wrap sbw1803" id="searchBox">
						<form name="search" id="search" action="/ko/hssearch/searchCount" method="post" onsubmit="return false;">
							<input type="hidden" name="CSRFToken" value="c8672c9d-757d-4ec1-812e-9368ce782426" /> 
							<input type="hidden" name="searchwords" value="" /> 
							<input type="hidden" name="startCount" value=""> 
							<input type="hidden" name="mode" value=""> 
							<input type="hidden" name="sort" value=""> 
							<input type="hidden" name="collection" value=""> 
							<input type="hidden" name="range" value=""> 
							<input type="hidden" name="startDate" value=""> 
							<input type="hidden" name="endDate" value=""> 
							<input type="hidden" name="searchField" value=""> 
							<input type="hidden" name="reQuery" /> 
							<input type="hidden" id="prefixQuery" value="" /> 
							<input type="hidden" id="identity" name="identity" value=""> 
							<input type="hidden" id="realQuery" name="realQuery" value="" /> 
							<input type="hidden" id="loginState" value="loginOn" /> 
							<input type="hidden" id="athomeInfo" value="" /> 
							<input type="hidden" id="selectedLang" name="selectedLang" value="product_ko" /> 
							<input type="hidden" id="lang" name="lang" value="ko" /> 
							<input type="hidden" id="brandPageGubun" name="brandPageGubun" value="off">
							<!-- 브랜드 페이지 여부 -->
							<input type="hidden" id="brand_img" name="brand_img" value="">
							<input type="hidden" id="brand_url" name="brand_url" value="">
							<div class="search_box">
								<label for="query" class="hidden">search</label> 
								<input type="search" id="query" name="query" value="" 	onKeypress="javascript:pressCheck((event),this);"
									style="margin-top: 0.2px;" autocomplete="off"> 
								<span class="placeholder"></span> 
								<a href="javascript:void(0);">
									<span class="btn_close">닫기</span>
								</a> 
								<a href="javascript:GA_search();doSearch();" class="search">
								 	<span class="ico">검색</span>
								 </a>
							</div>
						</form>
						<!--검색박스 활성화 data_react -->
						<div class="data_react">
							<!-- tab 검색어 입력 전 -->
							<div class="search_tab">
								<div class="btn_search_tab" style="display: none;">
									<a href="javascript:void(0);" rel="recent_search" class="btn_recent_search on" onclick="GA_Event('검색','최근 검색어','클릭')">최근 검색어</a> 
									<a href="javascript:void(0);" rel="style_search" class="btn_style_search" id="btn_style_search">Style Search</a> 
									<a href="javascript:void(0);" rel="popular_search" class="btn_style_search" id="btn_top_search" style="display: none;" onclick="GA_Event('검색','인기검색어','클릭')">인기검색어</a>
								</div>
								<!-- 최근 검색어 -->
								<div class="recent_search s_tab">
									<ul id="mykeyword"></ul>
								</div>
								<!-- style search -->
								<form id="searchStyle" name="searchStyle" action="/ko/hssearch/searchCount" method="post" onsubmit="return false;">
									<input type="hidden" name="query" value="" /> 
									<input type="hidden" name="collection" value="" /> 
									<input type="hidden" id="CSRFToken" name="CSRFToken" value="c8672c9d-757d-4ec1-812e-9368ce782426" /> 
									<input type="hidden" id="searchStyleYn" name="searchStyleYn" value="searchStyle" />
								</form>

								<div class="style_search s_tab" id="stylesearch_area">
									<p class="style_search_tlt">Style Search 2018</p>
									<div class="ss_txt_list">
										<ul class="style_search_arr" id="style_search_arr"></ul>
									</div>
									<div class="ss_img_list" id="styleSearchSlider">
										<ul class="slides">
											<li></li>
										</ul>
									</div>
								</div>
								
								<!-- //style search 컨텐츠 하나일 때-->
								<div class="popular_search s_tab" id="topsearch_area" style="display: none;">
									<ol class="ol_popular1" id="topsearchLeft"></ol>
								</div>
							</div>
							<!--// tab 검색어 입력 전 -->
							<!-- 검색어 입력 후 (검색어 자동완성) -->
							<div class="search_autocomplete">
								<div class="autocomplete_txt">
									<div id="brandView"><ul></ul></div>
									<div id="ark" style="height: 170px;"></div>
								</div>
								<div class="autocomplete_right">
									<div class="category_brand">
										<p>카테고리/브랜드</p>
										<div class="brand">
											<p id="autocomplete_brand">브랜드</p>
										</div>
										<div class="category">
											<p id="autocomplete_category">카테고리</p>
										</div>
									</div>
									<div class="autocomplete_img">
										<p>
											<span>"<span id="autocomplete_query">{0}</span>"
											</span>에 대한 주요 검색 결과
										</p>
										<!--                                     <p><span>"<span id="autocomplete_query"></span>&#32;"</span>에 대한 주요 검색 결과</p> -->
										<ul id="auto2"></ul>
									</div>
								</div>
							</div>
							<!--// 검색어 입력 후 (검색어 자동완성) -->
						</div>
						<!--//검색박스 활성화 data_react -->
					</div>
					<!--// 201705 search_box_wrap -->
					<div class="util_menu" style="display: block;">
						<ul class="clearfix">
							<li><a href="javascript:setLogout();" onclick="GA_Event('공통','헤더_메뉴','로그아웃')">로그아웃</a></li>
							<li class="header_dropmemu mypage">
								<a href="/member/mypage" class="btn" onclick="GA_Event('공통','헤더_메뉴','마이페이지')">마이페이지</a>
								<div class="list">
									<ul>
										<li><a href="/ko/mypage/order/myorders" onclick="GA_Event('공통','헤더_메뉴','마이페이지_주문조회')">주문조회<!-- 주문조회 --></a></li>
										<li><a href="/ko/mypage/myGradeInfo" onclick="GA_Event('공통','헤더_메뉴','마이페이지_나의회원등급')">나의회원등급<!-- 온라인등급 --></a></li>
										<li><a href="/ko/mypage/voucher" onclick="GA_Event('공통','헤더_메뉴','마이페이지_쿠폰조회')">쿠폰조회<!-- 쿠폰조회 --></a></li>
										<li><a href="/ko/mypage/mypoint" onclick="GA_Event('공통','헤더_메뉴','마이페이지_마일리지조회')">마일리지조회<!-- 포인트조회 --></a></li>
										<li><a href="/ko/mypage/personInfomationChangePWCheck" onclick="GA_Event('공통','헤더_메뉴','마이페이지_회원정보변경')">회원정보변경<!-- 회원정보변경 --></a></li>
										<li><a href="/ko/svcenter/mantomaninquiry" onclick="GA_Event('공통','헤더_메뉴','마이페이지_온라인상담')">온라인상담<!-- 온라인 상담 --></a></li>
									</ul>
								</div>
							</li>
						</ul>
					</div>
					<div class="honey_talk_service1905 remove1907">
						<!-- 추가 190702 -->
						<!-- vip 채팅 서비스 -->
						<div id="chatbotMain" style="display: none;">
							<a href="#none" class="btn_viptalk_v2 v3" onclick="callChatbot();GA_Event('공통','유틸_메뉴','하니톡');"> 
								<img src="http://cdn.thehandsome.com/_ui/desktop/common/images/main/talk-talk-chat-icon.png">
							</a>
						</div>
						<!-- //vip 채팅 서비스 -->
					</div>
				</div>
			</div>

			<!-- validation check message global -->
			<input type="hidden" id="validationCheckPwd" value="비밀번호를 재입력 하셔야 합니다." /> 
			<input type="hidden" id="validationCheck" value="필수데이터가 입력되지 않았습니다." /> 
			<input type="hidden" id="validationCheckMsg" value="다음 사항을 확인해 주세요." /> 
			<input type="hidden" id="validationCheckMsg1" value="필수데이터가 입력되지 않았습니다." />
			<input type="hidden" id="validationCheckMsg2" value="동일문자를 3번 이상 사용할 수 없습니다." /> 
			<input type="hidden" id="validationCheckMsg3" value="연속된 문자열(123 또는 321, abc, cba 등) 3자리이상 올 수 없습니다." /> 
			<input type="hidden" id="validationCheckMsg4" value="Caps Lock 이 켜져 있습니다." />
			<input type="hidden" id="validationCheckMsg5" value="이메일 아이디의 중복 확인이 필요합니다." /> 
			<input type="hidden" id="validationCheckMsg6" value="이메일의 중복확인이 필요합니다." /> 
			<input type="hidden" id="deliveryOkMsg" value="확인" /> 
			<input type="hidden" id="deliveryCancelMsg" value="취소" />

			<form id="chatbotForm" action="https://talk.thehandsome.com/front/v1/jsp/view/chat.jsp" method="post" target="chatwindow">
				<input type="hidden" name="token" id="chatbot_token"> 
				<input type="hidden" name="talkId" id="chatbot_talkId">
				<div>
					<input type="hidden" name="CSRFToken" value="c8672c9d-757d-4ec1-812e-9368ce782426" />
				</div>
			</form>
			<!-- //headerWrap -->

			<div class="gnbwarp new201608 clearfix">
				<h1 class="logo logo1903">
					<a href="/" onclick="GA_Event('공통', '로고', '상단');">thehandsome.com</a>
				</h1>
				<!-- 첫번째 c:if -->

				<div id="transparent_mask"></div>
				<!-- 201803 util menu -->
				<div class="util_menu util_menu1803">
					<ul class="clearfix">
						<li><a href="javascript:void(0);"><span class="ico_sh">search</span></a></li>
						<li><a href="/member/wishList" onclick="GA_Event('공통','유틸_메뉴','위시리스트');">
							<span class="ico wishlist">wish list</span> <span class="count">(<span id="wishlistCount">0</span>)</span></a></li>
						<li><a href="/member/shoppingbag" onclick="GA_Event('공통','유틸_메뉴','쇼핑백');">
							<span class="ico cart">장바구니</span> <span class="count">(<span id="cartCount">1</span>)</span></a></li>
					</ul>
				</div>
			</div>
			<!-- //201803 util menu -->
		</div>
	</div>
	<!-- //headerWrap -->

	<!-- bodyWrap -->
	<div id="bodyWrap">
		<h3 class="cnts_title">
			<span id="menuTitle"></span>
		</h3>
		<div class="sub_container">
			<!-- lnb -->
			<div class="lnb_wrap">
				<h4>
					<a href="/member/mypage">마이페이지<!-- 마이페이지 --></a>
				</h4>
				<div class="lnb">
					<dl>
						<dt>주문조회</dt>
						<dd>
							<a href="/member/mypage"
								onclick="GA_Event('마이페이지','LNB','주문/배송/반품/취소');">주문/배송/반품/취소</a>
						</dd>
					</dl>
					<dl>
						<dt>혜택관리</dt>
						<dd>
							<a href="/ko/mypage/myGradeInfo"
								onclick="GA_Event('마이페이지','LNB','나의 회원 등급');">나의 회원 등급</a>
						</dd>
						<dd>
							<a href="/ko/mypage/voucher"
								onclick="GA_Event('마이페이지','LNB','나의 쿠폰');">나의 쿠폰<!-- 쿠폰함 --></a>
						</dd>
						<dd>
							<a href="/ko/mypage/mypoint"
								onclick="GA_Event('마이페이지','LNB','나의 한섬마일리지');">나의 한섬마일리지</a>
						</dd>
					</dl>
					<dl>
						<dt>나의 상품관리</dt>
						<dd>
							<a href="/member/wishList"
								onclick="GA_Event('마이페이지','LNB','위시리스트');">위시리스트<!-- 위시리스트 --></a>
						</dd>
					</dl>
					<dl>
						<dt>나의 정보관리</dt>
						<dd>
							<a href="/ko/mypage/personInfomationChangePWCheck"
								onclick="GA_Event('마이페이지','LNB','개인정보 변경/탈퇴');">개인정보 변경/탈퇴</a>
						</dd>
						<dd>
							<a href="/ko/mypage/shoppingAddressPWCheck"
								onclick="GA_Event('마이페이지','LNB','배송지 관리');">배송지 관리</a>
						</dd>
					</dl>
					<dl>
						<dt>나의 활동관리</dt>
						<!-- <dd><a href="#">회원등급</a></dd> -->
						<dd>
							<a href="/ko/mypage/myreview"
								onclick="GA_Event('마이페이지','LNB','내 상품평');">내 상품평</a>
						</dd>
						<dd>
							<a href="/ko/mypage/myqna"
								onclick="GA_Event('마이페이지','LNB','상품 Q&A');">상품 Q&A</a>
						</dd>
						<dd>
							<a href="/ko/mypage/mymantomaninquiry"
								onclick="GA_Event('마이페이지','LNB','1:1 문의');">1:1 문의</a>
						</dd>
						<!-- <dd><a href="#">이벤트 참여현황</a></dd> -->
					</dl>
				</div>
				<!-- ph_guide -->
				<div class="ph_guide">
					<p class="tlt">고객센터 운영 안내</p>
					<p class="phone">
						1800-5700 <span style="color: #c69c6d;" class="txt">(유료)</span>
					</p>
					<p class="txt">
						평일(월~금)<br>am 09:00 ~ pm 18:00<span>토/일, 공휴일 휴무</span>
					</p>
					<a href="mailto:shophelp@thehandsome.com">shophelp<br>@thehandsome.com
					</a>
				</div>
				<!-- //ph_guide -->
			</div>

			<!-- //lnb -->
			<!-- cnts -->
			<div class="sub_cnts">
				<!-- search1 -->
				<form id="orderSearchForm" action="/ko/mypage/order/myorderlist">
					<div class="search_wrap">
						<!-- cnd -->
						<ul>
							<li>
								<p class="bul_sty01">
									<label for="term">조회기간<!-- 조회기간 --></label>
								</p>
								<div class="calendar_wrap mr5">
									<input type="text" name="sterm" class="input_date"
										title="mypage.order.history.serch.term.insert" id="sterm"
										readonly />
									<!-- <a href="#" class="ico_cld">날짜 선택 버튼</a> -->
									<div class="form_hyphen pl5">-</div>
									<input type="text" name="eterm" class="input_date"
										title="mypage.order.history.serch.term.insert" id="eterm"
										readonly />
									<!-- <a href="#" class="ico_cld">날짜 선택 버튼</a> -->
								</div>
								<div class="tab_c">
									<ul class="clearfix">
										<li><a href="javascript:void(0);" id="setDateBtn1">1주일<!-- 1주일 --></a></li>
										<li><a href="javascript:void(0);" id="setDateBtn2">1개월<!-- 1개월 --></a></li>
										<li><a href="javascript:void(0);" id="setDateBtn3">3개월<!-- 3개월 --></a></li>
									</ul>
								</div>
							</li>
							<li class="space">
								<p class="bul_sty01">
									<label for="id_sel">검색구분<!-- 검색구분 --></label>
								</p> <select name="searchType" title="검색구분" class="select">
									<option value="productName">상품명
										<!-- 상품명 --></option>
									<option value="orderNumber">주문번호
										<!-- 주문번호 --></option>
							</select> <input type="text" name="searchWord" class="input_all"
								title="검색어 입력" /> <!-- 검색어 입력 -->
							</li>
						</ul>
						<!-- //cnd -->
						<input type="button" id="searchBtn" class="btn_search"
							value="조회하기">
						<!-- 조회하기 -->
					</div>
				</form>
				<!-- //search1 -->

				<div class="title_wrap mt50">
					<h4>상품 주문 목록<!-- 상품 주문목록 --></h4>
				</div>
				<!-- table -->
				<div class="tblwrap lncl1812">
					<!-- 클래스추가 181204 -->
					<table class="tbl_ltype review_betterment1905">
						<caption>상품 주문 목록</caption>
						<colgroup class="interval1812">
							<!-- 수정 181204 -->
							<col style="width: 120px">
							<col>
							<col style="width: 43px">
							<col style="width: 112px">
							<col style="width: 89px">
							<col style="width: 111px">
						</colgroup>
						<thead>
							<tr>
								<th scope="col">주문번호<!-- 주문번호 --></th>
								<th scope="col">상품정보<!-- 상품정보 --></th>
								<th scope="col" style="padding: 15px 0">수량<!-- 수량 --></th>
								<!-- 스타일추가 181204 -->
								<th scope="col">판매가<!-- 판매가 --></th>
								<th scope="col">주문상태<!-- 주문상태 --></th>
								<th scope="col">구분<!-- 구분 --></th>
							</tr>
						</thead>
						<tbody id="listBody">
						<c:choose>
						<c:when test="${ouvl eq null }">
							<tr>
								<td colspan="6" class="no_data">주문내역이 없습니다.<!-- 주문내역이 없습니다. --></td>
							</tr>
							</c:when>
							<c:otherwise>
							<c:forEach items="${ ouvl}" var="ouv">
							<tr class="al_middle">
								<td rowspan="2" class="frt">
								<p class="num">${ouv.oid }</p>
								<span class="sum_date">
								${ouv.odate }
								</span>
								</td>
								<c:forEach items="${ ouv.orders}" var="order" varStatus="st">
								<tr class="al_middle">
								<td>
								<div class="pt_list_all">
								<img src="${order.thumbnail.c_thumbnail1 }"> 
								<div class="tlt_wrap">
								<span class="tlt">
								${order.productVO.bname }
								</span>
								<br/>  
								<span class="sb_tlt">
								${order.productVO.pname }
								</span>
								<p class="color_op">
								color : ${order.thumbnail.cname }
								<span class="and_line">
								/</span>  
								size : ${order.ssize }
								</p>
								</div>
								</div>
								</td>
								<td>${order.oamount }</td>
								<td class="totalprice">${order.totalprice }
								<input type="hidden" class="totalprice" value="${order.totalprice }">
								</td>
								<td>배송중</td>
								<td></td>
								</tr>
								</c:forEach> 
								 </tr>                                                                                                                                                                                                                                                                                     						
						</c:forEach>
						</c:otherwise>
						</c:choose>
						</tbody>
					</table>
				</div>
				<!-- //table -->
				<!-- paging -->
				<div class="paging"></div>
				<!-- //paging -->

				<!-- Guide Table -->
				<div class="gd_wrap mt70">
					<dl class="gd_list com pl0">
						<dt>
							주문 배송 조회 안내
							<!-- 주문 배송 조회 안내 -->
						</dt>
						<dd>
							<ul class="bul_sty01_li">
								<li>한섬마일리지는 배송 완료 후 10일 후 지급 됩니다.<!-- 한섬마일리지는 배송 완료 후 10일 후 지급 됩니다. --></li>
								<li>반품신청은 배송완료 후 7일까지 가능 합니다.<!-- 반품신청은 배송완료 후 7일까지 가능 합니다. --></li>
								<li>배송준비중 상태에서는 주문의 취소/변경이나 주소의 변경이 불가능 합니다.<!-- 배송준비중 상태에서는 주문의 취소/변경이나 주소의 변경이 불가능 합니다. --></li>
								<li>주문 시 사용한 기프트 카드, 한섬마일리지는 모두 동일 수단으로 환불됩니다.<!-- 주문 시 사용한 기프트 카드 , 한섬마일리지는 모두 동일 수단으로 환불됩니다. --></li>
								<li>한섬마일리지는 정상 매장 기준 5%, 아울렛 1% 적립됩니다. (세일상품 제외)<!-- 한섬마일리지는 정상 매장 기준 5%, 아울렛 1% 적립됩니다. (세일상품 제외) --></li>
								<li>10%를 초과하여 할인하는 상품은 마일리지 적립 대상에서 제외됩니다.<!-- 10%를 초과하여 할인하는 상품은 마일리지 적립 대상에서 제외됩니다. --></li>
								<li>주문완료 상태까지는 배송지 수정이 가능 합니다.<!-- 주문완료 상태까지는 배송지 수정이 가능 합니다. --></li>
								<li>가상계좌 결제 시 입금대기 상태에서 4시간 내 입금하지 않으면 자동으로 주문이 취소 됩니다.<!-- 가상계좌 결제 시 입금대기 상태에서 24시간 내 입금하지 않으면 자동으로 주문이 취소 됩니다. --></li>
								<li>상세보기 화면에서 증빙서류의 출력이 가능 합니다.<!-- 상세보기 화면에서 증빙서류의 출력이 가능 합니다. --></li>
							</ul>
						</dd>
					</dl>
				</div>
				<div class="gd_wrap">
					<div class="delivery_step">
						<p class="title">
							주문/배송프로세스
							<!-- 주문 / 배송 프로세스 -->
						</p>
						<ol>
							<li>
								<p class="step">
									<span>STEP 1</span> 1. 입금대기중
									<!-- 입금 대기중 -->
								</p>
								<p class="txt">
									가상계좌를 선택 하셨다면 결제를 완료해 주세요.
									<!-- 가상계좌를 선택 하셨다면<br>결제를 완료해 주세요. -->
								</p>
							</li>
							<li>
								<p class="step">
									<span>STEP 2</span> 2. 주문완료
									<!-- 주문완료 -->
								</p>
								<p class="txt">
									주문정보를 확인하고 있습니다.
									<!-- 주문정보를 확인 하고<br>있습니다. -->
								</p>
							</li>
							<li>
								<p class="step">
									<span>STEP 3</span> 3. 배송준비중
									<!-- 배송 준비중 -->
								</p>
								<p class="txt">
									상품의 배송을 준비하고 있습니다.
									<!-- 상품의 배송을 준비하고<br>있습니다. -->
								</p>
							</li>
							<li>
								<p class="step">
									<span>STEP 4</span> 4. 배송중
									<!-- 배송중 -->
								</p>
								<p class="txt">
									물품이 발송되어 고객님께 배송 중 입니다.
									<!-- 물품이 발송되어 고객님께<br>배송 중 입니다. -->
								</p>
							</li>
							<li>
								<p class="step">
									<span>STEP 5</span> 5. 배송완료
									<!-- 배송완료 -->
								</p>
								<p class="txt">
									배송이 완료 되었습니다.
									<!-- 배송이 완료 되었습니다.-->
								</p>
							</li>
						</ol>
					</div>
				</div>
				<!-- //Guide Table -->
			</div>
			<!-- //cnts -->
		</div>
	</div>
</body>
<script>
$('.totalprice').text("₩"+$("input[class='totalprice']").val().replace(/\B(?=(\d{3})+(?!\d))/g, ','));
</script>
<%@include file="/WEB-INF/views/common/footer.jspf"%>