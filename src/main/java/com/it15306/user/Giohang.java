package com.it15306.user;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.it15306.entity.Cart;
import com.it15306.entity.Cartdetail;
import com.it15306.entity.Product;
import com.it15306.entity.User;
import com.it15306.repository.CartdetailRepository;
import com.it15306.repository.GiohangRepository;

@Controller
@RequestMapping("home/giohang")
public class Giohang {
	@Autowired private GiohangRepository ghRepo;
	@Autowired private CartdetailRepository cartdetailRepo;
	@Autowired private HttpSession session;
	@GetMapping("/")
	public String index(Model model) {
		User user =(User) session.getAttribute("user");
		List<Cartdetail> listcartdetail = this.ghRepo.finById(user.getId());
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
		if(cartdetailRepo.finByIDproduc(entity.getId())==null) {
			Cartdetail cartdetailEntity = new Cartdetail();
			String time = java.time.LocalDateTime.now()+"";
			cartdetailEntity.setProduct(entity);
			cartdetailEntity.setCreatedate(time);
			cartdetailEntity.setQuantity(1);
			User user =(User) session.getAttribute("user");
			Cart entityCart = this.ghRepo.finbyIDuser(user.getId());
			cartdetailEntity.setCart(entityCart);
			this.cartdetailRepo.save(cartdetailEntity);
		}else {
			Cartdetail cartdetailEntity = this.cartdetailRepo.finByIDproduc(entity.getId());
			cartdetailEntity.setQuantity(cartdetailEntity.getQuantity()+1);
			this.cartdetailRepo.save(cartdetailEntity);
		}
		return "redirect:/home/";
	}
}
