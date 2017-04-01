package cn.enterprise.service;

import java.util.Iterator;
import java.util.List;

import cn.enterprise.po.Admin;
import cn.enterprise.po.Goods;
import cn.enterprise.po.Orders;
import cn.enterprise.po.User;

public interface AdminService {
	
	/**
	 * ����Ա��¼
	 * @param admin
	 * @return
	 */
	public boolean login(Admin admin);
	
	/**
	 * ��ȡ����
	 * @param email
	 * @return
	 */
	public String getAdminName(String email);
	
	/**
	 * ����һ���û�
	 * @param user
	 * @return
	 */
	public int addUser(User user);
	
	/**
	 * ��ȡ�����û�
	 * @return
	 */
	public List<User> getAllUser();
	
	/**
	 * ����id��ȡ�û���Ϣ
	 * @param id
	 * @return
	 */
	public User getUser(int id);
	
	/**
	 * ����user
	 * @param user
	 * @return �ɹ�1
	 */
	public int updateUser(User user);
	
	/**
	 * ����һ����Ʒ
	 * @param goods
	 * @return �ɹ�1
	 */
	public int addGoods(Goods goods);
	
	/**
	 * ��ȡ������Ʒ��Ϣ
	 * @return
	 */
	public List<Goods> getAddGoods();
	
	/**
	 * ͨ��Id ��ȡ��Ʒ��Ϣ
	 * @param id
	 * @return
	 */
	public Goods getGoods(int id);
	
	/**
	 * ������Ʒ��Ϣ
	 * @param goods
	 * @return �ɹ�1
	 */
	public int updateGoods(Goods goods);
	
	/**
	 * ��ȡ���ж�����¼
	 * @return
	 */
	public Iterator<Orders> getAllOrders(int page);
	
	/**
	 * ��ȡ���������¼
	 * @return
	 */
	public Iterator<Orders> getBehalfPayment(int page);
	
	/**
	 * ��ȡ������������¼
	 * @return
	 */
	public Iterator<Orders> getBehalfSendGoods(int page);
	
	/**
	 * ��ȡ���ջ�������¼
	 * @return
	 */
	public Iterator<Orders> getWaitConfirmPayment(int page);
	
	/**
	 * ��ȡ�û��ύ�������˻�������¼
	 * @return
	 */
	public Iterator<Orders> getApplyForSalesReturn(int page);
	
	/**
	 * ��������
	 * @param oid
	 * @param status
	 * @return
	 */
	public int dealWithOrder(int oid, int status);
	
	/**
	 * ��ȡĳ���Ͷ�������ҳ��
	 * @param status
	 * @return
	 */
	public int getTotalPage(int status);
	
	/**
	 * ɾ����Ʒ
	 * @param gid
	 * @return
	 */
	public int deleteGoods(int gid);
}