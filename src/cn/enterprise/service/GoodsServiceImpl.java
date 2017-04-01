package cn.enterprise.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.enterprise.dao.GoodsDao;
import cn.enterprise.po.Goods;

@Service("goodsService")
@Transactional
public class GoodsServiceImpl implements GoodsService {

	@Autowired
	private GoodsDao goodsDao;
	
	public void setGoodsDao(GoodsDao goodsDao) {
		this.goodsDao = goodsDao;
	}
	
	@Override
	public List<Goods> getGoods(int page, String info) {
		return goodsDao.getGoods(page, info);
	}

	@Override
	public int getTotalPage(String search) {
		return goodsDao.getTotalPage(search);
	}

}
