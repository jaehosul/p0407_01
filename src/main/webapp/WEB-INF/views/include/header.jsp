<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ include file="/WEB-INF/views/include/header.jsp" %> --%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		
<link rel="stylesheet" href="/css/reset.css" type="text/css">
<link rel="stylesheet" href="/css/main.css" type="text/css">
<link rel="stylesheet" href="/css/sub.css" type="text/css">
<link rel="stylesheet" href="/css/sub_detail.css" type="text/css">
<!--<link rel="stylesheet" href="../fonts/spoqahansansregular.css?ver=1" type="text/css">-->
<link rel="stylesheet" href="../fonts/NanumBarunGothic.css?ver=1" type="text/css">
<link rel="stylesheet" type="text/css" href="/css/jquery-ui-1.10.4.custom.css">
<script type="text/javascript" src="/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="/js/document.on.js"></script>
<script type="text/javascript" src="/js/prog.js"></script>
<script language="javascript" src="/js/jquery-ui-1.10.4.custom.js"></script>
<script type="text/javascript" src="http://code.jquery.com/ui/1.11.2/jquery-ui.js"></script>

<script type="text/javascript">
$(document).ready(function() {
	$('span[id=up_menu]').mouseover(function() { 		
		$("div[id=all_menu_layer").hide();
		$('span[id=all_menu]').attr("data","0");
		$("div[class=m_allmenu]").css("background-color","#ffffff");
		
		var menu_num = $(this).attr("data");		
		
		$('span[name=up_menu_]').removeClass('M_ttl_menu');
		$(this).addClass('M_ttl_menu');		
		
		$("div[class=main_submenu_wrap").slideDown(400);
		$("div[name=main_submenu_part]").hide();
		$("div[class=main_submenu_part"+menu_num+"]").show();
	});

	$('div[class=main_topbx_01]').mouseout(function() {
		$('span[id=all_menu]').attr("data","0");
		$("div[class=m_allmenu]").css("background-color","#ffffff");
		$('div[class=main_submenu_wrap]').hide();		
		$('span[name=up_menu_]').removeClass('M_ttl_menu');
	});
	
	$('div[class=main_submenu_wrap]').mouseover(function() {
		$('span[id=all_menu]').attr("data","0");
		$("div[class=m_allmenu]").css("background-color","#ffffff");
		$(this).show();
		$(this).mouseout(function() {
			$(this).hide();		
			$('span[name=up_menu_]').removeClass('M_ttl_menu');
		});
	});

	$('a[id=lay_sub_css]').mouseover(function() {
		$('.lay_sub_css_').css("color","");
		$(this).css("color","#ff6036");
		$('a[id=lay_sub_css]').mouseout(function() {
			$('.lay_sub_css_').css("color","");		
		});
	});

	$('span[id=all_menu]').click(function() {
		var all_data = $(this).attr("data");
		$('div[class=main_submenu_wrap]').hide();		
		$('span[name=up_menu_]').removeClass('M_ttl_menu');
		
		if (all_data == "0")
		{
			$("div[class=m_allmenu]").css("background-color","#e8ecf3");
			$("div[id=all_menu_layer").slideDown(400);
			$(this).attr("data","1");			
		}
		if (all_data == "1")
		{			
			$("div[id=all_menu_layer").slideUp(200);
			$(this).attr("data","0");
			$("div[class=m_allmenu]").css("background-color","#ffffff");
		}	
	});

	$('img[id=all_menu_close]').click(function() {		
		$("div[id=all_menu_layer").slideUp(200);
		$('span[id=all_menu]').attr("data","0");
		$("div[class=m_allmenu]").css("background-color","#ffffff");
	});

	$('#favorite').on('click', function(e) {
        var bookmarkURL = window.location.href;
        var bookmarkTitle = document.title;
        var triggerDefault = false;

        if (window.sidebar && window.sidebar.addPanel) {
            // Firefox version < 23
            window.sidebar.addPanel(bookmarkTitle, bookmarkURL, '');
        } else if ((window.sidebar && (navigator.userAgent.toLowerCase().indexOf('firefox') > -1)) || (window.opera && window.print)) {
            // Firefox version >= 23 and Opera Hotlist
            var $this = $(this);
            $this.attr('href', bookmarkURL);
            $this.attr('title', bookmarkTitle);
            $this.attr('rel', 'sidebar');
            $this.off(e);
            triggerDefault = true;
        } else if (window.external && ('AddFavorite' in window.external)) {
            // IE Favorite
            window.external.AddFavorite(bookmarkURL, bookmarkTitle);
        } else {
            // WebKit - Safari/Chrome
            alert((navigator.userAgent.toLowerCase().indexOf('mac') != -1 ? 'Cmd' : 'Ctrl') + '+D 키를 눌러 즐겨찾기에 등록하실 수 있습니다.');
        }

        return triggerDefault;
    });
	
	$(window).scroll(function(){		
		if ($(window).scrollTop() > "166")
		{ 
			$(".main_topbx_03").hide();
			$(".main_submenu_wrap").css("top","109px");
		}else {
			$(".main_topbx_03").show();
			$(".main_submenu_wrap").css("top","166px");
		}				
	});
});

