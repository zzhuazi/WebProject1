package cn.enterprise.service;

import java.util.Iterator;
import java.util.List;

import cn.enterprise.po.Admin;
import cn.enterprise.po.Goods;
import cn.enterprise.po.Orders;
import cn.enterprise.po.User;

public interface AdminService {
	
	/**
	 * 管理员登录
	 * @param admin
	 * @return
	 */
	public boolean login(Admin admin);
	
	/**
	 * 获取名字
	 * @param email
	 * @return
	 */
	public String getAdminName(String email);
	
	/**
	 * 新增一个用户
	 * @param user
	 * @return
	 */
	public int addUser(User user);
	
	/**
	 * 获取所有用户
	 * @return
	 */
	public List<User> getAllUser();
	
	/**
	 * 根据id获取用户信息
	 * @param id
	 * @return
	 */
	public User getUser(int id);
	
	/**
	 * 更新user
	 * @param user
	 * @return 成功1
	 */
	public int updateUser(User user);
	
	/**
	 * 添加一样商品
	 * @param goods
	 * @return 成功1
	 */
	public int addGoods(Goods goods);
	
	/**
	 * 获取所有商品信息
	 * @return
	 */
	public List<Goods> getAddGoods();
	
	/**
	 * 通过Id 获取商品信息
	 * @param id
	 * @return
	 */
	public Goods getGoods(int id);
	
	/**
	 * 更新商品信息
	 * @param goods
	 * @return 成功1
	 */
	public int updateGoods(Goods goods);
	
	/**
	 * 获取所有订单记录
	 * @return
	 */
	public Iterator<Orders> getAllOrders(int page);
	
	/**
	 * 获取待付款订单记录
	 * @return
	 */
	public Iterator<Orders> getBehalfPayment(int page);
	
	/**
	 * 获取待发货订单记录
	 * @return
	 */
	public Iterator<Orders> getBehalfSendGoods(int page);
	
	/**
	 * 获取待收货订单记录
	 * @return
	 */
	public Iterator<Orders> getWaitConfirmPayment(int page);
	
	/**
	 * 获取用户提交的申请退货订单记录
	 * @return
	 */
	public Iterator<Orders> getApplyForSalesReturn(int page);
	
	/**
	 * 处理订单
	 * @param oid
	 * @param status
	 * @return
	 */
	public int dealWithOrder(int oid, int status);
	
	/**
	 * 获取某类型订单的总页数
	 * @param status
	 * @return
	 */
	public int getTotalPage(int status);
	
	/**
	 * 删除商品
	 * @param gid
	 * @return
	 */
	public int deleteGoods(int gid);
}
