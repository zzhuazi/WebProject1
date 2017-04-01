package cn.enterprise.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;

import cn.enterprise.comparator.GoodsDateComparator;
import cn.enterprise.po.Goods;
import cn.enterprise.service.GoodsService;

@Controller
@Scope("prototype")
public class GoodsAction extends ActionSupport
	implements RequestAware{

	private static final long serialVersionUID = 1L;
	
	private Map<String, Object> request;
	
	private GoodsDateComparator goodsDateComparator = new GoodsDateComparator();
	
	private int page = 1;
	private int totalPage;
	private String info;
	
	public String getInfo() {
		return info;
	}


	public void setInfo(String info) {
		this.info = info;
	}


	public int getTotalPage() {
		return totalPage;
	}


	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	@Autowired
	private GoodsService goodsService;
	
	@Override
	public String execute() throws Exception {
		totalPage = goodsService.getTotalPage(info);
		List<Goods> list = goodsService.getGoods(page, info);
		request.put("goods", list);
		return SUCCESS;
	}

	
	public int getPage() {
		return page;
	}


	public void setPage(int page) {
		this.page = page;
	}


	/***************************************/
	@Override
	public void setRequest(Map<String, Object> request) {
		this.request = request;
	}
	
	public Map<String, Object> getRequest() {
		return request;
	}
	
	public void setGoodsService(GoodsService goodsService) {
		this.goodsService = goodsService;
	}


	public GoodsDateComparator getGoodsDateComparator() {
		return goodsDateComparator;
	}


	public void setGoodsDateComparator(GoodsDateComparator goodsDateComparator) {
		this.goodsDateComparator = goodsDateComparator;
	}

}
