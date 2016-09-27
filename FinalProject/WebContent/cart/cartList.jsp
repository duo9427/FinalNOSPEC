<%@page import="com.dto.CartDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script type="text/javascript" src="js/jquery-3.1.0.js"></script>
<script type="text/javascript">


   function orderAllConfirm(f){
	   
	/* 	$(".check").each(function(idx,element){
			if(!this.checked){
				this.value="";
			}
		}); */
		f.action = "OrderAllConfirmServlet";
		f.submit();
   }

	function delAllCart(f) {
        
	/* 	$(".check").each(function(idx,element){
			if(!this.checked){
				//checkValue += this.value +"/";
				this.value="";
			}
		}); */
		//location.href="CartDeleteAllServlet?num="+checkValue;
		f.action = "CartDeleteAllServlet";
		f.submit();
	}
	
	function order(num, userid) {

		location.href = "OrderConfirmServlet?num=" + num + "&userid=" + userid;
	}
	function delCart(num) {

		location.href = "CartDeleteServlet?num=" + num;
	}
	function amountUpdate(num) {
		console.log(num);
		//ajax통신 
		var amount = $("#CART_AMOUNT" + num).val();
		console.log(amount);
		jQuery.ajax({
			type : "GET",
			url : "amountUpdate.jsp",
			dataType : "text",
			data : {
				amount : amount,
				num : num
			},
			success : function(responseData, status, xhr) {
				var sum = parseInt($("#CART_AMOUNT" + num).val()) * parseInt($("#gPrice" + num).val())
				$("#sum" + num).text(sum)
			},
			error : function(xhr, status, error) {
				console.log("error");
			}
		});

	}
	$(document).ready(function() {

		$("#allCheck").on("change", function(event) {
			console.log(this.checked);
			if (this.checked) {
				$(".check").each(function(idx, element) {
					console.log($(this));
					$(this).attr("checked", "checked");
				});
			} else {
				$(".check").each(function(idx, element) {
					console.log($(this));
					$(this).removeAttr("checked");
				});
			}
		});

	});
</script>
<%
	List<CartDTO> list = (List<CartDTO>) request.getAttribute("cartList");
%>
<table width="90%" cellspacing="0" cellpadding="0" border="0">

	<tr>
		<td height="30">
	</tr>

	<tr>
		<td colspan="5" class="td_default">&nbsp;&nbsp;&nbsp; <font
			size="5"><b>- 장바구니-</b></font> &nbsp;
		</td>
	</tr>

	<tr>
		<td height="15">
	</tr>

	<tr>
		<td colspan="10">
			<hr size="1" color="CCCCCC">
		</td>
	</tr>

	<tr>
		<td height="7">
	</tr>

	<tr>
		<td class="td_default" align="center">
		<input type="checkbox" name="allCheck" id="allCheck"> <strong>전체선택</strong></td>
		<td class="td_default" align="center"><strong>주문번호</strong></td>
		<td class="td_default" align="center" colspan="2"><strong>상품정보</strong></td>
		<td class="td_default" align="center"><strong>판매가</strong></td>
		<td class="td_default" align="center" colspan="2"><strong>수량</strong></td>
		<td class="td_default" align="center"><strong>합계</strong></td>
		<td></td>
	</tr>

	<tr>
		<td height="7">
	</tr>
	<%
		if (list.size() == 0) {
	%>
	<tr>
		<td colspan="10">
			<hr size="1" color="CCCCCC">
		</td>
	</tr>

	<tr>
		<td height="5">
	</tr>
	<tr>
		<td class="td_default" align="center">카트에 추가된 상품이 없습니다.</td>
	</tr>
	<%
		} else {
	%>

	<tr>
		<td colspan="10">
			<hr size="1" color="CCCCCC">
		</td>
	</tr>



	<form name="myForm">

		<%
			for (int i = 1; i <= list.size(); i++) {
					CartDTO dto = list.get(i - 1);
					int num = dto.getNum(); //주문코드 역할
					String userid = dto.getUserid();
					String gCode = dto.getgCode();
					String gName = dto.getgName();
					int gPrice = dto.getgPrice();
					String gSize = dto.getgSize();
					String gColor = dto.getgColor();
					int gAmount = dto.getgAmount();
					String gImage = dto.getgImage();
					int sum = gPrice * gAmount;
		%>
		<%-- <input type="text" name="num" value="<%=num%>"> --%>
		 <input type="text" name="num<%=num%>" value="<%=num%>" id="num<%=num%>">
		<input type="text" name="gImage<%=num%>" value="<%=gImage%>" id="gImage<%=num%>">
		 <input type="text" name="gName<%=num%>" value="<%=gName%>" id="gName<%=num%>">
		  <input type="text" name="gSize<%=num%>" value="<%=gSize%>" id="gSize<%=num%>">
		   <input type="text" name="gColor<%=num%>" value="<%=gColor%>" id="gColor<%=num%>"> 
		   <input type="text" name="gPrice<%=num%>" value="<%=gPrice%>" id="gPrice<%=num%>">

		<tr>
			<td class="td_default" width="80">
			<!-- checkbox는 체크된 값만 서블릿으로 넘어간다. 따라서 value에 삭제할 num값을 설정한다. -->
			<input type="checkbox"
				name="check" id="check<%=num%>" class="check" value="<%=num%>"></td>
			<td class="td_default" width="80"><%=num%></td>
			<td class="td_default" width="80"><img
				src="images/items/<%=gImage%>.gif" border="0" align="center"
				width="80" /></td>
			<td class="td_default" width="300" style='padding-left: 30px'><%=gName%>
				<br> <font size="2" color="#665b5f">[옵션 : 사이즈(<%=gSize%>)
					, 색상(<%=gColor%>)]
			</font></td>
			<td class="td_default" align="center" width="110"><%=gPrice%></td>
			<td class="td_default" align="center" width="90"><input
				class="input_default" type="text" name="CART_AMOUNT"
				id="CART_AMOUNT<%=num%>" style="text-align: right" maxlength="3"
				size="2" value="<%=gAmount%>"></input></td>
			<td><input type="button" value="수정"
				onclick="amountUpdate('<%=num%>')" /></td>
			<td class="td_default" align="center" width="80"
				style='padding-left: 5px'><span id="sum<%=num%>"><%=sum%></span></td>
			<td><input type="button" value="주문"
				onclick="order('<%=num%>','<%=userid%>')"></td>
			<td class="td_default" align="center" width="30"
				style='padding-left: 10px'><input type="button" value="삭제"
				onclick="delCart('<%=num%>')"></td>
			<td height="10"></td>
		</tr>


		<%
			} //end for
		%>
	</form>
	<tr>
		<td colspan="10">
			<hr size="1" color="CCCCCC">
		</td>
	</tr>
	<tr>
		<td height="30">
	</tr>

	<tr>
		<td align="center" colspan="5"><a class="a_black"
			href="javascript:orderAllConfirm(myForm)"> 전체 주문하기 </a>&nbsp;&nbsp;&nbsp;&nbsp; 
			<a class="a_black" href="javascript:delAllCart(myForm)"> 전체 삭제하기 </a>&nbsp;&nbsp;&nbsp;&nbsp;
			<a class="a_black" href="index.jsp"> 계속 쇼핑하기 </a>&nbsp;&nbsp;&nbsp;&nbsp;
		</td>
	</tr>
	<tr>
		<td height="20">
	</tr>
	<%
		} //end if
	%>
</table>
