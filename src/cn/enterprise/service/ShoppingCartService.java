package cn.enterprise.service;

import java.util.Iterator;

import cn.enterprise.po.Orders;

public interface ShoppingCartService {
	/**
	 * ���빺�ﳵ
	 * @param gid
	 * @param number
	 * @param email
	 * @return	�ɹ�1
	 */
	public int addToCart(int gid, int number, String email);
	
	public Iterator<Orders> getCartOrders(int i, String email);
	
	public void updateCartOrders(String email, int number, int status, int oid);
	
	/**
	 * ���㹺�ﳵ
	 * @param oid
	 * @param email
	 * @return 1
	 */
	public int winpUpCart(int oid, String email);
	
	/**
	 * 
	 * @return
	 */
	public int updateNumber(int oid, int number, String email);
	
}
