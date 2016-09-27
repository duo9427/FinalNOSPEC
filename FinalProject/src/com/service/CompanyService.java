package com.service;


import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import com.config.MySqlSessionFactory;
import com.dto.CompanyDTO;
import com.dto.MemberDTO;
import com.exception.CommonException;

public class CompanyService {

   // 회원등록
   public void addCompany(CompanyDTO dto) throws CommonException {
      SqlSession session = MySqlSessionFactory.getSession();
      try {
         int n = session.insert("addCompany", dto);
         session.commit();

      } catch (Exception e) {
         e.printStackTrace();
         throw new CommonException("회원등록 실패");
      } finally {
         session.close();
      }
 
   }// end addMember

   // 로그인
   public CompanyDTO login(HashMap<String, String> map) throws CommonException {
      CompanyDTO dto = null;
      SqlSession session = MySqlSessionFactory.getSession();
      try {
         dto = session.selectOne("login", map);
      } catch (Exception e) {
         e.printStackTrace();
         throw new CommonException("로그인 실패");
      } finally {
         session.close();
      }
      return dto;
   }// end addMember

   public CompanyDTO mypageCompany(String cid) throws CommonException {
      CompanyDTO dto = null;
      SqlSession session = MySqlSessionFactory.getSession();
      try {
         dto = session.selectOne("mypage", cid);
      } catch (Exception e) {
         e.printStackTrace();
         throw new CommonException("mypage 실패");
      } finally {
         session.close();
      }
      return dto;
   }// end addMember

   // 회원 수정
   public void updateCompany(CompanyDTO dto) throws CommonException {
      SqlSession session = MySqlSessionFactory.getSession();
      try {
         int n = session.update("updateCompnay", dto);
         session.commit();

      } catch (Exception e) {
         e.printStackTrace();
         throw new CommonException("회원수정 실패");
      } finally {
         session.close();
      }

   }// end addMember
      // 회원 삭제

   public void deleteCompany(String userid) throws CommonException {
      SqlSession session = MySqlSessionFactory.getSession();
      try {
         int n = session.delete("deleteCompany", userid);
         session.commit();

      } catch (Exception e) {
         e.printStackTrace();
         throw new CommonException("회원삭제 실패");
      } finally {
         session.close();
      }

   }// end addMember

}