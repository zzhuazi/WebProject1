package cn.enterprise.service;

import java.util.Date;
import java.util.Iterator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.enterprise.dao.UserDao;
import cn.enterprise.po.Address;
import cn.enterprise.po.User;
import cn.enterprise.util.MD5;

@Service("userService")
@Transactional
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userDao;
	
	@Override
	public int login(User user) {
		String pwd = MD5.getMD5String(user.getPwd());
		if (pwd.equals(userDao.getPwd(user.getEmail()))) {
			return 1;
		}
		return 0;
	}
	@Override
	public User login(String email, String pwd) {
		User user = userDao.get(email);
		if (user.getPwd().equals(MD5.getMD5String(pwd))) {
			return user;
		}
		return null;
	}
	
	@Override
	public int register(User user) {
		user.setName(user.getEmail());
		user.setPwd(MD5.getMD5String(user.getPwd()));
		user.setRegTime(new Date());
		try {
			userDao.add(user);
			return 1;
		} catch (Exception e) {
		}
		return 0;
	}
	
	@Override
	public User getUser(String email) {
		return userDao.get(email);
	}


	@Override
	public int updateUser(User user) {
		user.setPwd(MD5.getMD5String(user.getPwd()));
		try {
			userDao.update(user);
			return 1;
		} catch (Exception e) {
		}
		return 0;
	}
	
	
	@Override
	public int addaddress(String email, Address address) {
		User user = new User();
		user.setEmail(email);
		address.setUser(user);
		System.out.println(address);
		userDao.addAddress(address);
		return 1;
	}
	
	@Override
	public Iterator<Address> getAllAddress(String email) {
		return userDao.getAllAddress(email);
	}

	@Override
	public Address getAddress(String email, int addressId) {
		return userDao.getAddress(email, addressId);
	}

	@Override
	public int updateAddress(Address address, String email) {
		userDao.updateAddress(address, email);
		return 1;
	}
	
	@Override
	public int deleteAddress(int addressId, String email) {
		userDao.deleteAddress(addressId, email);
		return 1;
	}
	
	@Override
	public User getInfo(String email) {
		return userDao.getInfo(email);
	}
	
	@Override
	public int updateInfo(User user) {
		userDao.updateInfo(user);
		return 1;
	}

	/******************************************/
	
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	@Override
	public int resetPwd(String oPwd, String nPwd, String email) {
		oPwd = MD5.getMD5String(oPwd);
		nPwd = MD5.getMD5String(nPwd);
		return userDao.resetPwd(oPwd, nPwd, email);
	}

}
