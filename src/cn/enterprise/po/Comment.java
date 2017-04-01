package cn.enterprise.po;

import java.util.Date;

public class Comment {

	private int id;
	//采用双向一对多
	private User user;
	//采用双向一对多
	private Orders orders;
	private String comment;
	private int grade;
	private Date time;
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
	public Orders getOrders() {
		return orders;
	}
	public void setOrders(Orders orders) {
		this.orders = orders;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	@Override
	public String toString() {
		return "Comment [id=" + id + ", user=" + user + ", orders=" + orders + ", comment=" + comment + ", grade="
				+ grade + ", time=" + time + "]";
	}
	
}
