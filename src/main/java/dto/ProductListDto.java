package dto;

public class ProductListDto {
	
	private String product;
	private String color;
	private String quantity;
	
	public ProductListDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ProductListDto(String product, String color, String quantity) {
		super();
		this.product = product;
		this.color = color;
		this.quantity = quantity;
	}
	public String getProduct() {
		return product;
	}
	public void setProduct(String product) {
		this.product = product;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getQuantity() {
		return quantity;
	}
	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}
	
	
	
}
