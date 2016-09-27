package com.service;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.config.MySqlSessionFactory;
import com.dto.OrderDTO;
import com.exception.CommonException;

public class OrderService {

	
	public int numSequence() throws CommonException{
		SqlSession session = 
				MySqlSessionFactory.getSession();
		int num = 0;
		try{
		//트랜잭션 처리
			num = session.selectOne("numSequence"); 
		}catch (Exception e) {
			e.printStackTrace();
			throw new CommonException("주문 실패");
		}finally {
			session.close();
		}
		return num;
	}//end write
/*public int multi(){
		
		SqlSession session = MySqlSessionFactory.openSession();
		  int n = 0;
		try{
		  ArrayList<BoardDTO> list = new  ArrayList<>();

		  list.add(new BoardDTO(21,"a", "a", "a"));
		  list.add(new BoardDTO(22,"b", "b", "b"));
//  list.add(new BoardDTO(3,"c", "c", "c"));

		   n = session.insert("multi", list);	
		  session.commit();	
			
		}finally{
			session.close();
		}
		return n;
	}//end write
*/	// 주문, 장바구니 삭제
		public void addAllOrder(ArrayList<OrderDTO> list, List<String> num) throws CommonException{
			SqlSession session = 
					MySqlSessionFactory.getSession();
			try{
			//트랜잭션 처리
			 int n = session.insert("order.addAllOrder", list); 
			 int n2 = session.insert("cart.delAllCart", num);
			 session.commit();
			}catch (Exception e) {
				e.printStackTrace();
				session.rollback();
				throw new CommonException("주문 실패");
			}finally {
				session.close();
			}
		}//end write
		
		
	// 주문, 장바구니 삭제
	public void addOrder(OrderDTO dto, String num) throws CommonException{
		SqlSession session = 
				MySqlSessionFactory.getSession();
		try{
		//트랜잭션 처리
		 int n = session.insert("order.addOrder", dto);
		 int n2 = session.insert("cart.delCart", Integer.parseInt(num));
		 session.commit();
		}catch (Exception e) {
			e.printStackTrace();
			session.rollback();
			throw new CommonException("주문 실패");
		}finally {
			session.close();
		}
	}//end write
	
	
    
	
}//end 
