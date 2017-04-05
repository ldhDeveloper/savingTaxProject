package member.model.vo;

import java.sql.Date;

public class Party implements java.io.Serializable{

	private int pno;
	private String pname;
	private int category;
	private String id;
	private String pwd;
	private String tel;
	private String phone;
	private String email;
	private String birth;
	private String gender;
	private String id_no;
	private String cname;
	private String cno;
	private String paddress;
	private String caddress;
	private String ctype;
	private String cstatus;
	private String position;
	private Date oday;
	private int wno;
	private String taxType;
	private String notax_yn;
	private String president;
	private String foreginer_yn;
	private String emp_type;
	private Date join_date;
	private String busi_type;
	private int to_no;
	private Date rdate;
	private double irate;
	private String gtype;
	
	
	//private String industrycode;
	
	
	
	public int getPno() {
		return pno;
	}


	public void setPno(int pno) {
		this.pno = pno;
	}


	public String getPname() {
		return pname;
	}


	public void setPname(String pname) {
		this.pname = pname;
	}


	public int getCategory() {
		return category;
	}


	public void setCategory(int category) {
		this.category = category;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getPwd() {
		return pwd;
	}


	public void setPwd(String pwd) {
		this.pwd = pwd;
	}


	public String getTel() {
		return tel;
	}


	public void setTel(String tel) {
		this.tel = tel;
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getBirth() {
		return birth;
	}


	public void setBirth(String birth) {
		this.birth = birth;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}


	public String getId_no() {
		return id_no;
	}


	public void setId_no(String id_no) {
		this.id_no = id_no;
	}


	public String getCname() {
		return cname;
	}


	public void setCname(String cname) {
		this.cname = cname;
	}


	public String getCno() {
		return cno;
	}


	public void setCno(String cno) {
		this.cno = cno;
	}


	public String getPaddress() {
		return paddress;
	}


	public void setPaddress(String paddress) {
		this.paddress = paddress;
	}


	public String getCaddress() {
		return caddress;
	}


	public void setCaddress(String caddress) {
		this.caddress = caddress;
	}


	public String getCtype() {
		return ctype;
	}


	public void setCtype(String ctype) {
		this.ctype = ctype;
	}


	public String getCstatus() {
		return cstatus;
	}


	public void setCstatus(String cstatus) {
		this.cstatus = cstatus;
	}


	public String getPosition() {
		return position;
	}


	public void setPosition(String position) {
		this.position = position;
	}


	public Date getOday() {
		return oday;
	}


	public void setOday(Date oday) {
		this.oday = oday;
	}


	public int getWno() {
		return wno;
	}


	public void setWno(int wno) {
		this.wno = wno;
	}


	public String getTaxType() {
		return taxType;
	}


	public void setTaxType(String taxType) {
		this.taxType = taxType;
	}


	public String getNotax_yn() {
		return notax_yn;
	}


	public void setNotax_yn(String notax_yn) {
		this.notax_yn = notax_yn;
	}


	public String getPresident() {
		return president;
	}


	public void setPresident(String president) {
		this.president = president;
	}


	public String getForeginer_yn() {
		return foreginer_yn;
	}


	public void setForeginer_yn(String foreginer_yn) {
		this.foreginer_yn = foreginer_yn;
	}


	public String getEmp_type() {
		return emp_type;
	}


	public void setEmp_type(String emp_type) {
		this.emp_type = emp_type;
	}


	public Date getJoin_date() {
		return join_date;
	}


	public void setJoin_date(Date join_date) {
		this.join_date = join_date;
	}


	public String getBusi_type() {
		return busi_type;
	}


	public void setBusi_type(String busi_type) {
		this.busi_type = busi_type;
	}


	public int getTo_no() {
		return to_no;
	}


	public void setTo_no(int to_no) {
		this.to_no = to_no;
	}


	public Date getRdate() {
		return rdate;
	}


	public void setRdate(Date rdate) {
		this.rdate = rdate;
	}


	public double getIrate() {
		return irate;
	}


	public void setIrate(double irate) {
		this.irate = irate;
	}


	public String getGtype() {
		return gtype;
	}


	public void setGtype(String gtype) {
		this.gtype = gtype;
	}


	public Party(){}


	@Override
	public String toString() {
		return pno + ", " + pname + ", " + category + ", " + id + ", " + pwd + ", " + tel + ", " + phone + ", " + email
				+ ", " + birth + ", " + gender + ", " + id_no + ", " + cname + ", " + cno + ", " + paddress + ", "
				+ caddress + ", " + ctype + ", " + cstatus + ", " + position + ", " + oday + ", " + wno + ", " + taxType
				+ ", " + notax_yn + ", " + president + ", " + foreginer_yn + ", " + emp_type + ", " + join_date + ", "
				+ busi_type + ", " + to_no + ", " + rdate + ", " + irate + ", " + gtype;
	}
	
	
	
}