package cn.enterprise.service;

import java.util.Iterator;

import cn.enterprise.po.Address;
import cn.enterprise.po.Orders;

public interface OrderService {
	
	/**
	 * 
	 * @param type 订单类型：0全部 1待付款 2待发货 3待收货 4待评价
	 * @param email
	 * @return
	 */
	public Iterator<Orders> getOrders(int type, String email);
	
	/**
	 * 获取默认收货地址
	 * @param email
	 * @return
	 */
	public Address getDefaultAddress(String email);
	
	/**
	 * 付款
	 * @param oid
	 * @param email
	 * @return
	 */
	public int payOrder(int oid, String email);
	
	/**
	 * 直接购买
	 * @return
	 */
	public int directPay(int gid, String email);
	
	/**
	 * 修改用户订单状态
	 * @param email
	 * @param oid
	 * @param status
	 * @return
	 */
	public int modOrderStatus(String email, int oid, int status);
}
