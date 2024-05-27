package Com.Stationary.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import Com.Stationary.Model.Products;

public interface ProductRepo extends JpaRepository<Products ,String>{

}
