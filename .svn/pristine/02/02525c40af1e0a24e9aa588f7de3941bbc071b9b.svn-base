package cn.enterprise.service;

import java.util.Iterator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.enterprise.dao.OrderDao;
import cn.enterprise.dao.UserDao;
import cn.enterprise.po.Address;
import cn.enterprise.po.Orders;
import cn.enterprise.po.User;

@Service("orderService")
public class OrderServiceImpl implements OrderService {
	@Autowired
	private UserDao userDao;
	@Autowired
	private OrderDao orderDao;
	
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	public void setOrderDao(OrderDao orderDao) {
		this.orderDao = orderDao;
	}

	@Override
	public Iterator<Orders> getOrders(int type, String email) {
		return userDao.getOrders(type, email);
	}

	@Override
	public Address getDefaultAddress(String email) {
		return userDao.getDefaultAddress(email);
	}

	@Override
	public int payOrder(int oid, String email) {
		return userDao.payOrder(oid, email);
	}

	@Override
	public int directPay(int gid, String email) {
		return userDao.directPay(gid, email);
	}

	@Override
	public int modOrderStatus(String email, int oid, int status) {
		try {
			User user = userDao.get(email);
			if (null != user) {
				Orders orders = orderDao.get(oid);
				if (orders.getUser().getEmail().equals(email)) {
					orderDao.mod(oid, status);
					return 1;
				}
			}
		} catch (Exception e) {
		}
		
		return 0;
	}

}
