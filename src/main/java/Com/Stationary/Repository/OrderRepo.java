package Com.Stationary.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import Com.Stationary.Model.Orders;

public interface OrderRepo extends JpaRepository<Orders, Integer> {

}
