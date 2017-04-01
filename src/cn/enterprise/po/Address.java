package cn.enterprise.po;

public class Address {

	private int id;
	//采用双向一对多
	private User user;
	private String name;
	private String phone;
	private String address;
	private int priority;//1默认收货地址
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getPriority() {
		return priority;
	}
	public void setPriority(int priority) {
		this.priority = priority;
	}
	@Override
	public String toString() {
		return "Address [id=" + id + ", user=" + user + ", name=" + name + ", phone=" + phone + ", address=" + address
				+ ", priority=" + priority + "]";
	}
}
