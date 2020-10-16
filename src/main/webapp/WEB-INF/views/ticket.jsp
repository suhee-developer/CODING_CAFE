<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" %>
   
<%@include file="includes/header.jsp"%>

			<div class="row">
			<h1>(고객전화번호)님S 환영합니다</h1>
				<div class="btn-group selectTap">
					<button type="button" class="btn btn-primary"  id="dayTicket">일일권</button>
					<button type="button" class="btn btn-primary" id="timeTicket">정액권</button>
					<button type="button" class="btn btn-primary" id="periodTicket">기간권</button>
					<button type="button" class="btn btn-primary" id="promotionTicket">프로모션</button>
				</div>
			</div>
			<div class="row optionList">
				<div class = "dayTicket optList">	
					<button type="button" class="btn btn-info" id="day1"><h4>당일 2시간권 </h4><br>3,000원</button>
					<button type="button" class="btn btn-info" id="day3"><h4>당일 3시간권 </h4><br>4,000원</button>
					<button type="button" class="btn btn-info" id="day4"><h4>당일 4시간권 </h4><br>5,000원</button>
					<button type="button" class="btn btn-info" id="day6"><h4>당일 6시간권 </h4><br>7,000원</button>
					<button type="button" class="btn btn-info" id="day9"><h4>당일 9시간권 </h4><br>10,000원</button>
				</div>	                                                             
				<div class = "timeTicket optList">	
					<button type="button" class="btn btn-info" id="time24"><h4>정액권 24시간</h4><br>36,000원</button>
					<button type="button" class="btn btn-info" id="time50"><h4>정액권 50시간</h4><br>70,000원</button>
					<button type="button" class="btn btn-info" id="time100"><h4>정액권 100시간</h4><br>120,000원</button>
					<button type="button" class="btn btn-info" id="time200"><h4>정액권 200시간</h4><br>220,000원</button>
				</div>	
				<div class = "periodTicket  optList">
					<button type="button" class="btn btn-info" id="period14"><h4>기간권 14일</h4><br>70,000원</button>
					<button type="button" class="btn btn-info" id="period28"><h4>기간권 28일</h4><br>110,000원</button>
				</div>		
				<div class = "promotionTicket optList">
					  <div class="alert alert-secondary" >
  					  <strong>죄송합니다!</strong> 준비된 요금제가 존제하지 않습니다.
 					 </div>
				</div>		
			</div>
			<div class="row">
			<button type="button" class="btn btn-primary btn-block goPay">결제하기</button>
			</div>
		</div>	    
		
		
		
	<script type="text/javascript">
	
	//요금 옵션 선택시 이벤트 실행
		$(".selectTap button").click(function(){
			//이전 선택 옵션 죽이기
			$(".optActiv").removeClass("optActiv"); 
			//선택한 옵션 active시키기
			$(this).addClass("optActiv");
			//기존선택 숨기기
			$(".optionList>div").hide();
			//선택한 옵션 보여주기 > 선택한버튼의 아이디를 보여즐.div의 클래스명으로 지정해놓음
			$("."+($(this).attr('id'))).show();
		});
	</script>
	
	
	</body>
</html>