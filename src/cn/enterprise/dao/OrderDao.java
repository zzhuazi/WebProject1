package cn.enterprise.dao;

import java.util.Iterator;

import cn.enterprise.po.Orders;

public interface OrderDao extends BaseDao<Orders> {
	
	/*
	 * �����µĶ���
	 * @param order
	 */
	public void add(Orders order);
	
	/**
	 * ����Ա��ȡ���ж�����¼
	 * @return
	 */
	public Iterator<Orders> getAllOrder(int status, int page);
	
	/**
	 * ���¶���״̬
	 * @param oid
	 * @param status
	 * @return
	 */
	public int updateOrderStatus(int oid, int status);
	
	/**
	 * ��ȡĳ���Ͷ�������ҳ��10��/ҳ
	 * @param status
	 * @param page
	 * @return
	 */
	public int getTotalPage(int status);
	
	/**
	 * ���¶�������
	 * @param oid
	 * @param number
	 * @return
	 */
	public int updateNumber(int oid, int number, String email);
	/**
	 * ����id��ȡ����
	 * @param oid
	 * @return
	 */
	public Orders get(int oid);
	/**
	 * �޸Ķ���״ֵ̬
	 * @param oid
	 * @param status
	 */
	public void mod(int oid, int status);
}