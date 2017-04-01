package cn.enterprise.dao;

import java.util.Iterator;
import java.util.List;

import cn.enterprise.po.Address;
import cn.enterprise.po.Orders;
import cn.enterprise.po.User;

public interface UserDao extends BaseDao<User> {
	
	/**
	 * 获取所有用户
	 * @return
	 */
	public List<User> getAll();
	
	/**
	 * 通过id获取用户
	 * @param email
	 * @return
	 */
	public User get(int id);
	
	/**
	 * 通过Email获取密码
	 * @param email
	 * @return
	 */
	public String getPwd(String email);
	
	/**
	 * 更新用户信息
	 * @param user
	 */
	public void update(User user);
	
	/**
	 * 根据email获取用户信息
	 * @param email
	 * @return
	 */
	public User get(String email);
	
	/**
	 * 用户添加一个订单信息(order实例里必须存在user属性，并且user属性的email不为空)
	 * @param order
	 * @return 成功1
	 */
	public int addOrder(Orders order);
	
	/**
	 * 获取email关联的所有购物车订单
	 * @param status
	 * @param email
	 * @return
	 */
	public Iterator<Orders> getAllOrders(int status, String email);
	
	/**
	 * 
	 * @param type 订单类型：0全部 1待付款 2待发货 3待收货 4待评价
	 * @param email
	 * @return
	 */
	public Iterator<Orders> getOrders(int type, String email);
	
	/**
	 * 用户添加一个地址信息(address实例里必须存在user属性，并且user属性的email不为空)
	 * @param order
	 * @return 成功1
	 */
	public int addAddress(Address address);
	
	/**
	 * 获取email关联的所有收货地址
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
	 */
	public void updateAddress(Address address, String email);
	
	/**
	 * 删除地址
	 * @param addressId
	 * @param email
	 * @return
	 */
	public void deleteAddress(int addressId, String email);
	
	/**
	 * 更新email该用户的某个订单
	 * @param order
	 * @param email
	 */
	public void updateOrders(Orders order, String email);
	
	/**
	 * 更新购物车
	 * @param email
	 * @param number
	 * @param status
	 * @param oid
	 */
	public void updateShoppingCart(String email, int number, int status, int oid);
	
	/**
	 * 获取基本信息
	 * @param email
	 * @return
	 */
	public User getInfo(String email);
	
	/**
	 * 更新个人信息
	 * @param user
	 * @return
	 */
	public int updateInfo(User user);
	
	/**
	 * 结算购物车
	 * @param oid
	 * @param email
	 * @return 1
	 */
	public int winpUpCart(int oid, String email);
	
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
	 * 修改密码
	 * @param oPwd
	 * @param nPwd
	 * @param email
	 * @return
	 */
	public int resetPwd(String oPwd, String nPwd, String email);
	
	/**
	 * 直接购买
	 * @param gid
	 * @param email
	 * @return
	 */
	public int directPay(int gid, String email);
}
