package com.it15306.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.it15306.entity.Cartdetail;
import com.it15306.entity.Order;
import com.it15306.entity.Product;
import com.it15306.repository.CartdetailRepository;
import com.it15306.repository.GiohangRepository;

@Controller
@RequestMapping("home/giohang")
public class Giohang {
	@Autowired private GiohangRepository ghRepo;
	@Autowired private CartdetailRepository cartdetailRepo;
	
	@GetMapping("/")
	public String index(Model model) {
		List<Cartdetail> listcartdetail = this.ghRepo.finById(1);
		int tongtien=0;
		for(int i=0; i<listcartdetail.size(); i++) {
			tongtien=tongtien+(listcartdetail.get(i).getQuantity()*listcartdetail.get(i).getProduct().getPrice());
		}
		model.addAttribute("tongtien", tongtien);
		model.addAttribute("listcartdetail", listcartdetail);
		return "user/giohang";
	}
	
	@GetMapping(value= "/add/{id}")
	public String store(@PathVariable("id") Product entity, Model model) {
		Cartdetail cartdetailEntity = new Cartdetail();
		cartdetailEntity.setProduct(entity);
		String time = java.time.LocalDateTime.now()+"";
		cartdetailEntity.setCreatedate(time);
		
		this.cartdetailRepo.save(cartdetailEntity);
		return "redirect:/home/";
	}
}
