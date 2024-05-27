package Com.Stationary.Model;

import java.time.LocalDateTime;

import org.hibernate.annotations.CreationTimestamp;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Products {
	
	
	@Id
	private String Pname;
	
	@Override
	public String toString() {
		return "Products [Pname=" + Pname + ", Pdes=" + Pdes + ", quantity=" + quantity + ", price=" + price
				+ ", AddedDate=" + AddedDate + "]";
	}
	public String getPname() {
		return Pname;
	}
	public void setPname(String pname) {
		Pname = pname;
	}
	public String getPdes() {
		return Pdes;
	}
	public void setPdes(String pdes) {
		Pdes = pdes;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public LocalDateTime getAddedDate() {
		return AddedDate;
	}
	public void setAddedDate(LocalDateTime addedDate) {
		AddedDate = addedDate;
	}
	private String Pdes;
	private int quantity;
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	private int price;
	@CreationTimestamp
	private LocalDateTime AddedDate;
	

}
