package cn.enterprise.service;

import java.util.Iterator;

import cn.enterprise.po.Address;
import cn.enterprise.po.User;

public interface UserService {
	
	/**
	 * 登录
	 * @return 成功1
	 */
	public int login(User user);
	public User login(String email, String pwd);
	
	/**
	 * 注册
	 * @param user
	 * @return 成功1
	 */
	public int register(User user);
	
	/**
	 * 通过邮箱获取用户信息
	 * @param email
	 * @return
	 */
	public User getUser(String email);
	
	/**
	 * 更新用户信息
	 * @param user
	 * @return 成功1
	 */
	public int updateUser(User user);
	
	/**
	 * 新增地址
	 * @param user
	 * @return 成功1
	 */
	public int addaddress(String email, Address address);
	
	/**
	 * 通过用户email获取所有用户的收货地址
	 * @param email
	 * @return
	 */
	public Iterator<Address> getAllAddress(String email);
	
	/**
	 * 通过email 和 addressId 获取地址信息
	 * @param email
	 * @param addressId
	 * @return
	 */
	public Address getAddress(String email, int addressId);
	
	/**
	 * 更新email用户的一个地址
	 * @param address
	 * @param email
	 * @return 成功1
	 */
	public int updateAddress(Address address, String email);
	
	/**
	 * 删除地址
	 * @param addressId
	 * @param email
	 * @return
	 */
	public int deleteAddress(int addressId, String email);
	
	/**
	 *  获取基本信息
	 * @param email
	 * @return
	 */
	public User getInfo(String email);
	
	/**
	 * 更新信息
	 * @param user
	 * @return
	 */
	public int updateInfo(User user);
	
	/**
	 * 修改密码
	 * @param oPwd
	 * @param nPwd
	 * @param email
	 * @return
	 */
	public int resetPwd(String oPwd, String nPwd, String email);
}
