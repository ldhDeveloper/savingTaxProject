package tax.model.vo;

import java.sql.Date;

public class Vat {
	
	private int outputTax;	//매출세액 거래내역 
	private int inputTax;	//매입세액
	private int deductTax;  //공제세액(신용카드 전표, 세금계산서), 의제매입세액
	private int charge;
	private int Vat;		//부가가치세
	private Date taxDate;
	
	public Vat(){}
	
	public int getOutputTax() {
		return outputTax;
	}


	public void setOutputTax(int outputTax) {
		this.outputTax = outputTax;
	}


	public int getInputTax() {
		return inputTax;
	}


	public void setInputTax(int inputTax) {
		this.inputTax = inputTax;
	}


	public int getDeductTax() {
		return deductTax;
	}


	public void setDeductTax(int deductTax) {
		this.deductTax = deductTax;
	}


	public int getVat() {
		return Vat;
	}


	public void setVat(int vat) {
		Vat = vat;
	}


	public Date getTaxDate() {
		return taxDate;
	}


	public void setTaxDate(Date taxDate) {
		this.taxDate = taxDate;
	}


	public int getCharge() {
		return charge;
	}


	public void setCharge(int charge) {
		this.charge = charge;
	}

}
