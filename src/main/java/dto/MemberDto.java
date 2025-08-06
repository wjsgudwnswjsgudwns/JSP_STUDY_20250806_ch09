package dto;

public class MemberDto {

	private String mid;
	private String mpw;
	private String name;
	private int mage;
	
	
	public MemberDto() {

	}
	public MemberDto(String mid, String mpw, String name, int mage) {

		this.mid = mid;
		this.mpw = mpw;
		this.name = name;
		this.mage = mage;
	}

	
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public String getMpw() {
		return mpw;
	}
	public void setMpw(String mpw) {
		this.mpw = mpw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getMage() {
		return mage;
	}
	public void setMage(int mage) {
		this.mage = mage;
	}
	
	
}
