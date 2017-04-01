package cn.enterprise.service;

import java.util.Iterator;

import cn.enterprise.po.Address;
import cn.enterprise.po.Orders;

public interface OrderService {
	
	/**
	 * 
	 * @param type �������ͣ�0ȫ�� 1������ 2������ 3���ջ� 4������
	 * @param email
	 * @return
	 */
	public Iterator<Orders> getOrders(int type, String email);
	
	/**
	 * ��ȡĬ���ջ���ַ
	 * @param email
	 * @return
	 */
	public Address getDefaultAddress(String email);
	
	/**
	 * ����
	 * @param oid
	 * @param email
	 * @return
	 */
	public int payOrder(int oid, String email);
	
	/**
	 * ֱ�ӹ���
	 * @return
	 */
	public int directPay(int gid, String email);
	
	/**
	 * �޸��û�����״̬
	 * @param email
	 * @param oid
	 * @param status
	 * @return
	 */
	public int modOrderStatus(String email, int oid, int status);
}