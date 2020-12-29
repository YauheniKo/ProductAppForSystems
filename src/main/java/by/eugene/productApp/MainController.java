package by.eugene.productApp;


import by.eugene.productApp.entity.Product;
import by.eugene.productApp.repos.ProductRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@Controller
public class MainController {

    @Autowired
    private ProductRepo productRepo;

    @GetMapping("/")
    public String main(@RequestParam(required = false) String filter, Model model) {

        Iterable<Product> products = productRepo.findAll();

        if (filter != null && !filter.isEmpty()) {
            products = productRepo.findByName(filter);
        } else {
            products = productRepo.findAll();
        }
        model.addAttribute("products", products);
        model.addAttribute("filter", filter);

        return "main";
    }

    @PostMapping("/add")
    public String add(@RequestParam String name, @RequestParam int price, Model model) {

        Product product = new Product(name, price);

        productRepo.save(product);

        Iterable<Product> products = productRepo.findAll();
        model.addAttribute("products", products);

        return "redirect:/";
    }

    @GetMapping("/delete-prod/{id}")
    @Transactional
    public String delete(@PathVariable("id") int id) {
        productRepo.deleteById(id);
        return "redirect:/";
    }


    @GetMapping("/edit-prod/{id}")
    public String update(@PathVariable("id") int id, Model model) {
        model.addAttribute("product", productRepo.getById(id));
        return "update";
    }

    @Transactional
    @PostMapping("/update-prod/{id}")
    String update(@PathVariable(value = "id") int id,
                  @RequestParam String name,
                  @RequestParam String price, Model model) {
        Optional<Product> products = productRepo.findById(id);


        Product product = products.get();

        product.setName(name);
        product.setPrice(Integer.parseInt(price));
        productRepo.save(product);
        model.addAttribute("id", product.getId());
        model.addAttribute("name", product.getName());
        model.addAttribute("price", product.getPrice());

        return "afterUpdate";
    }


}


