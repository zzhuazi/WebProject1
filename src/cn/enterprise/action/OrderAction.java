package cn.enterprise.action;

import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;

import cn.enterprise.service.OrderService;
import cn.enterprise.service.UserService;


@Controller
@Scope("prototype")
public class OrderAction extends ActionSupport
	implements SessionAware, RequestAware{

	private static final long serialVersionUID = 1L;
	
	private Map<String, Object> session;
	private Map<String, Object> request;
	
	private int type; //��������0 ȫ�� 1������ 2������ 3���ջ� 4����
	private int oid;
	private int gid;
	private int status;
	
	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	private String tip;
	
	@Autowired
	private OrderService orderService;
	@Autowired
	private UserService userService;

	public String lookOrder() {
		String email = (String) session.get("userEmail");
		request.put("defaultAddress", orderService.getDefaultAddress(email));
		request.put("orders", orderService.getOrders(type, email));
		return SUCCESS;
	}
	
	/**
	 * ����
	 * @return
	 */
	public String payOrder() {
		String email = (String) session.get("userEmail");
		int result = orderService.payOrder(oid, email);
		if (result == 1) {
			tip = "����ɹ�";
			session.put("userBalance", userService.getInfo(email).getBalance());
			return SUCCESS;
		} else if (result == 2) {
			tip = "����";
		} else if (result == 3) {
			tip = "��û���ջ���ַ";
		} else if (result == 4) {
			tip = "��治��";
		} else {
			tip = "ϵͳ�������Ժ�����";
		} 
		return SUCCESS;
	}
	
	/**
	 * ֱ�ӹ���
	 * @return
	 */
	public String directPay() {
		String email = (String) session.get("userEmail");
		orderService.directPay(gid, email);
		return SUCCESS;
	}
	/**
	 * ȷ���ջ�
	 * @return
	 */
	public String confirm(){
		String email = (String) session.get("userEmail");
		if (orderService.modOrderStatus(email, oid, 10) == 1)
			tip = "ȷ���ջ��ɹ�";
		else
			tip = "ȷ���ջ�ʧ��";
		return SUCCESS;
	}
	/**
	 * �˻��˿�
	 * @return
	 */
	public String refund(){
		String email = (String) session.get("userEmail");
		if (orderService.modOrderStatus(email, oid, 8) == 1)
			tip = "�������ύ";
		else
			tip = "����ʧ��ʧ��";
		return SUCCESS;
	}
	/****************************/
	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
	
	public void setOrderService(OrderService orderService) {
		this.orderService = orderService;
	}
	
	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public Map<String, Object> getRequest() {
		return request;
	}

	@Override
	public void setRequest(Map<String, Object> request) {
		this.request = request;
	}

	public int getOid() {
		return oid;
	}

	public void setOid(int oid) {
		this.oid = oid;
	}

	public String getTip() {
		return tip;
	}

	public void setTip(String tip) {
		this.tip = tip;
	}

	public int getGid() {
		return gid;
	}

	public void setGid(int gid) {
		this.gid = gid;
	}
	
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
}