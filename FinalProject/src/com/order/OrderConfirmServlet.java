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
import com.exception.CommonException;
import com.service.CartService;
import com.service.MemberService;

/**
 * Servlet implementation class BuyAddServlet
 */
@WebServlet("/OrderConfirmServlet")
public class OrderConfirmServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String num = request.getParameter("num");
		String userid = request.getParameter("userid");
		
		CartService service = new CartService();
		MemberService mService = new  MemberService();
		   String title="";
		   String target="";
		   try {
			CartDTO cDto = service.orderCart(num);
			MemberDTO mDto = mService.mypage(userid);
			request.setAttribute("cartDTO", cDto);
			request.setAttribute("memberDTO", mDto);
			target = "orderConfirm.jsp";
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
