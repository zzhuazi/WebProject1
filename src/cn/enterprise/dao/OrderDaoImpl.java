package cn.enterprise.dao;

import java.util.Iterator;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cn.enterprise.po.Goods;
import cn.enterprise.po.Orders;
import cn.enterprise.po.User;

@Repository("orderDao")
public class OrderDaoImpl implements OrderDao {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public void add(Orders orders) {
		
	}

	@SuppressWarnings("unchecked")
	@Override
	public Iterator<Orders> getAllOrder(int status, int page) {
		int start = (page - 1) * 10;
		int end = page * 10;
		String sql = "";
		switch (status) {
			//������
			case 2:
				sql = "select * from orders where status = 2 limit " + start + ", " + end;
				break;
			//������
			case 4:
				sql = "select * from orders where status = 4 limit " + start + ", " + end;
				break;
			//���ջ�
			case 7:
				sql = "select * from orders where status = 7 limit " + start + ", " + end;
				break;
			//�û��ύ�˻�����
			case 8:
				sql = "select * from orders where status = 8 limit " + start + ", " + end;
				break;
			default:
				sql = "select * from orders where status != 1 limit " + start + ", " + end;
				break;
		}
		
		Session session = sessionFactory.getCurrentSession();
		return session.createSQLQuery(sql).addEntity(Orders.class).list().iterator();
	}
	
	/***************************************/
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public int updateOrderStatus(int oid, int status) {
		Session session = sessionFactory.getCurrentSession();
		Orders order = (Orders) session.get(Orders.class, oid);
		order.setStatus(status);
		if (status == 6 || status == 9) {
			//��̨�ܾ�����,�˿��
			order.getUser().setBalance(order.getUser().getBalance() + order.getGoods().getPrice() * order.getNumber());
		}
		
		session.update(order);
		session.flush();
		return 1;
	}

	@Override
	public int getTotalPage(int status) {
		String sql = "";
		switch (status) {
			//������
			case 2:
				sql = "select count(id) from orders where status = 2 ";
				break;
			//������
			case 4:
				sql = "select count(id) from orders where status = 4 ";
				break;
			//���ջ�
			case 7:
				sql = "select count(id) from orders where status = 7 ";
				break;
			//�û��ύ�˻�����
			case 8:
				sql = "select count(id) from orders where status = 8 ";
				break;
			default:
				sql = "select count(id) from orders where status != 1 ";
				break;
		}
		
		Session session = sessionFactory.getCurrentSession();
		String count = session.createSQLQuery(sql).uniqueResult().toString();
		int total = Integer.parseInt(count);
		int totalPage = total / 10;
		if (total % 10 != 0) {
			totalPage++;
		}
		return totalPage;
	}

	@Override
	public int updateNumber(int oid, int number, String email) {
		Session session = sessionFactory.getCurrentSession();
		Orders order = (Orders) session.get(Orders.class, oid);
		if (order.getUser().getEmail().equals(email)) {
			order.setNumber(number);
			if (number == 0) {
				Goods goods = order.getGoods();
				User user = order.getUser();
				goods.getOrders().remove(order);
				user.getOrders().remove(order);
				session.update(user);
				session.update(goods);
				session.delete(order);
				session.flush();
			} else {
				session.update(order);
				session.flush();
			}
			return 1;
		} else {
			//ϵͳ����
			return 0;
		}
		
		
	}

	@Override
	public Orders get(int oid) {
		Session session = sessionFactory.getCurrentSession();
		return (Orders) session.load(Orders.class, oid);
	}

	@Override
	public void mod(int oid, int status) {
		Session session = sessionFactory.getCurrentSession();
		Orders orders = (Orders) session.load(Orders.class, oid);
		orders.setStatus(status);
		session.flush();
	}
}
