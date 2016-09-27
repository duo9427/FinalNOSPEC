package com.company;
 
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dto.CompanyDTO;
import com.dto.MemberDTO;
import com.exception.CommonException;
import com.service.CompanyService;
import com.service.MemberService;

/**
 * Servlet implementation class LognFormServlet
 */
@WebServlet("/CompanyAddServlet")
public class CompanyAddServlet extends HttpServlet {

   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      
      //나중에 필터로 설정하기
      request.setCharacterEncoding("UTF-8");
      
      String cid = request.getParameter("cid");
      String cpasswd = request.getParameter("cpasswd");
      String cname = request.getParameter("cname");
      String cemail = request.getParameter("cemail");
      String cno1 = request.getParameter("cno1");
      String cno2 = request.getParameter("cno2");
      String cno3 = request.getParameter("cno3");
      String cmaster = request.getParameter("cmaster");
      String ccategory = request.getParameter("ccategory");
      String post1 = request.getParameter("post1");
      String post2 = request.getParameter("post2");
      String addr1 = request.getParameter("addr1");
      String addr2 = request.getParameter("addr2");
      String cphone1 = request.getParameter("cphone1");
      String cphone2 = request.getParameter("cphone2");
      String cphone3 = request.getParameter("cphone3");
      
      
      CompanyDTO dto =
            new CompanyDTO(cid, cpasswd, cname, cemail, cno1, cno2, cno3, cmaster, 
                  ccategory, post1, post2, addr1, addr2, cphone1, cphone2, cphone3);
       CompanyService service =
             new CompanyService();
       String title="";
       String target="";
       try {
         service.addCompany(dto);
         target = "home.jsp";
         request.setAttribute("result", "success");
      } catch (CommonException e) {
         title= e.getMessage();
         String link="CompanyFormServlet";
         target="error.jsp";
         request.setAttribute("title", title);
         request.setAttribute("link", link);
      }
      
      RequestDispatcher dis =
            request.getRequestDispatcher(target);
      dis.forward(request, response);
   }

   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      // TODO Auto-generated method stub
      doGet(request, response);
   }
}

