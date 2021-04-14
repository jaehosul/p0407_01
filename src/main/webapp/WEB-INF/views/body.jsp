<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>베리굿웨딩</title>

<link rel="stylesheet" href="/css/reset.css" type="text/css">
<link rel="stylesheet" href="/css/main.css?ver=1" type="text/css">
<link rel="stylesheet" href="/css/sub.css?ver=1" type="text/css">
<link rel="stylesheet" href="/css/sub_detail.css?ver=1" type="text/css">
<link rel="stylesheet" href="../fonts/NanumBarunGothic.css?ver=1" type="text/css">
<link rel="stylesheet" type="text/css" href="/css/jquery-ui-1.10.4.custom.css">

<script type="text/javascript" src="/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="/js/document.on.js"></script>
<script type="text/javascript" src="/js/prog.js"></script>
<script language="javascript" src="/js/jquery-ui-1.10.4.custom.js"></script>
<script type="text/javascript" src="http://code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
</head>

<body>
<div class="wrap">
	<!--top 상단 해더 시작-->
     <div class="main_top_wrap"> 
     	<div class="main_topbx_01">
          	<div class="main_favor">
               	<div class="main_favor_inbx02">
					<span><img src="/images/m_star.jpg" alt="즐겨찾기" title="즐겨찾기" id="favorite" style="cursor:pointer;"></span>
                    <span><a href="https://www.instagram.com/verygoodwedding" target="_blank();"><img src="/images/m_instar.jpg"></a></span><a href="https://www.instagram.com/verygoodwedding" target="_blank();">
                    <span></span></a><a href="https://www.facebook.com/vgoodwed" target="_blank();"><img src="/images/m_facebook.jpg"></a>
                    <span><img src="/images/m_blog.jpg"></span>
                </div>
                <div class="main_favor_inbx">
                    <span><a href="javascript:login();">로그인</a></span>
						<span>|</span>
						<span><a href="/membership/member.asp">회원가입</a></span>
					
				</div>
			</div>
          </div>
          <div class="main_topbx_02">
          	<div class="main_menu_wrap">
               	<div class="main_logobx"><p><a href="/"><img src="../images/main_logo.png" class="main_logoimg"></a></p></div>
                    <div class="main_title_menu">
						<a href="/about/greeting.asp"><span id="up_menu" data="01" name="up_menu_">베리굿웨딩</span></a>
                        <a href="/hall/hall_search.asp"><span id="up_menu" data="02" name="up_menu_">웨딩홀</span></a>
                        <a href="/gallary/gallary_list.asp"><span id="up_menu" data="03" name="up_menu_">웨딩컬렉션</span></a>
                        <a href="/event/event_list.asp"><span id="up_menu" data="04" name="up_menu_">이벤트</span></a>
                        <a href="/counselling/consult.asp"><span id="up_menu" data="05" name="up_menu_">웨딩비용계산기</span></a>
                        <a href="/community/board_list.asp"><span id="up_menu" data="06" class="M_ttl_menu">커뮤니티</span></a>
                    </div>
               </div>
          </div>
          <div class="main_topbx_03" style="display: block;">
          	<div class="main_subinbx">
               	<div class="main_sub_menu">
               		<div class="m_allmenu" style="background-color: rgb(255, 255, 255);">
                         	<p class="m_all_linebx"><img src="../images/block_line.png" alt="라인" class="m_all_line"></p>
                              <a><span id="all_menu" data="0">전체메뉴</span></a>
                         </div>
                         <div class="m_weddinghall">
                         	<a href="/about/info.asp"><span>웨딩서비스</span></a>
                         </div>
                         <div class="m_sdm">
                         	<a href="/gallary/gallary_list.asp?data=72"><!--<span class="M_Sub_ttl">//--><span>스튜디오</span></a>
                            <a href="/gallary/gallary_index.asp?data=71"><span>드레스</span></a>
                            <a href="/gallary/gallary_index.asp?data=73"><span>헤어메이크업</span></a>
                            <a href="/gallary/gallary_list.asp?data=72&amp;data2=76"><span>본식사진</span></a>
                         </div>
                         <div class="m_honsu">
                         	<a href="/gallary/gallary_dvd_list.asp?data=100,402"><span>DVD</span></a>
							<a href="/gallary/gallary_etc_list.asp?data=98"><span>예복</span></a>							
							<a href="/gallary/gallary_etc_list.asp?data=91,147"><span>예물</span></a>
                            <a href="/gallary/gallary_etc_list.asp?data=92"><span>한복</span></a>
                            <a href="/gallary/gallary_etc_list.asp?data=93"><span>허니문</span></a>
                         </div>
                         <div class="m_honey">
                         	<a href="/gallary/gallary_etc_list.asp?data=101,102,157"><span>혼수</span></a>
                         </div>
                         <div class="m_after">
                         	<a href="/community/after_list.asp"><span>웨딩후기</span></a>
                         </div>
               	</div>
               </div>
          </div>
          <!--전체메뉴링크영역 시작-->
          <div id="all_menu_layer" class="all_menu_wrap" style="background-color:#e8ecf3; margin-top:-1px; display:none;">
          	<div class="all_menu_inbx" style="background-color:#e8ecf3;">
                    <div class="all_01">
                         <div class="all_title_bx" style="background-color:#CCC;"><a href="/about/greeting.asp">베리굿웨딩</a></div>
                         <ul class="all_ul_bx">
                              <li><a href="/about/greeting.asp">•왜 베리굿웨딩일까요</a></li>
                             <li><a href="/about/info.asp">•웨딩서비스</a></li>
                             <li><a href="/about/planner.asp">•웨딩플래너</a></li>
                             <li><a href="/about/map.asp">•찾아오시는길</a></li>
                             <li><a href="/about/recruit.asp">•채용안내</a></li>
                                   <li><a href="/about/partnership.asp">•제휴안내</a></li>
                         </ul>
                    </div>
                    <div class="all_02">
                         <div class="all_title_bx" style="background-color:#CCC;"><a href="/hall/hall_search.asp">웨딩홀</a></div>
                         <ul class="all_ul_bx">
                              <li><a href="/hall/hall_search.asp">•웨딩홀 찾기</a></li>
                             <li><a href="/hall/hall_event.asp">•웨딩홀 이벤트</a></li>
                             <li><a href="/hall/hall_qa.asp">•웨딩홀 문의</a></li>
                         </ul>
                    </div>
                    <div class="all_03" style="width:290px;">
                         <div class="all_title_bx" style="background-color:#CCC;"><a href="/gallary/gallary_list.asp?data=72">웨딩컬렉션</a></div>
                         <ul class="all_ul_bx01">
                              <li><a href="/gallary/gallary_list.asp?data=72">•스튜디오</a></li>
                             <li><a href="/gallary/gallary_index.asp?data=71">•드레스</a></li>
                             <li><a href="/gallary/gallary_index.asp?data=73">•헤어메이크업</a></li>
                             <li><a href="/gallary/gallary_list.asp?data=72&amp;data2=76">•본식사진</a></li>
							 <li><a href="/gallary/gallary_dvd_list.asp?data=100,402">•DVD/영상</a></li>
                             <li><a href="/gallary/gallary_etc_list.asp?data=97,214">•폐백/이바지</a></li>                             
                             <li><a href="/gallary/gallary_etc_list.asp?data=94,95,96">•주례/사회/축가</a></li>
                             <li><a href="/gallary/gallary_etc_list.asp?data=74">•부케</a></li>
                         </ul>
                         <ul class="all_ul_bx02">
                             <li><a href="/gallary/gallary_etc_list.asp?data=93">•신혼여행</a></li>
                             <li><a href="/gallary/gallary_etc_list.asp?data=92">•한복</a></li>
                             <li><a href="/gallary/gallary_etc_list.asp?data=91,147">•예물</a></li>
						     <li><a href="/gallary/gallary_etc_list.asp?data=98">•예복</a></li>
						     <li><a href="/gallary/gallary_etc_list.asp?data=101,102,157">•혼수/가구/가전</a></li>
						     <li><a href="/gallary/gallary_etc_list.asp?data=112,114,149,354,141,142">•청첩장/웨딩카</a></li>
						     <li><a href="/gallary/gallary_etc_list.asp?data=158,203">•답례품</a></li>
                         </ul>
                    </div>
                    <div class="all_04_05_wrap">
                         <div class="all_04">
                         <div class="all_title_bx" style="background-color:#CCC;"><a href="/counselling/consult.asp">웨딩비용계산기</a></div>
                              <ul class="all_ul_bx">
                                   <li><a href="/counselling/consult.asp">•스드메 비용 계산기</a></li>
                                   <li><a href="/counselling/consult.asp?code=2">•웨딩홀 간편 견적</a></li>
                                   <li><a href="/counselling/consult.asp?code=3">•허니문 간편 견적</a></li>
                              </ul>
                         </div>
                         <div class="all_05">
                         <div class="all_title_bx" style="background-color:#CCC;"><a href="/event/event_list.asp">이벤트</a></div>
                              <ul class="all_ul_bx">
                                   <li><a href="/event/event_list.asp">•이벤트</a></li>
                                   <li><a href="/event/special.asp">•웨딩 프로모션</a></li>
								   <li><a href="/honeymoon/honey_sub.asp">•허니문 프로모션</a></li>
                              </ul>
                         </div>
                    </div>
                    <div class="all_06_07_wrap">
                         <div class="all_06">
                         <div class="all_title_bx" style="background-color:#CCC;"><a href="/community/board_list.asp">커뮤니티</a></div>
                              <ul class="all_ul_bx">
                                   <li><a href="/community/notice_list.asp">•공지사항</a></li>
                                   <li><a href="/community/board_list.asp">•문의게시판</a></li>
                                   <li><a href="/community/after_list.asp">•웨딩후기</a></li>
                              </ul>
                         </div>
                         <div class="all_07">
                         <div class="all_title_bx" style="background-color:#CCC;"><a href="/honeymoon/honey_sub.asp">허니문</a></div>
                              <ul class="all_ul_bx">
                                   <li><a href="/honeymoon/honey_sub.asp">•리조트정보</a></li>
                                   <li><a href="/honeymoon/list_worldTime.asp">•세계의시차</a></li>
                              </ul>
                         </div>
                    
                    </div>
                    <div class="all_close_wrap">
                         <p><img src="/images/all_close.png" id="all_menu_close"></p>
                    </div>
               </div>
               
          </div>
          <!--//전체메뉴링크영역 끝-->
     </div> 
     <div style="overflow:hidden; height:166px;"> &nbsp; </div>
     
     	<!--오버시 메뉴 시작-->
          <div class="main_submenu_wrap" style="display: none; top: 166px;" name="main_submenu_wrap_">					
					
                    <div class="main_submenu_inbx">
                         <!-- ========== 첫번째 ========== -->
                         <div class="main_submenu_part01" style="display:none;" name="main_submenu_part">
                              <div class="MSub_bx_01">
                                   <div class="MSub_text_wrap">
                                        <span class="MSub_ttx01">베리굿웨딩이 만든 웨딩컨설팅</span>
                                        <div class="MSub_ttx02">
                                             <span style="color:#75c0f0;">VERY</span><br>
                                             <span style="color:#75a9f0;">GOOD</span>
                                        </div>
                                   </div>
                                   <p><a href="/about/greeting.asp"><img src="../images/gogo.jpg"></a></p>
                              </div>
                              <div class="MSub_bx_02">
                                   <ul>
                                        <li><a href="/about/greeting.asp" id="lay_sub_css" class="lay_sub_css_" style="font-size:16px;">왜 베리굿웨딩일까요</a></li>
                                        <li><a href="/about/info.asp" id="lay_sub_css" class="lay_sub_css_" style="font-size:16px;">웨딩서비스</a></li>
                                        <li><a href="/about/planner.asp" id="lay_sub_css" class="lay_sub_css_" style="font-size:16px;">웨딩플래너</a></li>
										<li><a href="/about/map.asp" id="lay_sub_css" class="lay_sub_css_" style="font-size:16px;">찾아오시는길</a></li>
                                        <li><a href="/about/recruit.asp" id="lay_sub_css" class="lay_sub_css_" style="font-size:16px;">채용안내</a></li>
										<li><a href="/about/partnership.asp" id="lay_sub_css" class="lay_sub_css_" style="font-size:16px;">제휴안내</a></li>
                                   </ul>
                              </div>
                              <div class="MSub_bx_03">
                                   <p><img src="http://vgood.co.kr/admin/contentsImg/homepage/201803/planning(0).jpg"></p>
                              </div>
                              <div class="MSub_bx_04">
                                   <div class="MSub_bx_04_inbx">
                                        <p><a href="/counselling/consult.asp"><img src="../images/MSub_intro_rightpic_01.jpg"></a></p>
                                        <p><a href="/counselling/consult.asp?code=2"><img src="../images/MSub_intro_rightpic_02.jpg"></a></p>
                                        <p><a href="/counselling/consult.asp?code=3"><img src="../images/MSub_intro_rightpic_03.jpg"></a></p>
                                   </div>
                              </div>
                         </div>
                         <!--// ========== 첫번째끝 ========== -->
                         <!-- ========== 두번째 ========== -->
                         <div class="main_submenu_part02" style="display:none;" name="main_submenu_part">
                              <div class="MSub_bx_01">
                                   <div class="MSub_text_wrap">
                                        <span class="MSub_ttx01">가장 인기있는 웨딩홀은 어디?</span>
                                        <div class="MSub_ttx02">
                                             <span style="color:#75c0f0;">WEDDING</span><br>
                                             <span style="color:#75a9f0;">HALL</span>
                                        </div>
                                   </div>
                                   <p><a href="/hall/hall_search.asp"><img src="../images/gogo.jpg"></a></p>
                              </div>
                              <div class="MSub_bx_02">
                                   <ul>
                                        <li><a href="/hall/hall_search.asp" id="lay_sub_css" class="lay_sub_css_" style="font-size:16px;">웨딩홀 검색</a></li>
                                        <li><a href="/hall/hall_event.asp" id="lay_sub_css" class="lay_sub_css_" style="font-size:16px;">웨딩홀 이벤트</a></li>
                                        <li><a href="/hall/hall_qa.asp" id="lay_sub_css" class="lay_sub_css_" style="font-size:16px;">웨딩홀 문의</a></li>                                        
                                   </ul>
                              </div>
                              <div class="MSub_bx_03">
                                   <p><img src="http://vgood.co.kr/admin/contentsImg/homepage/201803/venues(1).jpg"></p>
                              </div>
                              <div class="MSub_bx_04">
                                   <div class="MSub_bx_04_inbx">
                                        <p><a href="/counselling/consult.asp"><img src="../images/MSub_intro_rightpic_01.jpg"></a></p>
                                        <p><a href="/counselling/consult.asp?code=2"><img src="../images/MSub_intro_rightpic_02.jpg"></a></p>
                                        <p><a href="/counselling/consult.asp?code=3"><img src="../images/MSub_intro_rightpic_03.jpg"></a></p>
                                   </div>
                              </div>
                         </div>
                         <!--// ========== 두번째끝 ========== -->
                         <!-- ========== 세번째 ========== -->
                         <div class="main_submenu_part03" style="display:none;" name="main_submenu_part">
                              <div class="MSub_bx_01">
                                   <div class="MSub_text_wrap">
                                        <span class="MSub_ttx01">인기 웨딩브랜드를 한자리에</span>
                                        <div class="MSub_ttx02">
                                             <span style="color:#75c0f0;">WEDDING</span><br>
                                             <span style="color:#75a9f0;">COLLECTION</span>
                                        </div>
                                   </div>
                                   <p><a href="/gallary/gallary_list.asp"><img src="../images/gogo.jpg"></a></p>
                              </div>
                              <div class="MSub_bx_02">
                                   <ul>
                                   	<div class="MSub_bx_02_div01">
                                        	<li style="width:115px;"><a href="/gallary/gallary_list.asp?data=72" id="lay_sub_css" class="lay_sub_css_" style="font-size:16px;">스튜디오</a></li>
                                             <li style="width:115px;"><a href="/gallary/gallary_index.asp?data=71" id="lay_sub_css" class="lay_sub_css_" style="font-size:16px;">드레스</a></li>
                                             <li style="width:115px;"><a href="/gallary/gallary_index.asp?data=73" id="lay_sub_css" class="lay_sub_css_" style="font-size:16px;">헤어메이크업</a></li>
                                             <li style="width:115px;"><a href="/gallary/gallary_list.asp?data=72&amp;data2=76" id="lay_sub_css" class="lay_sub_css_" style="font-size:16px;">본식사진</a></li>
											 <li style="width:115px;"><a href="/gallary/gallary_dvd_list.asp?data=100,402" id="lay_sub_css" class="lay_sub_css_" style="font-size:16px;">DVD/영상</a></li>
                                             <li style="width:115px;"><a href="/gallary/gallary_etc_list.asp?data=97,214" id="lay_sub_css" class="lay_sub_css_" style="font-size:16px;">폐백/이바지</a></li>                                             
                                        </div>
                                        <div class="MSub_bx_02_div02">
                                        	<li style="width:115px;"><a href="/gallary/gallary_etc_list.asp?data=93" id="lay_sub_css" class="lay_sub_css_" style="font-size:16px;">신혼여행</a></li>
                                             <li style="width:115px;"><a href="/gallary/gallary_etc_list.asp?data=91,147" id="lay_sub_css" class="lay_sub_css_" style="font-size:16px;">예물</a></li>
                                             <li style="width:115px;"><a href="/gallary/gallary_etc_list.asp?data=92" id="lay_sub_css" class="lay_sub_css_" style="font-size:16px;">한복</a></li>
                                             <li style="width:115px;"><a href="/gallary/gallary_etc_list.asp?data=98" id="lay_sub_css" class="lay_sub_css_" style="font-size:16px;">예복</a></li>
                                             <li style="width:115px;"><a href="/gallary/gallary_etc_list.asp?data=101,102,157" id="lay_sub_css" class="lay_sub_css_" style="font-size:16px;">혼수/가구/가전</a></li>
											 <li style="width:115px;"><a href="/gallary/gallary_etc_list.asp?data=94,95,96" id="lay_sub_css" class="lay_sub_css_" style="font-size:16px;">주례/사회/축가</a></li>
                                        </div>                                        
                                   </ul>
                              </div>
                              <div class="MSub_bx_03">
                                   <p><img src="http://vgood.co.kr/admin/contentsImg/homepage/201803/vendors(2).jpg"></p>
                              </div>
                              <div class="MSub_bx_04">
                                   <div class="MSub_bx_04_inbx">
                                        <p><a href="/counselling/consult.asp"><img src="../images/MSub_intro_rightpic_01.jpg"></a></p>
                                        <p><a href="/counselling/consult.asp?code=2"><img src="../images/MSub_intro_rightpic_02.jpg"></a></p>
                                        <p><a href="/counselling/consult.asp?code=3"><img src="../images/MSub_intro_rightpic_03.jpg"></a></p>
                                   </div>
                              </div>
                         </div>
                         <!--// ========== 세번째끝 ========== -->
                         <!-- ========== 네번째 ========== -->
                         <div class="main_submenu_part04" style="display:none;" name="main_submenu_part">
                              <div class="MSub_bx_01">
                                   <div class="MSub_text_wrap">
                                        <span class="MSub_ttx01">고품격 브랜드 이벤트</span>
                                        <div class="MSub_ttx02">
                                             <span style="color:#75c0f0;">WEDDING</span><br>
                                             <span style="color:#75a9f0;">EVENT</span>
                                        </div>
                                   </div>
                                   <p><a href="/event/event_list.asp"><img src="../images/gogo.jpg"></a></p>
                              </div>
                              <div class="MSub_bx_02">
                                   <ul>
                                        <li><a href="/event/event_list.asp" id="lay_sub_css" class="lay_sub_css_" style="font-size:16px;">이벤트</a></li>
                                        <li><a href="/event/special.asp" id="lay_sub_css" class="lay_sub_css_" style="font-size:16px;">웨딩 프로모션</a></li>
										<li><a href="/honeymoon/honey_sub.asp" id="lay_sub_css" class="lay_sub_css_" style="font-size:16px;">허니문 프로모션</a></li>
                                   </ul>
                              </div>
                              <div class="MSub_bx_03">
                                   <p><img src="http://vgood.co.kr/admin/contentsImg/homepage/201803/event.jpg"></p>
                              </div>
                              <div class="MSub_bx_04">
                                   <div class="MSub_bx_04_inbx">
                                        <p><a href="/counselling/consult.asp"><img src="../images/MSub_intro_rightpic_01.jpg"></a></p>
                                        <p><a href="/counselling/consult.asp?code=2"><img src="../images/MSub_intro_rightpic_02.jpg"></a></p>
                                        <p><a href="/counselling/consult.asp?code=3"><img src="../images/MSub_intro_rightpic_03.jpg"></a></p>
                                   </div>
                              </div>
                         </div>
                         <!--// ========== 네번째끝 ========== -->
                         <!-- ========== 다섯번째 ========== -->
                         <div class="main_submenu_part05" style="display:none;" name="main_submenu_part">
                              <div class="MSub_bx_01">
                                   <div class="MSub_text_wrap">
                                        <span class="MSub_ttx01">완벽한 결혼 준비를 위한 </span>
                                        <div class="MSub_ttx02">
                                             <span style="color:#75c0f0;">WEDDING</span><br>
                                             <span style="color:#75a9f0;">ESTIMATE</span>
                                        </div>
                                   </div>
                                   <p><a href="/counselling/consult.asp"><img src="../images/gogo.jpg"></a></p>
                              </div>
                              <div class="MSub_bx_02">
                                   <ul>
                                        <li><a href="/counselling/consult.asp" id="lay_sub_css" class="lay_sub_css_" style="font-size:16px;">스드메 비용 계산기</a></li>
                                        <li><a href="/counselling/consult.asp?code=2" id="lay_sub_css" class="lay_sub_css_" style="font-size:16px;">웨딩홀 간편 견적</a></li>
                                        <li><a href="/counselling/consult.asp?code=3" id="lay_sub_css" class="lay_sub_css_" style="font-size:16px;">허니문 간편 견적</a></li>                        
                                   </ul>
                              </div>
                              <div class="MSub_bx_03">
                                   <p><img src="http://vgood.co.kr/admin/contentsImg/homepage/201803/budget(0).jpg"></p>
                              </div>
                              <div class="MSub_bx_04">
                                   <div class="MSub_bx_04_inbx">
                                        <p><a href="/counselling/consult.asp"><img src="../images/MSub_intro_rightpic_01.jpg"></a></p>
                                        <p><a href="/counselling/consult.asp?code=2"><img src="../images/MSub_intro_rightpic_02.jpg"></a></p>
                                        <p><a href="/counselling/consult.asp?code=3"><img src="../images/MSub_intro_rightpic_03.jpg"></a></p>
                                   </div>
                              </div>
                         </div>
                         <!--// ========== 다섯번째끝 ========== -->
                         <!-- ========== 여섯번째 ========== -->
                         <div class="main_submenu_part06" style="display:none;" name="main_submenu_part">
                              <div class="MSub_bx_01">
                                   <div class="MSub_text_wrap">
                                        <span class="MSub_ttx01">웨딩을 공유해요~</span>
                                        <div class="MSub_ttx02">
                                             <span style="color:#75c0f0;">VERYGOOD</span><br>
                                             <span style="color:#75a9f0;">COMMUNITY</span>
                                        </div>
                                   </div>
                                   <p><a href="/community/notice_list.asp"><img src="../images/gogo.jpg"></a></p>
                              </div>
                              <div class="MSub_bx_02">
                                   <ul>
                                        <li><a href="/community/notice_list.asp" id="lay_sub_css" class="lay_sub_css_" style="font-size:16px;">공지사항</a></li>
                                        <li><a href="/community/board_list.asp" id="lay_sub_css" class="lay_sub_css_" style="font-size:16px;">문의게시판</a></li>
                                        <li><a href="/community/after_list.asp" id="lay_sub_css" class="lay_sub_css_" style="font-size:16px;">웨딩후기</a></li>
                                   </ul>
                              </div>
                              <div class="MSub_bx_03">
                                   <p><img src="http://vgood.co.kr/admin/contentsImg/homepage/201803/story(0).jpg"></p>
                              </div>
                              <div class="MSub_bx_04">
                                   <div class="MSub_bx_04_inbx">
                                        <p><a href="/counselling/consult.asp"><img src="../images/MSub_intro_rightpic_01.jpg"></a></p>
                                        <p><a href="/counselling/consult.asp?code=2"><img src="../images/MSub_intro_rightpic_02.jpg"></a></p>
                                        <p><a href="/counselling/consult.asp?code=3"><img src="../images/MSub_intro_rightpic_03.jpg"></a></p>
                                   </div>
                              </div>
                         </div>
                         <!--// ========== 여섯번째끝 ========== -->
                    </div>
               </div>
          <!--//오버시 메뉴 끝-->
	<!--//top  상단 해더 끝-->
