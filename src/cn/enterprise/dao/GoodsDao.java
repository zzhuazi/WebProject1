package cn.enterprise.dao;

import java.util.List;

import cn.enterprise.po.Goods;

public interface GoodsDao extends BaseDao<Goods> {
	
	/**
	 * 获取所有商品信息
	 * @return
	 */
	public List<Goods> getAll();
	
	/**
	 * 通过id获取商品信息
	 * @param id
	 * @return
	 */
	public Goods get(int id);
	
	/**
	 * 更新商品信息
	 * @param goods
	 */
	public void update(Goods goods);
	
	/**
	 * 获取第page页商品(一页限制10条记录)
	 * @return
	 */
	public List<Goods> getGoods(int page, String info);
	
	/**
	 * 获取满足search条件的搜索记录共多少页，每页12
	 * @param search
	 * @return
	 */
	public int getTotalPage(String search);
	
	/**
	 * 根据ID 删除记录(级联)
	 * @param id
	 * @return
	 */
	public int delete(int id);
}
