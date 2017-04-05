package salary.model.vo;

import java.sql.Date;

public class Salary {
	private int sno;
	private int pno;
	private Date wsDate;
	private Date weDate;
	private Date salDate;
	private int initPay;
	private int overPay;
	private int restPay;
	private int bonus;
	private int incentive;
	private int meals;
	private int carPay;
	private int childPay;
	private int exp;
	
	public Salary(){}

	public Salary(int sno, int pno, Date wsDate, Date weDate, Date salDate, int initPay, int overPay, int restPay,
			int bonus, int incentive, int meals, int carPay, int childPay, int exp) {
		super();
		this.sno = sno;
		this.pno = pno;
		this.wsDate = wsDate;
		this.weDate = weDate;
		this.salDate = salDate;
		this.initPay = initPay;
		this.overPay = overPay;
		this.restPay = restPay;
		this.bonus = bonus;
		this.incentive = incentive;
		this.meals = meals;
		this.carPay = carPay;
		this.childPay = childPay;
		this.exp = exp;
	}

	public int getSno() {
		return sno;
	}

	public int getPno() {
		return pno;
	}

	public Date getWsDate() {
		return wsDate;
	}

	public Date getWeDate() {
		return weDate;
	}

	public Date getSalDate() {
		return salDate;
	}

	public int getInitPay() {
		return initPay;
	}

	public int getOverPay() {
		return overPay;
	}

	public int getRestPay() {
		return restPay;
	}

	public int getBonus() {
		return bonus;
	}

	public int getIncentive() {
		return incentive;
	}

	public int getMeals() {
		return meals;
	}

	public int getCarPay() {
		return carPay;
	}

	public int getChildPay() {
		return childPay;
	}

	public int getExp() {
		return exp;
	}

	public void setSno(int sno) {
		this.sno = sno;
	}

	public void setPno(int pno) {
		this.pno = pno;
	}

	public void setWsDate(Date wsDate) {
		this.wsDate = wsDate;
	}

	public void setWeDate(Date weDate) {
		this.weDate = weDate;
	}

	public void setSalDate(Date salDate) {
		this.salDate = salDate;
	}

	public void setInitPay(int initPay) {
		this.initPay = initPay;
	}

	public void setOverPay(int overPay) {
		this.overPay = overPay;
	}

	public void setRestPay(int restPay) {
		this.restPay = restPay;
	}

	public void setBonus(int bonus) {
		this.bonus = bonus;
	}

	public void setIncentive(int incentive) {
		this.incentive = incentive;
	}

	public void setMeals(int meals) {
		this.meals = meals;
	}

	public void setCarPay(int carPay) {
		this.carPay = carPay;
	}

	public void setChildPay(int childPay) {
		this.childPay = childPay;
	}

	public void setExp(int exp) {
		this.exp = exp;
	}

	@Override
	public String toString() {
		return "Salary [sno=" + sno + ", pno=" + pno + ", wsDate=" + wsDate + ", weDate=" + weDate + ", salDate="
				+ salDate + ", initPay=" + initPay + ", overPay=" + overPay + ", restPay=" + restPay + ", bonus="
				+ bonus + ", incentive=" + incentive + ", meals=" + meals + ", carPay=" + carPay + ", childPay="
				+ childPay + ", exp=" + exp + "]";
	}
	
	
}
