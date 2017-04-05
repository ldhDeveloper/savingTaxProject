package member.model.vo;

import java.sql.Date;

public class Emp implements java.io.Serializable{
		private int pno;
		private String pname;
		private String id_no;
		private String position;
		private Date wsdate;
		private Date wedate;
		private Date saldate;
		private int init_pay;
		private int bonus;
		private int incentive;
		private int over_pay;
		private int meals;
		private int child_pay;
		private int car_pay;
		private int exp;
		private int rest_pay;
		
		
		
		public int getRest_pay() {
			return rest_pay;
		}
		public void setRest_pay(int rest_pay) {
			this.rest_pay = rest_pay;
		}
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
		public String getId_no() {
			return id_no;
		}
		public void setId_no(String id_no) {
			this.id_no = id_no;
		}
		public String getPosition() {
			return position;
		}
		public void setPosition(String position) {
			this.position = position;
		}
		public Date getWsdate() {
			return wsdate;
		}
		public void setWsdate(Date wsdate) {
			this.wsdate = wsdate;
		}
		public Date getWedate() {
			return wedate;
		}
		public void setWedate(Date wedate) {
			this.wedate = wedate;
		}
		public Date getSaldate() {
			return saldate;
		}
		public void setSaldate(Date saldate) {
			this.saldate = saldate;
		}
		public int getInit_pay() {
			return init_pay;
		}
		public void setInit_pay(int init_pay) {
			this.init_pay = init_pay;
		}
		public int getBonus() {
			return bonus;
		}
		public void setBonus(int bonus) {
			this.bonus = bonus;
		}
		public int getIncentive() {
			return incentive;
		}
		public void setIncentive(int incentive) {
			this.incentive = incentive;
		}
		public int getOver_pay() {
			return over_pay;
		}
		public void setOver_pay(int over_pay) {
			this.over_pay = over_pay;
		}
		public int getMeals() {
			return meals;
		}
		public void setMeals(int meals) {
			this.meals = meals;
		}
		public int getChild_pay() {
			return child_pay;
		}
		public void setChild_pay(int child_pay) {
			this.child_pay = child_pay;
		}
		public int getCar_pay() {
			return car_pay;
		}
		public void setCar_pay(int car_pay) {
			this.car_pay = car_pay;
		}
		public int getExp() {
			return exp;
		}
		public void setExp(int exp) {
			this.exp = exp;
		}
		
		public Emp(){}
		public Emp(int pno, String pname, String id_no, String position, Date wsdate, Date wedate, Date saldate,
				int init_pay, int bonus, int incentive, int over_pay, int meals, int child_pay, int car_pay, int exp,
				int rest_pay) {
			super();
			this.pno = pno;
			this.pname = pname;
			this.id_no = id_no;
			this.position = position;
			this.wsdate = wsdate;
			this.wedate = wedate;
			this.saldate = saldate;
			this.init_pay = init_pay;
			this.bonus = bonus;
			this.incentive = incentive;
			this.over_pay = over_pay;
			this.meals = meals;
			this.child_pay = child_pay;
			this.car_pay = car_pay;
			this.exp = exp;
			this.rest_pay = rest_pay;
		}
		@Override
		public String toString() {
			return "Emp [pno=" + pno + ", pname=" + pname + ", id_no=" + id_no + ", position=" + position + ", wsdate="
					+ wsdate + ", wedate=" + wedate + ", saldate=" + saldate + ", init_pay=" + init_pay + ", bonus="
					+ bonus + ", incentive=" + incentive + ", over_pay=" + over_pay + ", meals=" + meals
					+ ", child_pay=" + child_pay + ", car_pay=" + car_pay + ", exp=" + exp + ", rest_pay=" + rest_pay
					+ "]";
		}
		
		
		
		
}