<div class="m_bx_wrap">
     
	<script type="text/javascript" src="/js/jssor.slider.min.js"></script>
	<script type="text/javascript">
        jssor_1_slider_init = function() {            
            var jssor_1_SlideshowTransitions = [
              {$Duration:1200,$Opacity:2}
            ];
            
            var jssor_1_options = {
              $AutoPlay: true,
			  $SlideDuration: 800,			 
              $SlideshowOptions: {
                $Class: $JssorSlideshowRunner$,
                $Transitions: jssor_1_SlideshowTransitions,
                $TransitionsOrder: 1
              },			  

              $ArrowNavigatorOptions: {
                $Class: $JssorArrowNavigator$
              },
              $BulletNavigatorOptions: {
                $Class: $JssorBulletNavigator$
              }
            };
            
            var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);            
            
            function ScaleSlider() {
                var refSize = jssor_1_slider.$Elmt.parentNode.clientWidth;
                if (refSize) {
                    refSize = Math.min(refSize, 1920);
                    jssor_1_slider.$ScaleWidth(refSize);
                }
                else {
                    window.setTimeout(ScaleSlider, 30);
                }
            }
            ScaleSlider();
            $Jssor$.$AddEvent(window, "load", ScaleSlider);
            $Jssor$.$AddEvent(window, "resize", ScaleSlider);
            $Jssor$.$AddEvent(window, "orientationchange", ScaleSlider);           
        };
    </script>	
	<style>		
		.jssorb05{position:absolute}.jssorb05 div,.jssorb05 div:hover,.jssorb05 
		
		no-repeat;overflow:hidden;cursor:pointer}.jssorb05 div{background-position:-7px -7px}.jssorb05 div:hover,.jssorb05 .av:hover{background-position:-37px -7px}.jssorb05 .av{background-position:-67px -7px}.jssorb05 .dn,.jssorb05 .dn:hover{background-position:-97px -7px}.jssora22l,.jssora22r{display:block;position:absolute;width:40px;height:58px;cursor:pointer;background:url('/images/a22.png') center center no-repeat;overflow:hidden}.jssora22l{background-position:-10px -31px}.jssora22r{background-position:-70px -31px}.jssora22l:hover{background-position:-130px -31px}.jssora22r:hover{background-position:-190px -31px}.jssora22l.jssora22ldn{background-position:-250px -31px}.jssora22r.jssora22rdn{background-position:-310px -31px}
	</style>
	<div id="jssor_1" style="position: relative; margin: 0px auto; top: 0px; left: 0px; width: 1280px; height: 218.88px; overflow: hidden; visibility: visible;" jssor-slider="true">			
		
				
		
		
	<div style="position: absolute; top: 0px; left: 0px; width: 2000px; height: 342px; transform-origin: 0px 0px; transform: scale(0.64);"><div class="" style="position: relative; margin: 0px auto; top: 0px; left: 0px; width: 2000px; height: 342px; overflow: visible; visibility: visible; display: block;"><div class="imgs" data-u="slides" style="cursor: default; position: absolute; top: 0px; left: 0px; width: 2000px; height: 342px; overflow: hidden; z-index: 0;"><div style="position: absolute; z-index: 0; pointer-events: none;"></div></div><div class="imgs" data-u="slides" style="cursor: default; position: absolute; top: 0px; left: 0px; width: 2000px; height: 342px; overflow: hidden; z-index: 0;"><div style="top: 0px; left: 0px; width: 2000px; height: 342px; position: absolute; background-color: rgb(0, 0, 0); opacity: 0; display: none;"></div>
		<div class="sub_link_menu_wrap" style="top: 0px; left: 0px; width: 2000px; height: 342px; position: absolute; overflow: hidden;"><img class="bg_img" data-u="image" src="http://vgood.co.kr/admin/contentsImg/homepage/201803/story.jpg" border="0" style="top: 0px; left: 0px; width: 2000px; height: 342px; position: absolute;"><div style="top: 0px; left: 0px; width: 2000px; height: 342px; z-index: 1000; display: none;"></div></div>			
		</div><div data-u="navigator" class="jssorb05" style="bottom: 16px; right: 6px; width: 16px; height: 16px; left: 992px;" data-autocenter="1">			
			
		<div data-u="prototype" style="width: 16px; height: 16px; position: absolute; left: 0px; top: 0px;" class="av"></div></div><span data-u="arrowleft" class="jssora22l" style="top: 142px; left: 12px; width: 40px; height: 58px; display: none;" data-autocenter="2"></span><span data-u="arrowright" class="jssora22r" style="top: 142px; right: 12px; width: 40px; height: 58px; display: none;" data-autocenter="2"></span></div></div></div>
	<script>
		jssor_1_slider_init();
	</script>

