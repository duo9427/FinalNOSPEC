package com.order;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dto.CartDTO;
import com.dto.MemberDTO;
import com.exception.CommonException;
import com.service.CartService;
import com.service.MemberService;

/**
 * Servlet implementation class BuyAddServlet
 */
@WebServlet("/OrderAllConfirmServlet")
public class OrderAllConfirmServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String [] checkValue = request.getParameterValues("check");
		
		HttpSession session = request.getSession();
		MemberDTO m = (MemberDTO)session.getAttribute("login");
		String userid = m.getUserid();
		
		CartService service = new CartService();
		MemberService mService = new  MemberService();
		   String title="";
		   String target="";
		   try {
			List<CartDTO> cList = service.orderAllConfirm(Arrays.asList(checkValue));
			MemberDTO mDto = mService.mypage(userid);
			System.out.println("cList >" + cList.size());
			System.out.println(mDto);
			request.setAttribute("cList", cList);
			request.setAttribute("memberDTO", mDto);
			target = "orderAllConfirm.jsp";
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
