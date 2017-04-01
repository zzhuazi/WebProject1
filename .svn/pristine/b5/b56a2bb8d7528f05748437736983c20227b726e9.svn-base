package cn.enterprise.dao;

import java.util.Iterator;

import cn.enterprise.po.Orders;

public interface OrderDao extends BaseDao<Orders> {
	
	/*
	 * 增加新的订单
	 * @param order
	 */
	public void add(Orders order);
	
	/**
	 * 管理员获取所有订单记录
	 * @return
	 */
	public Iterator<Orders> getAllOrder(int status, int page);
	
	/**
	 * 更新订单状态
	 * @param oid
	 * @param status
	 * @return
	 */
	public int updateOrderStatus(int oid, int status);
	
	/**
	 * 获取某类型订单的总页数10条/页
	 * @param status
	 * @param page
	 * @return
	 */
	public int getTotalPage(int status);
	
	/**
	 * 更新订单数量
	 * @param oid
	 * @param number
	 * @return
	 */
	public int updateNumber(int oid, int number, String email);
	/**
	 * 根据id获取订单
	 * @param oid
	 * @return
	 */
	public Orders get(int oid);
	/**
	 * 修改订单状态值
	 * @param oid
	 * @param status
	 */
	public void mod(int oid, int status);
}