<div class="sub_link_box">
	<div class="sub_link_menu">
		<span id="sub_Color_f"><a href="/community/notice_list.asp">공지사항</a></span>
        <span id="sub_Color_f"><a href="/community/board_list.asp">문의게시판</a></span>
		<span id="sub_Color_f" class="sub_under_bar"><a href="/community/after_list.asp">웨딩후기</a></span>
    </div>
</div>
<div id="contain02">
	<div id="contain02_text">
		<span class="title_name">웨딩후기</span>
        <span class="title_detail">결혼 준비의 새로운 기준 베리굿웨딩과 함께 하세요!</span>
    </div>
</div>

<script language="javascript">
$(document).ready(function() {
	$('#regist_btn').click(function() {
		if ('')
		{
			top.location.href="after_flag.asp";
		}else {
			top.location.href="/membership/log_in.asp?url=/community/after_flag.asp";
		}
	});

	$('#edit_btn').click(function() {
		data = $(this).attr("data");
		data2 = $(this).attr("data2");
		data3 = $(this).attr("data3");
		data4 = $(this).attr("data4");
		if ('')
		{
			if ('' != data4)
			{
				alert("본인글만 수정하실 수 있습니다!");				
			}else {
				top.location.href="after_flag.asp?idx="+data+"&mode=edit&"+data3;
			}
		}else {
			top.location.href="/membership/log_in.asp?url=/community/after_view.asp?idx="+data+"&"+data2;
		}
	});

	$('#del_btn').click(function() {
		data = $(this).attr("data");
		data2 = $(this).attr("data2");
		data3 = $(this).attr("data3");
		data4 = $(this).attr("data4");
		if ('')
		{
			if ('' != data4)
			{
				alert("본인글만 삭제하실 수 있습니다!");				
			}else {
				if (confirm("삭제하시겠습니까?"))
				{
					top.location.href="after_delete_access.asp?idx="+data+"&"+data3;
				}
			}
		}else {
			top.location.href="/membership/log_in.asp?url=/community/after_view.asp?idx="+data+"&"+data2;
		}
	});	
});
</script>
<div id="community_after_detail_wrap">
	<div id="after_detail_title">
		<span class="after_detail_title_txt">[웨딩화보] 모니카블랑쉬</span>
    </div>
    <div id="after_detail_date">
		<span id="after_detail_date_day" style="font-size:13px;color:#000000;">• 작성자</span>
        <span class="after_detail_date_day" style="font-size:13px;">이주영</span>
        <span id="after_detail_date_day" style="font-size:13px;color:#000000;">• 작성일</span>
        <span class="after_detail_date_day" style="font-size:13px;">2021-04-14 오전 10:39:57</span>
        <span id="after_detail_date_day" style="font-size:13px;color:#000000;">• 조회수</span>
        <span class="after_detail_date_day" style="font-size:13px;">10</span>
    </div>
    <div id="after_detail_img" style="font-size:14px;">        	
		<p><br></p><p><br></p><p style="text-align: center;">[웨딩화보] 모니카블랑쉬</p><p style="text-align: center;"><br></p><p style="text-align: center;"><br></p><p style="text-align: center;">안녕하세요~ 베리굿웨딩 이주영플래너입니다.&nbsp;</p><p style="text-align: center;"><span style="font-size: 10pt;">오늘은 </span><span style="font-size: 10pt;">비즈가 돋보이는 드레스샵&nbsp;</span><span style="font-size: 10pt;">모니카블랑쉬의 신상화보를 소개해 드릴게요</span></p><p style="text-align: center;"><br></p><p style="text-align: center;"><br></p><p style="text-align: center;"><br></p><p style="text-align: center;"><img src="http://verygoodwedding.co.kr/files/202104/KakaoTalk_20210413_195956373_02(0).jpg" class="txc-image" style="clear:none;float:none;"></p><p><br></p><p style="text-align: center;"><img src="http://verygoodwedding.co.kr/files/202104/KakaoTalk_20210413_195956373_03.jpg" class="txc-image" style="clear:none;float:none;"></p><p style="text-align: center;"><br></p><p style="text-align: center;">퍼프장식과 입체모티브로 더욱 로맨틱한&nbsp;</p><p style="text-align: center;">모니카블랑쉬 신상드레스&nbsp;</p><p style="text-align: center;"><br></p><p style="text-align: center;"><br></p><p style="text-align: center;"><br></p><p style="text-align: center;"><img src="http://verygoodwedding.co.kr/files/202104/KakaoTalk_20210413_195956373_05.jpg" class="txc-image" style="clear:none;float:none;"></p><p><br></p><p style="text-align: center;"><img src="http://verygoodwedding.co.kr/files/202104/KakaoTalk_20210413_195956373_09.jpg" class="txc-image" style="clear:none;float:none;"></p><p><br></p><p style="text-align: center;">화려한 클래식함 뿐 아니라&nbsp;</p><p style="text-align: center;">실크의 고급스러움과 우아함까지 담긴</p><p style="text-align: center;">이번 모니카블랑쉬 신상화보에요!&nbsp;</p><p style="text-align: center;"><br></p><p style="text-align: center;"><br></p><p style="text-align: center;"><img src="http://verygoodwedding.co.kr/files/202104/KakaoTalk_20210413_195956373_14.jpg" class="txc-image" style="clear:none;float:none;"></p><p><br></p><p style="text-align: center;"><img src="http://verygoodwedding.co.kr/files/202104/KakaoTalk_20210413_195956373_17.jpg" class="txc-image" style="clear:none;float:none;"></p><p><br></p><p style="text-align: center;"><img src="http://verygoodwedding.co.kr/files/202104/KakaoTalk_20210413_195956373_01.jpg" class="txc-image" style="clear:none;float:none;"></p><p><br></p><p style="text-align: center;"><img src="http://verygoodwedding.co.kr/files/202104/KakaoTalk_20210413_195956373_21.jpg" class="txc-image" style="clear:none;float:none;"></p><p><br></p><p style="text-align: center;"><img src="http://verygoodwedding.co.kr/files/202104/KakaoTalk_20210413_195956373_25.jpg" class="txc-image" style="clear:none;float:none;"></p><p><br></p><p style="text-align: center;"><img src="http://verygoodwedding.co.kr/files/202104/KakaoTalk_20210413_195956373_28.jpg" class="txc-image" style="clear:none;float:none;"></p><p style="text-align: center;"><br></p><p style="text-align: center;">다양한 매력의 모니카블랑쉬의 신상화보를 소개해드렸어요~&nbsp;</p><p style="text-align: center;"><br></p><p style="text-align: center;">비즈감의 화려한 드레스를 애정하는 신부님들께서는</p><p style="text-align: center;">드레스투어리스트에&nbsp; 추천드립니다!!&nbsp;</p><p style="text-align: center;"><br></p><p style="text-align: center;"><br></p><p style="text-align: center;">-베리굿웨딩 이주영플래너-</p><p style="text-align: center;"><br></p><p><br></p>
    </div>
	
    <div id="after_detail_lotation">
		<div id="after_lotation_left">
			<div class="after_lotation_left01"><a><img src="../images/up.jpg" alt="up">이전글</a></div>
            <div class="after_lotation_left02">
				
					<a href="after_view.asp?idx=18894&amp;pageNo=1&amp;search=&amp;keyword=">[가봉스냅] 이경호포토그라피 + 셀레브 + 정남웨딩</a> 
				
			</div>
        </div>
        <div id="after_lotation_right">
			<div class="after_lotation_right01"><a><img src="../images/down.jpg" alt="down">다음글</a></div>
            <div class="after_lotation_right02">
				<a>다음글이 없습니다.</a>
				</div>
            </div>
        </div>     
		<div id="after_return">
			<span class="after_return_txt_list"><a href="after_list.asp?pageNo=1&amp;search=&amp;keyword=">목록으로</a></span>
			<span class="after_return_txt_edit"><a id="edit_btn" style="cursor:pointer;" data="18895" data2="pageNo=1&amp;search=&amp;keyword=" data3="pageNo=1&amp;search=&amp;keyword=" data4="이주영">수정</a></span>
			<span class="after_return_txt_del"><a id="del_btn" style="cursor:pointer;" data="18895" data2="pageNo=1&amp;search=&amp;keyword=" data3="pageNo=1&amp;search=&amp;keyword=" data4="이주영">삭제</a></span>
			<span class="after_return_txt_write"><a id="regist_btn" style="cursor:pointer;">글쓰기</a></span>
		</div>
		<div style="height:70px;">
			             		
		</div>
	</div>
