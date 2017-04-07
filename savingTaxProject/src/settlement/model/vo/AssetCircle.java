package settlement.model.vo;

public class AssetCircle implements java.io.Serializable {
		private String anm;
		private long sumcost;
		public String getAnm() {
			return anm;
		}
		public void setAnm(String anm) {
			this.anm = anm;
		}
		public long getsumcost() {
			return sumcost;
		}
		public void setsumcost(long sumcost) {
			this.sumcost = sumcost;
		}
		
		public AssetCircle(){}
		
		public AssetCircle(String anm, long sumcost) {
			super();
			this.anm = anm;
			this.sumcost = sumcost;
		}
		@Override
		public String toString() {
			return "AssetCircle [anm=" + anm + ", sumcost=" + sumcost + "]";
		}
		
		
		
}
