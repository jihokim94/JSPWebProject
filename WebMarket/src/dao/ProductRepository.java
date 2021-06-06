package dao;

import java.util.ArrayList;

import dto.Product;

public class ProductRepository {

	ArrayList<Product> ListOfProducts = new ArrayList();
	private static ProductRepository instance = new ProductRepository();
	
	public ProductRepository() {
		Product phone = new Product("P1234", "iPhone 6s", 800010);
		phone.setDescription("4.7-inch , 1334X750 Renina HD display, 8 - megapixel iSight Camera");
		phone.setCategory("Smart Phone");
		phone.setManufacturer("Apple");
		phone.setUnitsInStock(1000);
		phone.setCondition("New");
		phone.setFilename("P1234.png");
		
		Product noteBook = new Product("P1235", "LG PC 그램", 1500000);
		noteBook.setDescription("13.3.inch , IPS LED display , 5rd Generation Intel Core processors");
		noteBook.setCategory("NoteBook");
		noteBook.setManufacturer("LG");
		noteBook.setUnitsInStock(1000);
		noteBook.setCondition("Refurbished");
		noteBook.setFilename("P1235.png");
		
		Product tablet = new Product("P1236", "Galaxy Tab S", 900000);
		tablet.setDescription("212.8*125.6*6.6mm , Super AMOLED display , Octa-Core processor");
		tablet.setCategory("Tablet");
		tablet.setManufacturer("Samsung");
		tablet.setUnitsInStock(1000);
		tablet.setCondition("Old");
		tablet.setFilename("P1236.png");
		
		
		ListOfProducts.add(phone);
		ListOfProducts.add(noteBook);
		ListOfProducts.add(tablet);
	}

	public ArrayList<Product> getAllProducts() {
		return ListOfProducts;
	}
	public Product getProductById(String productId) {
		Product productById = null ;
		
		for (int i = 0; i < ListOfProducts.size(); i++) {
			Product product = ListOfProducts.get(i);
			if(product!=null && product.getProductId()!=null && product.getProductId().equals(productId)) {
				productById = product;
				break;
			}
		}
		
		return productById;
		
	}
	public static ProductRepository getInstance() {
		return instance;
	}
	public void addProduct(Product pd) {
		ListOfProducts.add(pd);
	}
}
