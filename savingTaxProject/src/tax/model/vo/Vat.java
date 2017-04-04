package tax.model.vo;

import java.sql.Date;

import diary.model.vo.Diary;

public class Vat {
	
	private int output;	//매출세액 거래내역 
	private int input;	//매입세액
	private int deduct_statement;  //공제세액(신용카드 전표
	private int deduct_credit;	//공제세액 (현금영수증
	private int invalidDeduct;  //공제세액 중 못받는 공제세액
	private int charge; //가산세
	private int Vat;		//부가가치세
	private int anm;		//거래항목구분 
	private Date taxDate;   //계산한 날자 기록용
	
	public int getOutput() {
		return output;
	}

	public void setOutput(int output) {
		this.output = output;
	}

	public int getInput() {
		return input;
	}

	public void setInput(int input) {
		this.input = input;
	}

	public int getDeduct_statement() {
		return deduct_statement;
	}

	public void setDeduct_statement(int deduct_statement) {
		this.deduct_statement = deduct_statement;
	}

	public int getDeduct_credit() {
		return deduct_credit;
	}

	public void setDeduct_credit(int deduct_credit) {
		this.deduct_credit = deduct_credit;
	}

	public int getInvalidDeduct() {
		return invalidDeduct;
	}

	public void setInvalidDeduct(int invalidDeduct) {
		this.invalidDeduct = invalidDeduct;
	}

	public int getCharge() {
		return charge;
	}

	public void setCharge(int charge) {
		this.charge = charge;
	}

	public int getVat() {
		return Vat;
	}

	public void setVat(int vat) {
		Vat = vat;
	}

	public int getAnm() {
		return anm;
	}

	public void setAnm(int anm) {
		this.anm = anm;
	}

	public Date getTaxDate() {
		return taxDate;
	}

	public void setTaxDate(Date taxDate) {
		this.taxDate = taxDate;
	}


	public Vat(){}

	public Vat(int output, int input, int deduct_statement, int deduct_credit, int invalidDeduct, int charge, int vat,
			int anm, Date taxDate) {
		super();
		this.output = output;
		this.input = input;
		this.deduct_statement = deduct_statement;
		this.deduct_credit = deduct_credit;
		this.invalidDeduct = invalidDeduct;
		this.charge = charge;
		Vat = vat;
		this.anm = anm;
		this.taxDate = taxDate;
	
	}

	@Override
	public String toString() {
		return output + ", " + input + ", " + deduct_statement + ", " + deduct_credit + ", " + invalidDeduct + ", "
				+ charge + ", " + Vat + ", " + anm + ", " + taxDate ;
	}
	
}
