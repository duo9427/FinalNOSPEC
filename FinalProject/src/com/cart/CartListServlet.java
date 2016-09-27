package com.cart;

import java.io.IOException;
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

/**
 * Servlet implementation class CartAddServlet
 */
@WebServlet("/CartListServlet")
public class CartListServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		HttpSession session = request.getSession();
		MemberDTO dto = (MemberDTO)session.getAttribute("login");
		
		CartService service = new CartService();
		List<CartDTO> list = null;
		  String title="";
		   String target="";
		try {
			list = service.cartList(dto.getUserid());
			target="cartList.jsp";
		} catch (CommonException e) {
			title= e.getMessage();
			String link="home.jsp";
			target="error.jsp";
			request.setAttribute("title", title);
			request.setAttribute("link", link);
		}
		
		request.setAttribute("cartList", list);
		
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
