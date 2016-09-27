package com.dto;

public class CompanyDTO {

   private String cid;
   private String cpasswd;
   private String cname;
   private String cemail;
   private String cno1;
   private String cno2;
   private String cno3;
   private String cmaster;
   private String ccategory;
   private String post1;
   private String post2;
   private String addr1;
   private String addr2;
   private String cphone1;
   private String cphone2;
   private String cphone3;
public CompanyDTO() {
	super();
	// TODO Auto-generated constructor stub
}
public CompanyDTO(String cid, String cpasswd, String cname, String cemail, String cno1, String cno2, String cno3,
		String cmaster, String ccategory, String post1, String post2, String addr1, String addr2, String cphone1,
		String cphone2, String cphone3) {
	super();
	this.cid = cid;
	this.cpasswd = cpasswd;
	this.cname = cname;
	this.cemail = cemail;
	this.cno1 = cno1;
	this.cno2 = cno2;
	this.cno3 = cno3;
	this.cmaster = cmaster;
	this.ccategory = ccategory;
	this.post1 = post1;
	this.post2 = post2;
	this.addr1 = addr1;
	this.addr2 = addr2;
	this.cphone1 = cphone1;
	this.cphone2 = cphone2;
	this.cphone3 = cphone3;
}
@Override
public String toString() {
	return "CompanyDTO [cid=" + cid + ", cpasswd=" + cpasswd + ", cname=" + cname + ", cemail=" + cemail + ", cno1="
			+ cno1 + ", cno2=" + cno2 + ", cno3=" + cno3 + ", cmaster=" + cmaster + ", ccategory=" + ccategory
			+ ", post1=" + post1 + ", post2=" + post2 + ", addr1=" + addr1 + ", addr2=" + addr2 + ", cphone1=" + cphone1
			+ ", cphone2=" + cphone2 + ", cphone3=" + cphone3 + "]";
}
public String getCid() {
	return cid;
}
public void setUserid(String cid) {
	this.cid = cid;
}
public String getCpasswd() {
	return cpasswd;
}
public void setCpasswd(String cpasswd) {
	this.cpasswd = cpasswd;
}
public String getCname() {
	return cname;
}
public void setCname(String cname) {
	this.cname = cname;
}
public String getCemail() {
	return cemail;
}
public void setCemail(String cemail) {
	this.cemail = cemail;
}
public String getCno1() {
	return cno1;
}
public void setCno1(String cno1) {
	this.cno1 = cno1;
}
public String getCno2() {
	return cno2;
}
public void setCno2(String cno2) {
	this.cno2 = cno2;
}
public String getCno3() {
	return cno3;
}
public void setCno3(String cno3) {
	this.cno3 = cno3;
}
public String getCmaster() {
	return cmaster;
}
public void setCmaster(String cmaster) {
	this.cmaster = cmaster;
}
public String getCcategory() {
	return ccategory;
}
public void setCcategory(String ccategory) {
	this.ccategory = ccategory;
}
public String getPost1() {
	return post1;
}
public void setPost1(String post1) {
	this.post1 = post1;
}
public String getPost2() {
	return post2;
}
public void setPost2(String post2) {
	this.post2 = post2;
}
public String getAddr1() {
	return addr1;
}
public void setAddr1(String addr1) {
	this.addr1 = addr1;
}
public String getAddr2() {
	return addr2;
}
public void setAddr2(String addr2) {
	this.addr2 = addr2;
}
public String getCphone1() {
	return cphone1;
}
public void setCphone1(String cphone1) {
	this.cphone1 = cphone1;
}
public String getCphone2() {
	return cphone2;
}
public void setCphone2(String cphone2) {
	this.cphone2 = cphone2;
}
public String getCphone3() {
	return cphone3;
}
public void setCphone3(String cphone3) {
	this.cphone3 = cphone3;
}
   
    
}