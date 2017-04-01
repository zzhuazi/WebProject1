package cn.enterprise.service;

import java.util.Iterator;

import cn.enterprise.po.Orders;

public interface ShoppingCartService {
	/**
	 * 加入购物车
	 * @param gid
	 * @param number
	 * @param email
	 * @return	成功1
	 */
	public int addToCart(int gid, int number, String email);
	
	public Iterator<Orders> getCartOrders(int i, String email);
	
	public void updateCartOrders(String email, int number, int status, int oid);
	
	/**
	 * 结算购物车
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
