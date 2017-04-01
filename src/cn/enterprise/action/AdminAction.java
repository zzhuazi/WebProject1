package cn.enterprise.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import cn.enterprise.comparator.GoodsDateComparator;
import cn.enterprise.comparator.OrderDateComparator;
import cn.enterprise.comparator.UserDateComparator;
import cn.enterprise.po.Goods;
import cn.enterprise.po.Orders;
import cn.enterprise.po.User;
import cn.enterprise.service.AdminService;
import cn.enterprise.util.UniqueFileName;
import cn.enterprise.vo.AdminVo;

@Controller
public class AdminAction extends ActionSupport 
	implements ModelDriven<AdminVo>, RequestAware, SessionAware {
	
	public AdminAction() {
		System.out.println("AdminAction.AdminAction()");
	}
	
	private static final long serialVersionUID = 1L;

	public void setAdminVo(AdminVo adminVo) {
		this.adminVo = adminVo;
	}

	private AdminVo adminVo;
	
	private int page = 1;
	private int totalPage = 1;
	
	private String tip;//���������ʾ
	
	private int status;		//����״̬
	private int oid;			//�������
	
	private int gid;			//��Ʒid
	
	private OrderDateComparator orderDateComparator = new OrderDateComparator();
	private UserDateComparator userDateComparator = new UserDateComparator();
	private GoodsDateComparator goodsDateComparator = new GoodsDateComparator();
	
	public GoodsDateComparator getGoodsDateComparator() {
		return goodsDateComparator;
	}

	public void setGoodsDateComparator(GoodsDateComparator goodsDateComparator) {
		this.goodsDateComparator = goodsDateComparator;
	}

	public UserDateComparator getUserDateComparator() {
		return userDateComparator;
	}

	public void setUserDateComparator(UserDateComparator userDateComparator) {
		this.userDateComparator = userDateComparator;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public int getOid() {
		return oid;
	}

	public void setOid(int oid) {
		this.oid = oid;
	}

	private Map<String, Object> request;
	private Map<String, Object> session;
	
	@Autowired
	private AdminService adminService;
	
	/**
	 * ��¼action
	 * @return	
	 */
	public String login() {
		String email = (String) session.get("adminEmail");
		if(!"".equals(email) && email != null) {
			//�ѵ�¼
			return SUCCESS;
		}
		if (adminService.login(adminVo.getAdmin())) {
			session.put("adminEmail", adminVo.getAdmin().getEmail());
			session.put("adminName", adminService.getAdminName(adminVo.getAdmin().getEmail()));
			return SUCCESS;
		}
		return LOGIN;
	}
	
	/**
	 * ע��
	 * @return
	 */
	public String logout() {
		session.remove("adminEmail");
		return LOGIN;
	}
	
	/**
	 * ��ת����̨������ҳ��
	 * @return
	 */
	public String index() {
		return SUCCESS;
	}
	
	/**
	 * ����һ���û�
	 * @return
	 */
	public String addUser() {
		adminService.addUser(adminVo.getUser());
		return SUCCESS;
	}
	
	/**
	 * ��ת�������û�ҳ��
	 * @return
	 */
	public String toAddUser(){
		return SUCCESS;
	}
	
	/**
	 * �����û���Ϣ
	 * @return
	 */
	public String updateUser() {
		if (adminService.updateUser(adminVo.getUser()) == 1) {
			tip = "���³ɹ�";
			return SUCCESS;
		} else {
			tip = "����ʧ��";
		}
		return SUCCESS;
	}
	
	/**
	 * ��ת�������û���Ϣҳ��
	 * @return
	 */
	public String toUpdateUser() {
		int id = adminVo.getUser().getId();
		User user = adminService.getUser(id);
		request.put("user", user);
		return SUCCESS;
	}
	
	/**
	 * ��ת�������û�ҳ��
	 * @return
	 */
	public String toLookUser() {
		List<User> list = adminService.getAllUser();
		System.out.println("request:" + request);
		request.put("allUser", list);
		return SUCCESS;
	}
	
	/**
	 * �ϴ��ļ�
	 * @return �ļ�path
	 * @throws IOException
	 */
	private String saveFile() throws IOException {
		File file = adminVo.getFile();
		String fileName = UniqueFileName.getFileName();
		ServletContext application = ServletActionContext.getServletContext();
		//��ȡ��ʵ·��
		String root = application.getRealPath("/");
		//application.getContextPath()��ȡ�������·��
		File rootPath = new File(root + "/upload/img/goods");
		if (!rootPath.exists()) {
			System.out.println("�ļ�Ŀ¼������");
			rootPath.mkdirs();
		}
		String path = "upload/img/goods/" + fileName;
		if (file != null) {
			
			InputStream is = new FileInputStream(file);
			File saveFile = new File(rootPath, fileName);
			//path = saveFile.getAbsolutePath();
			OutputStream os = new FileOutputStream(saveFile);
			byte[] buffer = new byte[1024];
	        while(-1 != (is.read(buffer, 0, buffer.length))) {
	            os.write(buffer);
	        }
	        is.close();
	        os.close();
		}
		System.out.println(path);
		return path;
	}
	
	/**
	 * ������Ʒ
	 * @return
	 */
	public String addGoods() {
		try {
			String path = saveFile();
			adminVo.getGoods().setPath(path);
			System.out.println(adminVo.getGoods());
			System.out.println(adminService.addGoods(adminVo.getGoods()));
			tip = "������Ʒ�ɹ�";
		} catch (IOException e) {
			e.printStackTrace();
			tip = "������Ʒʧ��";
		}
		return SUCCESS;
	}
	
	/**
	 * ��ת��������Ʒҳ��
	 * @return
	 */
	public String toAddGoods() {
		return SUCCESS;
	}
	
	/**
	 * ��ת�������û���Ϣҳ��
	 * @return
	 */
	public String toUpdateGoods() {
		int id = adminVo.getGoods().getId();
		Goods goods = adminService.getGoods(id);
		request.put("goods", goods);
		return SUCCESS;
	}
	
	/**
	 * ������Ʒ
	 * @return
	 */
	public String updateGoods() {
		String path = null;
		if (null != adminVo.getFile()) {
			try {
				path = saveFile();
				adminVo.getGoods().setPath(path);
			} catch (IOException e) {
				tip = "�޸���Ʒ��Ϣʧ��";
				e.printStackTrace();
				return SUCCESS;
			}
		} 
		if (adminService.updateGoods(adminVo.getGoods()) == 1) {
			tip = "�޸���Ʒ��Ϣ�ɹ�";
			return SUCCESS;
		} else {
			tip = "�޸���Ʒ��Ϣʧ��";
		}
		return SUCCESS;
	}
	
	/**
	 * ��ת��������Ʒҳ��
	 * @return
	 */
	public String toLookGoods(){
		List<Goods> list = adminService.getAddGoods();
		request.put("allGoods", list);
		return SUCCESS;
	}
	
	/**
	 * ��ת���鿴����ҳ��
	 * @return
	 */
	public String toLookOrders() {
		totalPage = adminService.getTotalPage(1);
		Iterator<Orders> iterator = adminService.getAllOrders(page);
		request.put("allOrders", iterator);
		return SUCCESS;
	}
	
	/**
	 * ��ȡ���������¼
	 * @return
	 */
	public String behalfPayment() {
		request.put("allOrders", adminService.getBehalfPayment(page));
		return SUCCESS;
	}
	
	/**
	 * ��ȡ������������¼
	 * @return
	 */
	public String behalfSendGoods() {
		request.put("allOrders", adminService.getBehalfSendGoods(page));
		return SUCCESS;
	}
	
	/**
	 * ��ȡ���ջ�������¼
	 * @return
	 */
	public String waitUserConfirm() {
		request.put("allOrders", adminService.getWaitConfirmPayment(page));
		return SUCCESS;
	}
	
	/**
	 * ��ȡ�˻����붩����¼
	 * @return
	 */
	public String applyForSalesReturn() {
		request.put("allOrders", adminService.getApplyForSalesReturn(page));
		return SUCCESS;
	}
	
	public String dealWithOrder() {
		int result = adminService.dealWithOrder(oid, status);
		if (result == 1) {
			//�����ɹ�
			tip = "�����ɹ�";
		} else {
			//����ʧ��
			tip = "����ʧ��";
		}
		return SUCCESS;
	}
	/**
	 * ɾ����Ʒ
	 * @return
	 */
	public String deleteGoods() {
		adminService.deleteGoods(gid);
		tip = "ɾ���ɹ�";
		return SUCCESS;
	}
	
	/***********************�ָ���***************************/
	
	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}
	
	public void setAdmin(AdminVo adminVo) {
		this.adminVo = adminVo;
	}
	
	public AdminVo getAdminVo() {
		return adminVo;
	}
	
	@Override
	public AdminVo getModel() {
		adminVo = new AdminVo();
		return adminVo;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
	
	public Map<String, Object> getSession() {
		return session;
	}

	@Override
	public void setRequest(Map<String, Object> request) {
		this.request = request;
	}
	
	public Map<String, Object> getRequest() {
		return request;
	}

	public OrderDateComparator getOrderDateComparator() {
		return orderDateComparator;
	}

	public void setOrderDateComparator(OrderDateComparator orderDateComparator) {
		this.orderDateComparator = orderDateComparator;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
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
	
}