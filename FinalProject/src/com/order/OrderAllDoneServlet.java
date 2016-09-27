package com.order;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;

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
@WebServlet("/OrderAllDoneServlet")
public class OrderAllDoneServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//userid=aaa&num=41&gImage=top1&gName=앨리스+데님+탑&gSize=M&gColor=navy&gPrice=12100&gAmount=1&same=on&order_name=홍길동
		//&post1=448&post2=160
		//&addr1=경기+용인시+수지구+경부고속도로+400+%28죽전동%2C+죽전주유소%29&addr2=111&order_phone=01011111111&payMethod=신용카드		
		
		String userid = request.getParameter("userid"); //사용자
        String [] num = request.getParameterValues("num"); // 장바구니 코드
		String [] gCode = request.getParameterValues("gCode"); // 상품코드
		String [] gName = request.getParameterValues("gName");
		String [] gPrice = request.getParameterValues("gPrice");
		String [] gImage = request.getParameterValues("gImage");
		String [] gSize = request.getParameterValues("gSize");
		String [] gColor = request.getParameterValues("gColor");
		String [] gAmount = request.getParameterValues("gAmount");
		
		String orderName = request.getParameter("orderName");
		String post1 = request.getParameter("post1");
		String post2 = request.getParameter("post2");
		String addr1 = request.getParameter("addr1");
		String addr2 = request.getParameter("addr2");
		String phone = request.getParameter("phone");
		String payMethod = request.getParameter("payMethod");
		
		ArrayList<OrderDTO> list = new  ArrayList<>();
		for(int i = 0 ; i< num.length; i++){
			OrderDTO dto = new OrderDTO();
			dto.setUserid(userid);
			dto.setgCode(gCode[i]);
			dto.setgName(gName[i]);
			dto.setgPrice(Integer.parseInt(gPrice[i]));
			dto.setgImage(gImage[i]);
			dto.setgSize(gSize[i]);
			dto.setgColor(gColor[i]);
			dto.setgAmount(Integer.parseInt(gAmount[i]));
			dto.setOrderName(orderName);
			dto.setPost1(post1);
			dto.setPost2(post2);
			dto.setAddr1(addr1);
			dto.setAddr2(addr2);
			dto.setPhone(phone);
			dto.setPayMethod(payMethod);
			list.add(dto);
		}
		
		OrderService service = new OrderService();
		   String title="";
		   String target="";
		   try {
			for(int i = 0 ;i < list.size(); i++ ){
				OrderDTO dto = list.get(i);
				int seq = service.numSequence();
				System.out.println("seq> " + seq);
				dto.setNum(seq);
			}
			for(OrderDTO xx:list){
				System.out.println(xx);
			}
			// 주문테이블 저장 및 장바구니 삭제
			service.addAllOrder(list, Arrays.asList(num));
		    request.setAttribute("orderList", list);
			target = "orderAllDone.jsp";
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
