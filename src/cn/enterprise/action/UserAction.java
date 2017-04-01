package cn.enterprise.action;

import java.util.Iterator;
import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import cn.enterprise.po.Address;
import cn.enterprise.po.User;
import cn.enterprise.service.UserService;
import cn.enterprise.util.EmailUtil;
import cn.enterprise.vo.UserVo;

@Controller
@Scope("prototype")
public class UserAction extends ActionSupport 
	implements ModelDriven<UserVo>, SessionAware, RequestAware {

	private static final long serialVersionUID = 1L;
	
	private UserVo userVo;
	private String code;
	private int addressId;
	
	private String email;
	private String oPwd;
	private String nPwd;
	
	private String tip;//���������ʾ
	
	private Map<String, Object> session;
	private Map<String, Object> request;

	@Autowired
	private UserService userService;
	
	/**
	 * ��¼action
	 * @return
	 */
	public String login(){
//		if (userService.login(userVo.getUser()) == 1) {
//			session.put("userEmail", userVo.getUser().getEmail());
//			return SUCCESS;
//		}
		User user = userService.login(userVo.getUser().getEmail(), userVo.getUser().getPwd());
		if (null != user) {
			session.put("userEmail", user.getEmail());
			session.put("userBalance", user.getBalance());
			session.put("userName", user.getName());
			return SUCCESS;
		}
		return LOGIN;
	}
	
	/**
	 * ��ȡ��֤��
	 * @return
	 */
	public String sendCode() {
		int code = EmailUtil.getAuthCode();
		if (EmailUtil.sendAuthCode("" + code, email)) {
			session.put("code", "" + code);
			session.put("email", email);
			userVo.setStatus(1); 
		}
		return SUCCESS;
	}
	
	/**
	 * ע��
	 * @return
	 */
	public String register() {
		System.out.println(session);
		String sessionEmail = (String) session.get("email");
		String sessionCode = (String) session.get("code");
		if (null != sessionCode && null != sessionEmail) {
			if (sessionCode.equals(code) && sessionEmail.equals(userVo.getUser().getEmail())) {
				if (userService.register(userVo.getUser()) == 1) {
					System.out.println("ע��ɹ�");
					return SUCCESS;
				}
				session.remove("code");
				session.remove("email");
				System.out.println("ע��ʧ��");
			}
		} else {
			System.out.println("��û��ȡ��֤��");
		}
		return "register";
	}
	
	/**
	 * �޸ġ��һ����� ��ȡ��֤��
	 * @return
	 */
	public String sendCodeForResetPwd() {
		User u = userService.getUser(userVo.getUser().getEmail());
		if (null != u) {
			int code = EmailUtil.getAuthCode();
			EmailUtil.sendAuthCode("" + code, userVo.getUser().getEmail());
			session.put("code", "" + code);
			session.put("email", userVo.getUser().getEmail());
		} else {
			System.out.println("���˺Ų�����");
		}
		return SUCCESS;
	}
	
	/**
	 * �޸�����
	 * @return
	 */
	public String updatePwd() {
		String sessionEmail = (String) session.get("email");
		String sessionCode = (String) session.get("code");
		if (null != sessionCode && null != sessionEmail) {
			if (sessionCode.equals(code) && sessionEmail.equals(userVo.getUser().getEmail())) {
				
				if (userService.updateUser(userVo.getUser()) == 1) {
					System.out.println("�޸�����ɹ�");
					return SUCCESS;
				}
				session.remove("code");
				session.remove("email");
				System.out.println("�޸�����ʧ��");
			}
		} else {
			System.out.println("��û��ȡ��֤��");
		}
		return SUCCESS;
	}
	
	/**
	 * ��¼���޸�����
	 * @return
	 */
	public String resetPwd() {
		String email = (String) session.get("userEmail");
		System.out.println("oPwd:" + oPwd + ",  nPwd:" + nPwd);
		if (userService.resetPwd(oPwd, nPwd, email) == 1) {
			tip = "�޸�����ɹ�,�´ε�¼��Ч!";
		} else {
			tip = "�޸�����ʧ��,���ܾ��������!";
		}
		return SUCCESS;
	}
	
	/**
	 * ��ת���鿴������Ϣҳ��
	 * @return
	 */
	public String toLookInfo() {
		String email = (String) session.get("userEmail");
		request.put("info", userService.getUser(email));
		return SUCCESS;
	}
	
	/**
	 * ��ӵ�ַ
	 * @return
	 */
	public String addAddress() {
		String email = (String) session.get("userEmail");
		if (userService.addaddress(email, userVo.getAddress()) == 1) {
			tip = "��ӵ�ַ�ɹ�";
		}
		return SUCCESS;
	}
	
	/**
	 * �鿴��ַ
	 * @return
	 */
	public String lookAddress() {
		String email = (String) session.get("userEmail");
		Iterator<Address> iterator = userService.getAllAddress(email);
		request.put("allAddress", iterator);
		return SUCCESS;
	}
	
	/**
	 * ��ת�������ջ���ַҳ��
	 * @return
	 */
	public String toUpdateAddress() {
		String email = (String) session.get("userEmail");
		Address address = userService.getAddress(email, addressId);
		request.put("address", address);
		return SUCCESS;
	}
	
	/**
	 * ���µ�ַ
	 * @return
	 */
	public String updateAddress() {
		String email = (String) session.get("userEmail");
		userService.updateAddress(userVo.getAddress(), email);
		return SUCCESS;
	}
	
	/**
	 * ɾ����ַ
	 * @return
	 */
	public String deleteAddress() {
		String email = (String) session.get("userEmail");
		userService.deleteAddress(addressId, email);
		return SUCCESS;
	}
	
	/**
	 * ��ת���޸ĸ�����Ϣҳ��
	 * @return
	 */
	public String toUpdateInfo() {
		String email = (String) session.get("userEmail");
		request.put("info", userService.getInfo(email));
		return SUCCESS;
	}
	
	/**
	 * �޸ĸ�����Ϣ
	 * @return
	 */
	public String updateInfo() {
		String email = (String) session.get("userEmail");
		userVo.getUser().setEmail(email);
		userService.updateInfo(userVo.getUser());
		tip = "�޸ĳɹ�";
		return SUCCESS;
	}
	
	/**
	 * �˳���¼
	 * @return
	 */
	public String logout() {
		session.remove("userEmail");
		return SUCCESS;
	}
	
	
	/**************************************/
	public UserVo getUserVo() {
		return userVo;
	}

	public void setUserVo(UserVo userVo) {
		this.userVo = userVo;
	}
	
	public void setCode(String code) {
		this.code = code;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	@Override
	public UserVo getModel() {
		userVo = new UserVo();
		return userVo;
	}

	@Override
	public void setRequest(Map<String, Object> request) {
		this.request = request;
	}

	public int getAddressId() {
		return addressId;
	}

	public void setAddressId(int addressId) {
		this.addressId = addressId;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public Map<String, Object> getRequest() {
		return request;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getoPwd() {
		return oPwd;
	}

	public void setoPwd(String oPwd) {
		this.oPwd = oPwd;
	}

	public String getnPwd() {
		return nPwd;
	}

	public void setnPwd(String nPwd) {
		this.nPwd = nPwd;
	}
	
	public void setTip(String tip) {
		this.tip = tip;
	}
	
	public String getTip() {
		return tip;
	}
}
