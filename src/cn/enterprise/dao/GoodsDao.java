package cn.enterprise.dao;

import java.util.List;

import cn.enterprise.po.Goods;

public interface GoodsDao extends BaseDao<Goods> {
	
	/**
	 * ��ȡ������Ʒ��Ϣ
	 * @return
	 */
	public List<Goods> getAll();
	
	/**
	 * ͨ��id��ȡ��Ʒ��Ϣ
	 * @param id
	 * @return
	 */
	public Goods get(int id);
	
	/**
	 * ������Ʒ��Ϣ
	 * @param goods
	 */
	public void update(Goods goods);
	
	/**
	 * ��ȡ��pageҳ��Ʒ(һҳ����10����¼)
	 * @return
	 */
	public List<Goods> getGoods(int page, String info);
	
	/**
	 * ��ȡ����search������������¼������ҳ��ÿҳ12
	 * @param search
	 * @return
	 */
	public int getTotalPage(String search);
	
	/**
	 * ����ID ɾ����¼(����)
	 * @param id
	 * @return
	 */
	public int delete(int id);
}