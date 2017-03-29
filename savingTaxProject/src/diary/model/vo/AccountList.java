package diary.model.vo;

public class AccountList implements java.io.Serializable {
	private int ano;
	private String anm;
	private String atype;
	
	
	
	public int getAno() {
		return ano;
	}



	public void setAno(int ano) {
		this.ano = ano;
	}



	public String getAnm() {
		return anm;
	}



	public void setAnm(String anm) {
		this.anm = anm;
	}



	public String getAtype() {
		return atype;
	}



	public void setAtype(String atype) {
		this.atype = atype;
	}

	public AccountList(){}

	public AccountList(int ano, String anm, String atype) {
		super();
		this.ano = ano;
		this.anm = anm;
		this.atype = atype;
	}



	@Override
	public String toString() {
		return "AccountList [ano=" + ano + ", anm=" + anm + ", atype=" + atype + "]";
	}

	
	
}