function login()
{
	var href;
	
	try {
		href = "/membership/log_in.asp?url=" + escape(top.location.href);
	}catch(e){
		href = "/membership/log_in.asp?url=" + escape("http://verygoodwedding.co.kr/");
	};
	top.location.replace(href)
}

function logout()
{
	var href;
	
	try {
		href = "/membership/logout.asp?url=" + escape(top.location.href);
	}catch(e){
		href = "/membership/logout.asp?url=" + escape("http://verygoodwedding.co.kr/");
	};
	top.location.replace(href)		
}
</script>
	</head>
	<body>	
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
               	<div class="main_logobx"><p><a href="/"><img src="../images/main_logo.jpg" class="main_logoimg"></a></p></div>
                    <div class="main_title_menu">
						<a href="#"><span id="up_menu" data="01" name="up_menu_" class="">웨딩수다소개</span></a>
                        <a href="/reservation/reservation"><span id="up_menu" data="02" name="up_menu_" class="">예약</span></a>
                        <a href="#"><span id="up_menu" data="03" name="up_menu_" class="">정보</span></a>
                        <a href="#"><span id="up_menu" data="04" name="up_menu_" class="">지식인</span></a>
                        <a href="#"><span id="up_menu" data="05" name="up_menu_" class="">상품권교환</span></a>
                        <a href="#"><span id="up_menu" data="06" class="M_ttl_menu">커뮤니티</span></a>
                    </div>
               </div>
          </div>
          <div class="main_topbx_03">
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
                         	<a href="/gallary/gallary_etc_list.asp?data=91,147"><span>예물</span></a>
                            <a href="/gallary/gallary_etc_list.asp?data=92"><span>한복</span></a>
                            <a href="/gallary/gallary_etc_list.asp?data=93"><span>신혼여행</span></a>
                            <a href="/gallary/gallary_etc_list.asp?data=98"><span>예복</span></a>
                            <a href="/gallary/gallary_etc_list.asp?data=101,102,157"><span>혼수</span></a>
                         </div>
                         <div class="m_honey">
                         	<a href="/honeymoon/honey_sub.asp"><span>허니문</span></a>
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
                              <li><a href="/about/greeting">•왜 웨딩수다일까요</a></li>
                             <li><a href="/about/info">•웨딩서비스</a></li>
                             <li><a href="/about/planner">•웨딩플래너</a></li>
                             <li><a href="/about/map">•찾아오시는길</a></li>
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
                             <li><a href="/gallary/gallary_etc_list.asp?data=97,214">•폐백/이바지</a></li>
                             <li><a href="/gallary/gallary_etc_list.asp?data=100">•DVD/영상</a></li>
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
          <div class="main_submenu_wrap" style="display: none;" name="main_submenu_wrap_">					
					
                    <div class="main_submenu_inbx">
                         <!-- ========== 첫번째 ========== -->
                         <div class="main_submenu_part01" style="display: block;" name="main_submenu_part">
                              <div class="MSub_bx_01">
                                   <div class="MSub_text_wrap">
                                        <span class="MSub_ttx01">베리굿웨딩이 만든 웨딩컨설팅</span>
                                        <div class="MSub_ttx02">
                                             <span style="color:#75c0f0;">웨딩수다</span><br>
                                             <span style="color:#75a9f0;">GOOD</span>
                                        </div>
                                   </div>
                                   <p><a href="/about/greeting.asp"><img src="../images/gogo.jpg"></a></p>
                              </div>
                              <div class="MSub_bx_02">
                                   <ul>
                                        <li><a href="/about/greeting" id="lay_sub_css" class="lay_sub_css_" style="font-size: 16px;">왜 웨딩수다일까요?</a></li>
                                        <li><a href="/about/info" id="lay_sub_css" class="lay_sub_css_" style="font-size: 16px;">웨딩서비스</a></li>
                                        <li><a href="/about/planner" id="lay_sub_css" class="lay_sub_css_" style="font-size:16px;">웨딩플래너</a></li>
										<li><a href="/about/map" id="lay_sub_css" class="lay_sub_css_" style="font-size:16px;">찾아오시는길</a></li>
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
                         <div class="main_submenu_part02" style="display: none;" name="main_submenu_part">
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
                         <div class="main_submenu_part03" style="display: none;" name="main_submenu_part">
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
                                             <li style="width:115px;"><a href="/gallary/gallary_etc_list.asp?data=97,214" id="lay_sub_css" class="lay_sub_css_" style="font-size:16px;">폐백/이바지</a></li>
                                             <li style="width:115px;"><a href="/gallary/gallary_etc_list.asp?data=100" id="lay_sub_css" class="lay_sub_css_" style="font-size:16px;">DVD/영상</a></li>
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
                         <div class="main_submenu_part04" style="display: none;" name="main_submenu_part">
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
                         <div class="main_submenu_part05" style="display: none;" name="main_submenu_part">
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
                         <div class="main_submenu_part06" style="display: none;" name="main_submenu_part">
                              <div class="MSub_bx_01">
                                   <div class="MSub_text_wrap">
                                        <span class="MSub_ttx01">웨딩을 공유해요~</span>
                                        <div class="MSub_ttx02">
                                             <span style="color:#75c0f0;">웨딩수다</span><br>
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
	
		
	</body>
</html>