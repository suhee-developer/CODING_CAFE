<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" %>
   
<%@include file="includes/header.jsp"%>

			<div class="row">
			<h1>(고객전화번호~)님 환영합니다</h1>
				<div class="btn-group selectTap">
					<button type="button" class="btn btn-primary"  id="day">일일권</button>
					<button type="button" class="btn btn-primary" id="time">정액권</button>
					<button type="button" class="btn btn-primary" id="period">기간권</button>
					<button type="button" class="btn btn-primary" id="promotion">프로모션</button>
				</div>
			</div>
			<div class="row optionList" id="optionList">
				<div id = "optList" style="display:inline;">	
				</div>		 
			</div>
			
			<div class="row">
				<form method="get" id="pickForm">
					<input type="hidden" value="" name="code" id="pick">
					<button type="button" class="btn btn-primary btn-block goPay">결제하기</button>
				</form>
			</div>
		
		</div>	<!-- end of container -->    
		
		
		
	<script type="text/javascript">
	$( document ).ready(function() {
	
	//요금 옵션 선택시 이벤트 실행
		$(".selectTap button").click(function(){
			//이전 선택 옵션 죽이기
			$(".optActiv").removeClass("optActiv"); 
			//선택한 옵션 active시키기
			$(this).addClass("optActiv");
			//기존선택 숨기기
			$("#optList button").hide();
			//선택한 옵션 보여주기위해서 ajax호출
			getOptList($(this).attr('id'));
			
		});
			
		
	//선택한 타입 관련 옵션 정보가져오기
		function getOptList(ticketType) {
							
				 $.ajax({
			  	   type: 'GET',
			  	   url: '/ticket/optList/',
			  	   dataType: 'json',
			  	   data: "type="+ticketType,
			  	   success: function(resultArr) {
			  		 console.log("성공.");
			  		 showList(resultArr);
					} ,
			  	   error: function(resultArr){
			  		 console.log("실패...");
			  	   }
			  	 });
		}
	
	//버튼으로 뿌려주기
		function showList(resultArr) {
			for(var i = 0 ; i<resultArr.length ; i++){
			var str = '<button type="button" class="btn btn-info optBtn" onclick="" id="'+
				resultArr[i].ticketCode+
				'"><h4>' +resultArr[i].ticketName+ 
				'</h4><br>'+resultArr[i].price+'</button>';
			$("#optList").append(str);
			console.log(str)
			}
			
		//티켓옵션클릭시  	
		$("#optionList button").click(function(e){
			$("#pick").attr("value",$(this).attr("id"));
		});
		
		}
	
	//결제하기 버튼 눌렀을떄
	
		$(".goPay").click(function() {
			var form = $("#pickForm");
			form.attr("action","/payment?");
			if($("#pick").val()!=""){
			form.submit();
			}else{
				alert("요금제를 선택해주세요.");
			}
			
		});
		
	
	});
	</script>
	
	
	</body>
</html>