</div>

<div id="footer_wrap2">
	<div class="ft_wrap cf">
		<div class="ft_link cf">
			<ul>
				<li><a href="/about/greeting.asp">왜 베리굿웨딩일까요</a></li>
				<li><a href="/about/info.asp">이용안내</a></li>
				<li><a href="/about/map.asp">찾아오시는길</a></li>
				<li><a href="/about/planner.asp">웨딩플래너</a></li>						
			</ul>
			<ul>
				<li><a href="/hall/hall_search.asp">웨딩홀</a></li>
				<li><a href="/event/event_list.asp">이벤트</a></li>
				<li><a href="/gallary/gallary_list.asp?data=72">스튜디오</a></li>
				<li><a href="/gallary/gallary_index.asp?data=71">드레스</a></li>
				<li><a href="/gallary/gallary_index.asp?data=73">헤어메이크업</a></li>
				<li><a href="/gallary/gallary_list.asp?data=71&amp;data2=76">본식사진</a></li>
			</ul>
			<ul>
				<li><a href="/counselling/consult.asp">웨딩비용계산기</a></li>
				<li><a href="/community/after_list.asp">커뮤니티</a></li>
				<li><a href="/honeymoon/honey_sub.asp">허니문</a></li>
				<li><a href="/gallary/gallary_etc_list.asp?data=91,147">예물</a></li>
				<li><a href="/gallary/gallary_etc_list.asp?data=92">한복</a></li>
				<li><a href="/gallary/gallary_etc_list.asp?data=98">예복</a></li>				
			</ul>			
			<ul>
				
				<li><a href="javascript:login();">로그인</a></li>
				<li><a href="/membership/member.asp">회원가입</a></li>
				<li><a href="/membership/find_id.asp">ID/PW 찾기</a></li>
								
				<li><a href="/membership/use_it.asp">이용약관 및 정보취급</a></li>				
			</ul>
		</div><!--.ft_link-->
		<div class="ft_tel">
			<span class="ft_tel_title">고객센터</span>
               <div class="ft_tel_TTXbx">
 	              <span class="ft_tel_ttx01">02-543-5066</span>     	          
               </div>
               <div class="ft_tel_TMbx"><span class="ft_tel_TMbx_ttx">AM 10:00 ~ PM 7:00</span></div>
               <!--<img src="../images/main/footer_01.jpg" alt="고객센터">-->
		</div><!--.ft_tel-->
		<div class="ft_map">
					
		</div><!--.ft_map-->
	</div><!--.ft_wrap-->
