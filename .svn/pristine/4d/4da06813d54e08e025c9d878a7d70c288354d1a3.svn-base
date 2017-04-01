package cn.enterprise.po;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

public class User {

	private int id;
	private String name;
	private String pwd;
	private double balance;
	private String email;
	private Date regTime;
	//采用双向一对多
	private Set<Address> addresses = new HashSet<>(0);
	//采用双向一对多
	private Set<Orders> orders = new HashSet<>(0);
	//采用双向一对多
	private Set<RunningAccount> runningAccounts = new HashSet<>(0);
	//采用双向一对多
	private Set<Comment> comments = new HashSet<>(0);
	
	public void addAddress(Address address) {
		addresses.add(address);
		address.setUser(this);
	}
	
	public void addOrder(Orders order) {
		orders.add(order);
		order.setUser(this);
	}

	public void addRunningAccounts(RunningAccount runningAccount) {
		runningAccounts.add(runningAccount);
		runningAccount.setUser(this);
	}
	
	public void addComments(Comment comment) {
		comments.add(comment);
		comment.setUser(this);
	}
	
	/*********************************/
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
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public double getBalance() {
		return balance;
	}
	public void setBalance(double balance) {
		this.balance = balance;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getRegTime() {
		return regTime;
	}
	public void setRegTime(Date regTime) {
		this.regTime = regTime;
	}
	public Set<Address> getAddresses() {
		return addresses;
	}
	public void setAddresses(Set<Address> addresses) {
		this.addresses = addresses;
	}
	public Set<Orders> getOrders() {
		return orders;
	}
	public void setOrders(Set<Orders> orders) {
		this.orders = orders;
	}
	public Set<RunningAccount> getRunningAccounts() {
		return runningAccounts;
	}
	public void setRunningAccounts(Set<RunningAccount> runningAccounts) {
		this.runningAccounts = runningAccounts;
	}
	public Set<Comment> getComments() {
		return comments;
	}
	public void setComments(Set<Comment> comments) {
		this.comments = comments;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", pwd=" + pwd + ", balance=" + balance + ", email=" + email
				+ ", regTime=" + regTime + ", addresses=" + addresses + ", orders=" + orders + ", runningAccounts="
				+ runningAccounts + ", comments=" + comments + "]";
	}
	
}
