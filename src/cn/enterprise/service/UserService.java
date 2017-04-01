package cn.enterprise.service;

import java.util.Iterator;

import cn.enterprise.po.Address;
import cn.enterprise.po.User;

public interface UserService {
	
	/**
	 * ��¼
	 * @return �ɹ�1
	 */
	public int login(User user);
	public User login(String email, String pwd);
	
	/**
	 * ע��
	 * @param user
	 * @return �ɹ�1
	 */
	public int register(User user);
	
	/**
	 * ͨ�������ȡ�û���Ϣ
	 * @param email
	 * @return
	 */
	public User getUser(String email);
	
	/**
	 * �����û���Ϣ
	 * @param user
	 * @return �ɹ�1
	 */
	public int updateUser(User user);
	
	/**
	 * ������ַ
	 * @param user
	 * @return �ɹ�1
	 */
	public int addaddress(String email, Address address);
	
	/**
	 * ͨ���û�email��ȡ�����û����ջ���ַ
	 * @param email
	 * @return
	 */
	public Iterator<Address> getAllAddress(String email);
	
	/**
	 * ͨ��email �� addressId ��ȡ��ַ��Ϣ
	 * @param email
	 * @param addressId
	 * @return
	 */
	public Address getAddress(String email, int addressId);
	
	/**
	 * ����email�û���һ����ַ
	 * @param address
	 * @param email
	 * @return �ɹ�1
	 */
	public int updateAddress(Address address, String email);
	
	/**
	 * ɾ����ַ
	 * @param addressId
	 * @param email
	 * @return
	 */
	public int deleteAddress(int addressId, String email);
	
	/**
	 *  ��ȡ������Ϣ
	 * @param email
	 * @return
	 */
	public User getInfo(String email);
	
	/**
	 * ������Ϣ
	 * @param user
	 * @return
	 */
	public int updateInfo(User user);
	
	/**
	 * �޸�����
	 * @param oPwd
	 * @param nPwd
	 * @param email
	 * @return
	 */
	public int resetPwd(String oPwd, String nPwd, String email);
}
