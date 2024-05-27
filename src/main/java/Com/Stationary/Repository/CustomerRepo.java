package Com.Stationary.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import Com.Stationary.Model.Customer;

public interface CustomerRepo extends JpaRepository<Customer, String> {

}
