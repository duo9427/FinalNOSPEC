package com.service;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import com.config.MySqlSessionFactory;
import com.dto.BoardDTO;
import com.dto.CartDTO;
import com.dto.PageDTO;
import com.exception.CommonException;

public class CartService {

	// cart 저장
	public void addCart(CartDTO dto) throws CommonException {
		SqlSession session = MySqlSessionFactory.getSession();
		try {
			int n = session.insert("cart.addCart", dto);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
			throw new CommonException("장바구니 저장 실패");
		} finally {
			session.close();
		}
	}// end write

	// 목록보기
	public List<CartDTO> cartList(String userid) throws CommonException {
		List<CartDTO> list = null;
		SqlSession session = MySqlSessionFactory.getSession();
		try {
			list = session.selectList("cartList" , userid);
		}catch(Exception e){ 
			e.printStackTrace();
			throw new CommonException("장바구니 목록 실패");
		}finally {
			session.close();
		}
		return list;
	}// end list()
	// cart 삭제
		public void delCart(String num) throws CommonException {
			SqlSession session = MySqlSessionFactory.getSession();
			try {
				int n = session.delete("delCart", Integer.parseInt(num));
				session.commit();
			} catch (Exception e) {
				e.printStackTrace();
				throw new CommonException("장바구니 삭제 실패");
			} finally {
				session.close();
			}
		}// end write
	
		// 목록보기
		public CartDTO orderCart(String num) throws CommonException {
			CartDTO dto = null;
			SqlSession session = MySqlSessionFactory.getSession();
			try {
				dto = session.selectOne("orderCart", Integer.parseInt(num));
			}catch(Exception e){ 
				e.printStackTrace();
				throw new CommonException("주문 실패");
			}finally {
				session.close();
			}
			return dto;
		}// end list()
		
		// cart 삭제
				public void delAllCart( List<String> list) throws CommonException {
					SqlSession session = MySqlSessionFactory.getSession();
					try {
						int n = session.delete("delAllCart", list);
						session.commit();
					} catch (Exception e) {
						e.printStackTrace();
						throw new CommonException("장바구니 삭제 실패");
					} finally {
						session.close();
					}
				}// end write
				
				// 목록보기
				public List<CartDTO> orderAllConfirm(List<String> list) throws CommonException {
					List<CartDTO> cList = null;
					SqlSession session = MySqlSessionFactory.getSession();
					try {
						cList = session.selectList("orderAllConfirm" , list);
					}catch(Exception e){ 
						e.printStackTrace();
						throw new CommonException("장바구니 목록 실패");
					}finally {
						session.close();
					}
					return cList;
				}// end list()		
}// end
