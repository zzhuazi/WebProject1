package cn.enterprise.service;

import java.util.Date;
import java.util.Iterator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.enterprise.dao.GoodsDao;
import cn.enterprise.dao.OrderDao;
import cn.enterprise.dao.UserDao;
import cn.enterprise.po.Goods;
import cn.enterprise.po.Orders;
import cn.enterprise.po.User;
import cn.enterprise.util.OrderNumUtil;

@Service("shoppingCartService")
public class ShoppingCartServiceImpl implements ShoppingCartService {

	@Autowired
	private GoodsDao goodsDao;
	@Autowired
	private UserDao userDao;
	@Autowired
	private OrderDao orderDao;
	
	@Override
	public int addToCart(int gid, int number, String email) {
		System.out.println(gid + email);
		Goods good = goodsDao.get(gid);
		User user = userDao.get(email);
		String num = OrderNumUtil.getNum(user.getId(), good.getId());
		Orders order = new Orders();
		order.setNo(num);
		order.setUser(user);
		order.setGoods(good);
		order.setNumber(number);
		order.setStatus(1);
		order.setModTime(new Date());
		userDao.addOrder(order);
		return 0;
	}
	
	public Iterator<Orders> getCartOrders(int status, String email) {
		return userDao.getAllOrders(status, email);
	}
	
	public void updateCartOrders(String email, int number, int status, int oid) {
		userDao.updateShoppingCart(email, number, status, oid);
	}
	
	
	/*****************************/
	public void setGoodsDao(GoodsDao goodsDao) {
		this.goodsDao = goodsDao;
	}
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	public void setOrderDao(OrderDao orderDao) {
		this.orderDao = orderDao;
	}

	@Override
	public int winpUpCart(int oid, String email) {
		return userDao.winpUpCart(oid, email);
	}

	@Override
	public int updateNumber(int oid, int number, String email) {
		return orderDao.updateNumber(oid, number, email);
	}
}
