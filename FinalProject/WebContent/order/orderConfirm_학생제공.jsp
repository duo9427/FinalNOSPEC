<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="js/daum.js"></script>
<script type="text/javascript" src="js/jquery-3.1.0.js"></script>
<FORM name="myForm" method="POST" action="">
	<table width="80%" cellspacing="0" cellpadding="0">

		<tr>
			<td height="30">
		</tr>

		<tr>
			<td><b>주문상품 확인</b></td>
		</tr>

		<tr>
			<td height="15">
		</tr>

		<tr>
			<td>
				<hr size="1" color="CCCCCC">
			</td>
		</tr>

		<tr>
			<td height="5">
		</tr>

		<tr>
			<td>
				<table width="100%" cellspacing="0" cellpadding="0">
					<tr>
						<td class="td_default" align="center"><strong>주문번호</strong></td>
						<td class="td_default" align="center" colspan="2"><strong>상품정보</strong></td>
						<td class="td_default" align="center"><strong>판매가</strong></td>
						<td class="td_default" align="center" colspan="2"><strong>수량</strong></td>

					</tr>

					<tr>
						<td colspan="4">
							<hr size="1" color="CCCCCC">
						</td>
					</tr>

					<tr>
						<td class="td_default" width="80">1</td>
						<td class="td_default" width="80"><img
							src="images/items/top1.gif" border="0" align="center"
							width="80" /></td>
						<td class="td_default" width="300" style='padding-left: 30px'>AAAAA
							<br> <font size="2" color="#665b5f">[옵션 : 사이즈(s)
								, 색상(red)]
						</font></td>
						<td class="td_default" align="center" width="110">2000
						</td>
						<td class="td_default" align="center" width="90">2</td>

					</tr>


					<tr>
						<td height="30"></td>
						<td class="td_default" align="right">총 결제 금액 :</td>
						<td class="td_default" align='right'>4000원</td>
					</tr>
				</table> <tr>
			<td>
					<hr size="1" color="CCCCCC">
				</td>
			</tr>

		</td>
	</tr><!--  고객 정보 시작-->
		<tr>
		<td height="30">
	
		</tr>

	<tr>
		<td><b>고객 정보</b></td>
	</tr>

	<tr>
		<td height="15">
	
		</tr>


	<tr>
		<td>
			<table width="100%" cellspacing="0" cellpadding="0" border="1"
					style="border-collapse:collapse" bordercolor="#CCCCCC">
				<tr>
					<td width="125" height="35" class="td_default">
						
						이 름
					</td>
					<td height="35" class="td_default">
						<input class="input_default" type="text" id="mname" size="20"
							maxlength="20" value="고객님"></input>
					</td>
				</tr>
				<tr>
					<td height="35" class="td_default">
						
						우편번호
					</td>
					<td height="35" class="td_default">
						<input class="input_default" type="text" id="mpost1" size="4"
							maxlength="3" value="321" readonly></input>-
						<input class="input_default" type="text" id="mpost2" size="4"
							maxlength="3" value="987" readonly></input>
						
					</td>
				</tr>
				<tr>
					<td height="35" class="td_default">
						
						주 소
					</td>
					<td height="35" class="td_default">
						<input class="input_default" type="text" id="maddress1" size="35"
							maxlength="200" value="용산구 갈월동" readonly></input><br>
						<input class="input_default" type="text" id="maddress2" size="35"
							maxlength="200" value="갑을빌딩 303호" readonly></input>
					</td>
				</tr>
				
				<tr>
					<td height="35" class="td_default">
						휴대전화
					</td>
					<td height="35" class="td_default">
						<input class="input_default" type="text" id="mphone" size="15"
							maxlength="15" value="01021359876"></input>
						
					</td>
				</tr>
			</table>							
		</td>
	</tr>
<!--  고객 정보 끝-->
	<tr>
		<td height="30">
	
		</tr>

	<tr> 
		<td class="td_default">
			 <input type="checkbox" name="same"
				onclick="javascript:sameAddress(this);"> 배송지가 동일할 경우 선택하세요.
		</td>
	</tr>
<!--  배송지 정보 시작-->
	<tr>
		<td height="30">
	
		</tr>

	<tr>
		<td><b>배송지 정보</b></td>
	</tr>

	<tr>
		<td height="15">
	
		</tr>


	<tr>
		<td>
			<table width="100%" cellspacing="0" cellpadding="0" border="1"
					style="border-collapse:collapse" bordercolor="#CCCCCC">
				<tr>
					<td width="125" height="35" class="td_default">
						
						이 름
					</td>
					<td height="35" class="td_default">
						<input class="input_default" type="text" id="orderName"
							name="orderName" size="20" maxlength="20" value=""></input>
					</td>
				</tr>
				<tr>
					<td height="35" class="td_default">
						
						우편번호
					</td>
					<td height="35" class="td_default">
<!-- 다음주소 시작-->
	<input name="post1" id="post1" size="5" readonly=""> -
	<input name="post2" id="post2" size="5" readonly="">
	<input onclick="openDaumPostcode()" type="button" value="우편번호찾기">
	<br>
	<input name="addr1" id="addr1" size="40" readonly=""
		placeholder="도로명주소">
	<br>
	<span style="line-height: 10%;"><br></span>
	<input name="addr2" id="addr2" size="40" placeholder="지번주소">
<!-- 다음주소 끝 -->
					</td>
				</tr>
				
				<tr>
					<td height="35" class="td_default">
						
						휴대전화
					</td>
					<td height="35" class="td_default">
						<input class="input_default" type="text" id="phone"
							name="phone" size="15" maxlength="15" value=""></input>
					
					</td>
				</tr>
			</table>							
		</td>
	</tr>
<!--  배송지 정보 끝-->

	<tr>
		<td height="30">
	
		</tr>
	<tr>
		<td><b>결제수단</b></td>
	</tr>

	<tr>
		<td height="15">
	
		</tr>
	<tr>
		<td>
			<table width="100%" cellspacing="0" cellpadding="0" border="1"
					style="border-collapse:collapse" bordercolor="#CCCCCC">
				<tr>
					<td width="125" height="35" class="td_default">
						<input type="radio" name="payMethod" value="신용카드" checked>신용카드</input>
						
						<input type="radio" name="payMethod" value="계좌이체">계좌이체</input>
						
						<input type="radio" name="payMethod" value="무통장 입금">무통장 입금</input>
					</td>
					
				</tr>
				
			</table>							
		</td>
	</tr>
	
	<tr>
		<td height="30">
	
		</tr>


	<tr>
		<td class="td_default" align="center">
			<input type='button' value='취소' onclick="javascript:history.back()">	
			<input type='button' value='결제하기' onclick="orderDone(myForm)">
		</td>
	</tr>

</table>

</FORM>

