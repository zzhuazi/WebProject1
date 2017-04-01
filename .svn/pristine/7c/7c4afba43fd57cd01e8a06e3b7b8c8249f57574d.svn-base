package cn.enterprise.po;

import java.util.HashSet;
import java.util.Set;

public class Goods {

	private int id;
	private String name;
	private String desc;
	private double price;
	private String units;
	private int stock;
	private String path;
	private int type;
	//采用双向一对多
	private Set<Orders> orders = new HashSet<>(0);
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getUnits() {
		return units;
	}
	public void setUnits(String units) {
		this.units = units;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public Set<Orders> getOrders() {
		return orders;
	}
	public void setOrders(Set<Orders> orders) {
		this.orders = orders;
	}
	@Override
	public String toString() {
		return "Goods [id=" + id + ", name=" + name + ", desc=" + desc + ", price=" + price + ", units=" + units
				+ ", stock=" + stock + ", path=" + path + ", type=" + type + ", orders=" + orders + "]";
	}
	
	public void addOrder(Orders order) {
		orders.add(order);
		order.setGoods(this);
	}
	
}
