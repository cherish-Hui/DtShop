package model;

public class Manager {
	 private String managerid;
	 private String username;
	 private String password;
	 private String realname;
	 private String email;
     private String permission;
     private String photo;
     private String boonday;
     private String lastlogen;
     private String state;
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getManagerid() {
		return managerid;
	}
	public void setManagerid(String managerid) {
		this.managerid = managerid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRealname() {
		return realname;
	}
	public void setRealname(String realname) {
		this.realname = realname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getPermission() {
		return permission;
	}
	public void setPermission(String permission) {
		this.permission = permission;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public String getBoonday() {
		return boonday;
	}
	public void setBoonday(String boonday) {
		this.boonday = boonday;
	}
	public String getLastlogen() {
		return lastlogen;
	}
	public void setLastlogen(String lastlogen) {
		this.lastlogen = lastlogen;
	}
	public Manager(){
		
	}
	public Manager(String managerid, String username, String password, String realname, String email) {
		super();
		this.managerid = managerid;
		this.username = username;
		this.password = password;
		this.realname = realname;
		this.email = email;
	}
	public Manager(String username, String password){
		super();
		this.username = username;
		this.password = password;
	}
     
}
