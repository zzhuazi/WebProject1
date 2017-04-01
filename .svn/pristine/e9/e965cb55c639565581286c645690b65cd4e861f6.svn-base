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
	
	private String tip;//操作结果显示
	
	private int status;		//订单状态
	private int oid;			//订单编号
	
	private int gid;			//商品id
	
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
	 * 登录action
	 * @return	
	 */
	public String login() {
		String email = (String) session.get("adminEmail");
		if(!"".equals(email) && email != null) {
			//已登录
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
	 * 注销
	 * @return
	 */
	public String logout() {
		session.remove("adminEmail");
		return LOGIN;
	}
	
	/**
	 * 跳转到后台管理主页面
	 * @return
	 */
	public String index() {
		return SUCCESS;
	}
	
	/**
	 * 新增一个用户
	 * @return
	 */
	public String addUser() {
		adminService.addUser(adminVo.getUser());
		return SUCCESS;
	}
	
	/**
	 * 跳转到新增用户页面
	 * @return
	 */
	public String toAddUser(){
		return SUCCESS;
	}
	
	/**
	 * 更新用户信息
	 * @return
	 */
	public String updateUser() {
		if (adminService.updateUser(adminVo.getUser()) == 1) {
			tip = "更新成功";
			return SUCCESS;
		} else {
			tip = "更新失败";
		}
		return SUCCESS;
	}
	
	/**
	 * 跳转到更新用户信息页面
	 * @return
	 */
	public String toUpdateUser() {
		int id = adminVo.getUser().getId();
		User user = adminService.getUser(id);
		request.put("user", user);
		return SUCCESS;
	}
	
	/**
	 * 跳转到查找用户页面
	 * @return
	 */
	public String toLookUser() {
		List<User> list = adminService.getAllUser();
		System.out.println("request:" + request);
		request.put("allUser", list);
		return SUCCESS;
	}
	
	/**
	 * 上传文件
	 * @return 文件path
	 * @throws IOException
	 */
	private String saveFile() throws IOException {
		File file = adminVo.getFile();
		String fileName = UniqueFileName.getFileName();
		ServletContext application = ServletActionContext.getServletContext();
		//获取真实路径
		String root = application.getRealPath("/");
		//application.getContextPath()获取的是相对路径
		File rootPath = new File(root + "/upload/img/goods");
		if (!rootPath.exists()) {
			System.out.println("文件目录不存在");
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
	 * 添加商品
	 * @return
	 */
	public String addGoods() {
		try {
			String path = saveFile();
			adminVo.getGoods().setPath(path);
			System.out.println(adminVo.getGoods());
			System.out.println(adminService.addGoods(adminVo.getGoods()));
			tip = "添加商品成功";
		} catch (IOException e) {
			e.printStackTrace();
			tip = "添加商品失败";
		}
		return SUCCESS;
	}
	
	/**
	 * 跳转到添加商品页面
	 * @return
	 */
	public String toAddGoods() {
		return SUCCESS;
	}
	
	/**
	 * 跳转到更新用户信息页面
	 * @return
	 */
	public String toUpdateGoods() {
		int id = adminVo.getGoods().getId();
		Goods goods = adminService.getGoods(id);
		request.put("goods", goods);
		return SUCCESS;
	}
	
	/**
	 * 更新商品
	 * @return
	 */
	public String updateGoods() {
		String path = null;
		if (null != adminVo.getFile()) {
			try {
				path = saveFile();
				adminVo.getGoods().setPath(path);
			} catch (IOException e) {
				tip = "修改商品信息失败";
				e.printStackTrace();
				return SUCCESS;
			}
		} 
		if (adminService.updateGoods(adminVo.getGoods()) == 1) {
			tip = "修改商品信息成功";
			return SUCCESS;
		} else {
			tip = "修改商品信息失败";
		}
		return SUCCESS;
	}
	
	/**
	 * 跳转到查找商品页面
	 * @return
	 */
	public String toLookGoods(){
		List<Goods> list = adminService.getAddGoods();
		request.put("allGoods", list);
		return SUCCESS;
	}
	
	/**
	 * 跳转到查看订单页面
	 * @return
	 */
	public String toLookOrders() {
		totalPage = adminService.getTotalPage(1);
		Iterator<Orders> iterator = adminService.getAllOrders(page);
		request.put("allOrders", iterator);
		return SUCCESS;
	}
	
	/**
	 * 获取待付款订单记录
	 * @return
	 */
	public String behalfPayment() {
		request.put("allOrders", adminService.getBehalfPayment(page));
		return SUCCESS;
	}
	
	/**
	 * 获取待发货订单记录
	 * @return
	 */
	public String behalfSendGoods() {
		request.put("allOrders", adminService.getBehalfSendGoods(page));
		return SUCCESS;
	}
	
	/**
	 * 获取待收货订单记录
	 * @return
	 */
	public String waitUserConfirm() {
		request.put("allOrders", adminService.getWaitConfirmPayment(page));
		return SUCCESS;
	}
	
	/**
	 * 获取退货申请订单记录
	 * @return
	 */
	public String applyForSalesReturn() {
		request.put("allOrders", adminService.getApplyForSalesReturn(page));
		return SUCCESS;
	}
	
	public String dealWithOrder() {
		int result = adminService.dealWithOrder(oid, status);
		if (result == 1) {
			//操作成功
			tip = "操作成功";
		} else {
			//操作失败
			tip = "操作失败";
		}
		return SUCCESS;
	}
	/**
	 * 删除商品
	 * @return
	 */
	public String deleteGoods() {
		adminService.deleteGoods(gid);
		tip = "删除成功";
		return SUCCESS;
	}
	
	/***********************分割线***************************/
	
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