</div><!--#footer_wrap2-->

<div id="copyright2">
	<div class="copy_wrap cf">
		<span class="copy_logo"><img src="../images/main/copy_logo.jpg" alt="베리굿웨딩"></span>
		<span class="copy_txt">베리굿웨딩 &nbsp;&nbsp;&nbsp;주소 : 서울 강남구 논현동 212-1 삼덕빌딩 2층 &nbsp;&nbsp;&nbsp;사업자번호 : 211-88-97156 &nbsp;&nbsp;&nbsp; 대표 : 원정욱 &nbsp;&nbsp;&nbsp;&nbsp;이메일 : vgoodwed@naver.com
		<br>
		Copyright © 베리굿웨딩 All Right Reserved.
		</span>
	</div><!--.copy_wrap-->
</div>
<script language="JavaScript" type="text/JavaScript">
$(document).ready(function() {
	var userAgent = navigator.userAgent.toLowerCase();
	var machine = "";
	var agent = "";
	
	if(userAgent.match('iphone')) 
	{
		 machine = "아이폰";
		 agent = "1"
	} 
	else if(userAgent.match('ipad')) 
	{
	   machine = "아이패드";
	   agent = "1"
	} 
	else if(userAgent.match('ipod')) 
	{
		machine = "아이팟";
		agent = "1"
	} 
	else if(userAgent.match('android')) 
	{
		machine = "안드로이드";
		agent = "1"
	}
	else if(userAgent.match('blackberry')) 
	{
		machine = "블랙베리";
		agent = "1"
	}
	else if(userAgent.match('LG')) 
	{
		machine = "LG";
		agent = "1"
	}
	else if(userAgent.match('MOT')) 
	{
		machine = "모토로라";
		agent = "1"
	}
	else if(userAgent.match('SAMSUNG')) 
	{
		machine = "SAMSUNG";
		agent = "1"
	}
	else if(userAgent.match('SonyEricsson')) 
	{
		machine = "소니에릭손";
		agent = "1"
	}
	if (agent == "1")
	{
		$("#mobile_view").show();
	}
	
	$("#mobile_view").click(function() {
		top.location.href="/mobile";
	});
});
</script>
<div id="mobile_view" style="font-size:4em;font-weight:bold;text-align:center;height:110px;line-height:110px;display:none;">모바일로 보기</div></div></body>
</html>