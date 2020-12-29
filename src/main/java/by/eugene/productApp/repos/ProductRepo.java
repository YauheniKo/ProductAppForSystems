package by.eugene.productApp.repos;

import by.eugene.productApp.entity.Product;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface ProductRepo extends CrudRepository<Product, Integer> {

    List<Product> findByName(String name);
    Product getById(int id);



    void deleteById(int id);


}
