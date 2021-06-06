package dto;

import java.io.Serializable;

public class Product implements Serializable {

	private static final long serialVersionUID = 4274700572038677000L;
	private String productId; // 상품아이디
	private String pName; // 상품명
	private int unitPrice; // 상품가격
	private String description; // 상품 설명
	private String manufacturer; // 제조사
	private String category; // 분류
	private long unitsInStock; // 재고 수
	private String condition; // 신품 or 중고품 or 재생품
	private String filename; // 이미지 파일명

	public Product() {
		// TODO Auto-generated constructor stub
	}

	public Product(String productId, String pName, int unitPrice) {
		super();
		this.productId = productId;
		this.pName = pName;
		this.unitPrice = unitPrice;
	}

	public Product(String productId, String pName, int unitPrice, String description, String manufacturer,
			String category, long unitsInStock, String condition) {
		super();
		this.productId = productId;
		this.pName = pName;
		this.unitPrice = unitPrice;
		this.description = description;
		this.manufacturer = manufacturer;
		this.category = category;
		this.unitsInStock = unitsInStock;
		this.condition = condition;
	}
	
	

	public Product(String productId, String pName, int unitPrice, String description, String manufacturer,
			String category, long unitsInStock, String condition, String filename) {
		super();
		this.productId = productId;
		this.pName = pName;
		this.unitPrice = unitPrice;
		this.description = description;
		this.manufacturer = manufacturer;
		this.category = category;
		this.unitsInStock = unitsInStock;
		this.condition = condition;
		this.filename = filename;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public String getProductId() {
		return productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	public String getpName() {
		return pName;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}

	public int getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(int unitPrice) {
		this.unitPrice = unitPrice;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getManufacturer() {
		return manufacturer;
	}

	public void setManufacturer(String menufacturer) {
		this.manufacturer = menufacturer;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public long getUnitsInStock() {
		return unitsInStock;
	}

	public void setUnitsInStock(long unitsInStock) {
		this.unitsInStock = unitsInStock;
	}

	public String getCondition() {
		return condition;
	}

	public void setCondition(String condition) {
		this.condition = condition;
	}

	@Override
	public String toString() {
		return "Product [productId=" + productId + ", pName=" + pName + ", unitPrice=" + unitPrice + ", description="
				+ description + ", manufacturer=" + manufacturer + ", category=" + category + ", unitsInStock="
				+ unitsInStock + ", condition=" + condition + "]";
	}

}
