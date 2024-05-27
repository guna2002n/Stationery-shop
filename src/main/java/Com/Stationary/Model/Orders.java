package Com.Stationary.Model;

import java.time.LocalDateTime;

import org.hibernate.annotations.CreationTimestamp;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;

@Entity
public class Orders {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int Oid;
	
	@CreationTimestamp
	private LocalDateTime Odate;
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="fk_product")
	private Products product;
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="fk_customer")
	private Customer cust;
	private int Oquantity;

	public int getOid() {
		return Oid;
	}

	public void setOid(int oid) {
		Oid = oid;
	}

	@Override
	public String toString() {
		return "Orders [Oid=" + Oid + ", Odate=" + Odate + ", product=" + product + ", cust=" + cust + ", Oquantity="
				+ Oquantity + "]";
	}

	public int getOquantity() {
		return Oquantity;
	}

	public void setOquantity(int oquantity) {
		Oquantity = oquantity;
	}

	public LocalDateTime getOdate() {
		return Odate;
	}

	public void setOdate(LocalDateTime odate) {
		Odate = odate;
	}

	public Products getProduct() {
		return product;
	}

	public void setProduct(Products product) {
		this.product = product;
	}

	public Customer getCust() {
		return cust;
	}

	public void setCust(Customer cust) {
		this.cust = cust;
	}
	
}
