package cn.enterprise.service;

import java.util.Date;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.enterprise.dao.AdminDao;
import cn.enterprise.dao.GoodsDao;
import cn.enterprise.dao.OrderDao;
import cn.enterprise.dao.UserDao;
import cn.enterprise.po.Admin;
import cn.enterprise.po.Goods;
import cn.enterprise.po.Orders;
import cn.enterprise.po.User;
import cn.enterprise.util.MD5;

@Service("adminService")
@Transactional
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminDao adminDao;
	@Autowired
	private UserDao userDao;
	@Autowired
	private GoodsDao goodsDao;
	@Autowired
	private OrderDao orderDao;
	
	@Override
	public boolean login(Admin admin) {
		String pwd = MD5.getMD5String(admin.getPwd());
		if (pwd.equals(adminDao.getPwd(admin.getEmail()))) {
			return true;
		}
		return false;
	}
	

	@Override
	public String getAdminName(String email) {
		return adminDao.getName(email);
	}


	@Override
	public int addUser(User user) {
		user.setPwd(MD5.getMD5String(user.getPwd()));
		user.setRegTime(new Date());
		userDao.add(user);
		return 0;
	}

	@Override
	public List<User> getAllUser() {
		return userDao.getAll();
	}
	
	@Override
	public User getUser(int id) {
		return userDao.get(id);
	}
	
	@Override
	public int updateUser(User user) {
		user.setPwd(MD5.getMD5String(user.getPwd()));
		try {
			userDao.update(user);
			return 1;
		} catch (Exception e) {
			return 0;
		}
	}
	
	@Override
	public int addGoods(Goods goods) {
		try {
			goodsDao.add(goods);
			return 1;
		} catch (Exception e) {
		}
		return 0;
	}

	@Override
	public List<Goods> getAddGoods() {
		return goodsDao.getAll();
	}


	@Override
	public Goods getGoods(int id) {
		return goodsDao.get(id);
	}

	@Override
	public int updateGoods(Goods goods) {
		try {
			goodsDao.update(goods);
			return 1;
		} catch (Exception e) {
		}
		return 0;
	}

	@Override
	public Iterator<Orders> getAllOrders(int page) {
		return orderDao.getAllOrder(1, page);
	}
	

	@Override
	public Iterator<Orders> getBehalfPayment(int page) {
		return orderDao.getAllOrder(2, page);
	}

	@Override
	public Iterator<Orders> getBehalfSendGoods(int page) {
		return orderDao.getAllOrder(4, page);
	}

	@Override
	public Iterator<Orders> getWaitConfirmPayment(int page) {
		return orderDao.getAllOrder(7, page);
	}

	@Override
	public Iterator<Orders> getApplyForSalesReturn(int page) {
		return orderDao.getAllOrder(8, page);
	}
	
	
	/*****************************************************/
	public void setAdminDao(AdminDao adminDao) {
		this.adminDao = adminDao;
	}
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	public void setGoodsDao(GoodsDao goodsDao) {
		this.goodsDao = goodsDao;
	}
	public void setOrderDao(OrderDao orderDao) {
		this.orderDao = orderDao;
	}

	@Override
	public int dealWithOrder(int oid, int status) {
		return orderDao.updateOrderStatus(oid, status);
	}


	@Override
	public int getTotalPage(int status) {
		return orderDao.getTotalPage(status);
	}


	@Override
	public int deleteGoods(int gid) {
		return goodsDao.delete(gid);
	}

}
