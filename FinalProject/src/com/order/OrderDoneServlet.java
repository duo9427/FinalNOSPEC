package com.order;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dto.CartDTO;
import com.dto.MemberDTO;
import com.dto.OrderDTO;
import com.exception.CommonException;
import com.service.MemberService;
import com.service.OrderService;

/**
 * Servlet implementation class BuyAddServlet
 */
@WebServlet("/OrderDoneServlet")
public class OrderDoneServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//userid=aaa&num=41&gImage=top1&gName=앨리스+데님+탑&gSize=M&gColor=navy&gPrice=12100&gAmount=1&same=on&order_name=홍길동
		//&post1=448&post2=160
		//&addr1=경기+용인시+수지구+경부고속도로+400+%28죽전동%2C+죽전주유소%29&addr2=111&order_phone=01011111111&payMethod=신용카드		
		
		String userid = request.getParameter("userid"); //사용자
String num = request.getParameter("num"); // 장바구니 코드
		String gCode = request.getParameter("gCode"); // 상품코드
		String gName = request.getParameter("gName");
		String gPrice = request.getParameter("gPrice");
		String gImage = request.getParameter("gImage");
		String gSize = request.getParameter("gSize");
		String gColor = request.getParameter("gColor");
		String gAmount = request.getParameter("gAmount");
		
		String orderName = request.getParameter("orderName");
		String post1 = request.getParameter("post1");
		String post2 = request.getParameter("post2");
		String addr1 = request.getParameter("addr1");
		String addr2 = request.getParameter("addr2");
		String phone = request.getParameter("phone");
		String payMethod = request.getParameter("payMethod");
		
		OrderDTO dto = new OrderDTO();
		dto.setUserid(userid);
		dto.setgCode(gCode);
		dto.setgName(gName);
		dto.setgPrice(Integer.parseInt(gPrice));
		dto.setgImage(gImage);
		dto.setgSize(gSize);
		dto.setgColor(gColor);
		dto.setgAmount(Integer.parseInt(gAmount));
		dto.setOrderName(orderName);
		dto.setPost1(post1);
		dto.setPost2(post2);
		dto.setAddr1(addr1);
		dto.setAddr2(addr2);
		dto.setPhone(phone);
		dto.setPayMethod(payMethod);
		
		System.out.println(dto);
		
		OrderService service = new OrderService();
		   String title="";
		   String target="";
		   try {
			// 주문테이블 저장 및 장바구니 삭제
			service.addOrder(dto,num);
			request.setAttribute("orderDTO", dto);
			target = "orderDone.jsp";
		} catch (CommonException e) {
			title= e.getMessage();
			String link="home.jsp";
			target="error.jsp";
			request.setAttribute("title", title);
			request.setAttribute("link", link);
		}
		 
			RequestDispatcher dis =
					request.getRequestDispatcher(target);
			dis.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
