package cn.enterprise.action;

import java.util.Iterator;
import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;
import org.apache.struts2.json.annotations.JSON;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;

import cn.enterprise.po.Orders;
import cn.enterprise.service.ShoppingCartService;
import cn.enterprise.service.UserService;

@Controller
@Scope("prototype")
public class ShoppingCartAction extends ActionSupport
	implements RequestAware, SessionAware {

	@Autowired
	private UserService userService;
	
	private static final long serialVersionUID = 1L;

	private int gid;
	private int number;
	private int oid;
	
	private int result;//操作结果(包含json)
	
	public int getResult() {
		return result;
	}

	public void setResult(int result) {
		this.result = result;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	private String tip;//操作后提示
	
	public String getTip() {
		return tip;
	}

	public void setTip(String tip) {
		this.tip = tip;
	}

	@Autowired
	private ShoppingCartService shoppingCartService;
	
	private Map<String, Object> request;
	private Map<String, Object> session;
	
	public String addToCart() {
		String email = (String) session.get("userEmail");
		shoppingCartService.addToCart(gid, number, email);
		Iterator<Orders> cartOrders = shoppingCartService.getCartOrders(1, email);
		request.put("cartOrders", cartOrders);
		return SUCCESS;
	}
	
	public String toCartOrders() {
		String email = (String) session.get("userEmail");
		Iterator<Orders> cartOrders = shoppingCartService.getCartOrders(1, email);
		request.put("cartOrders", cartOrders);
		return SUCCESS;
	}
	
	public String updateCartOrders() {
		String email = (String) session.get("userEmail");
		shoppingCartService.updateCartOrders(email, number, 1, oid);
		return SUCCESS;
	}
	/**
	 * 删除购物车
	 * @return
	 */
	public String deleteCartOrders() {
		String email = (String) session.get("userEmail");
		shoppingCartService.updateNumber(oid, 0, email);
		return SUCCESS;
	}
	
	/**
	 * 更改数量
	 * @return
	 */
	public String update() {
		String email = (String) session.get("userEmail");
		int r = shoppingCartService.updateNumber(oid, number, email);
		if (r==0) {
			//系统错误
		} else {
			//修改成功
			result = number;
		}
		return SUCCESS;
	}

	/**
	 * 结算
	 * @return
	 */
	public String winpUpCart() {
		String email = (String) session.get("userEmail");
		int result = shoppingCartService.winpUpCart(oid, email);
		switch (result) {
			case 0:
				tip = "系统错误";
				break;
			case 1:
				tip = "付款成功";
				session.put("userBalance", userService.getInfo(email).getBalance());
				break;
			case 2:
				tip = "还没有收货地址";
				break;
			case 3:
				tip = "库存不足";
				break;
			case 4:
				tip = "余额不足";
				break;
			default:
				tip = "系统错误";
				break;
		}
		return SUCCESS;
	}

	/*****************************************/
	
	public void setGid(int gid) {
		this.gid = gid;
	}
	
	public int getGid() {
		return gid;
	}
	
	public void setNumber(int number) {
		this.number = number;
	}
	
	public int getNumber() {
		return number;
	}
	
	public void setShoppingCartService(ShoppingCartService shoppingCartService) {
		this.shoppingCartService = shoppingCartService;
	}
	
	public void setRequest(Map<String, Object> request) {
		this.request = request;
	}
	
	@JSON(serialize=false)
	public Map<String, Object> getRequest() {
		return request;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
	
	@JSON(serialize=false)
	public Map<String, Object> getSession() {
		return session;
	}
	
	public int getOid() {
		return oid;
	}

	public void setOid(int oid) {
		this.oid = oid;
	}

}
