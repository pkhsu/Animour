package org.iii.ee100.animour.shopping.web;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.iii.ee100.animour.member.entity.Member;
import org.iii.ee100.animour.member.service.MemberService;
import org.iii.ee100.animour.shopping.entity.CartItem;
import org.iii.ee100.animour.shopping.entity.Orders;
import org.iii.ee100.animour.shopping.entity.OrdersItem;
import org.iii.ee100.animour.shopping.entity.Product;
import org.iii.ee100.animour.shopping.service.OrdersService;
import org.iii.ee100.animour.shopping.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CartController {
	@Autowired
	private ProductService productService;
	
	@Autowired
	private OrdersService ordersService;
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value="/cart/index")
	public String index() {
		return "/shopping/cartIndex";
	}
	
	//加入購物車
	@SuppressWarnings("unchecked")
	@RequestMapping(value="/cart/buy/{id}", method=RequestMethod.GET)
	public String buy(@PathVariable("id") Long id, Model model, HttpSession session) {
		if(session.getAttribute("cart") == null) {
			List<CartItem> cart = new ArrayList<CartItem>();
			cart.add(new CartItem(productService.getOne(id), 1));
			session.setAttribute("cart", cart);
		} else {
			List<CartItem> cart = (List<CartItem>) session.getAttribute("cart");
			int index = this.isExist(id, session);
			if(index == -1) {
				cart.add(new CartItem(productService.getOne(id), 1));
			} else {
				int quantity = cart.get(index).getQuantity() + 1;
				cart.get(index).setQuantity(quantity);
				session.setAttribute("cart", cart);
			}
			session.setAttribute("cart", cart);
		}
		return "redirect:/selectOneProduct?id=" + id;
	}
	
	//刪除購物車項目
	@SuppressWarnings({ "unchecked" })
	@RequestMapping(value="/cart/delete/{index}", method=RequestMethod.GET)
	public String delete(@PathVariable("index") int index, HttpSession session) {
		List<CartItem> cart = (List<CartItem>) session.getAttribute("cart");
		cart.remove(index);
		session.setAttribute("cart", cart);
		return "redirect:/cart/index";
	}
	
	//判斷購物車內是否有東西
	@SuppressWarnings("unchecked")
	public int isExist(Long id, HttpSession session) {
		List<CartItem> cart = (List<CartItem>) session.getAttribute("cart");
		for(int i = 0; i < cart.size(); i++) {
			if(cart.get(i).getProduct().getId() == id) {
				return i;
			}
		}
		return -1;
	}
	
	
	//清空購物車
	@SuppressWarnings("unchecked")
	@RequestMapping(value="/cart/removeShoppingCart", method=RequestMethod.GET)
	public String removeShoppingCart(HttpSession session) {
		List<CartItem> cartItem = (List<CartItem>) session.getAttribute("cart");
		cartItem.removeAll(cartItem);
		return "redirect:/product/index";
	}
	
	
	//確定購買
	@RequestMapping(value="/cart/confirmBuy2", method=RequestMethod.GET)
	public String confirmBuy2() {
		return "redirect:/cart/index";
	}
	
	//確定購買
	@SuppressWarnings("unchecked")
	@RequestMapping(value="/cart/confirmBuy", method=RequestMethod.GET)
	public String confirmBuy(HttpSession session, Model model) {
		List<CartItem> cartItem = (List<CartItem>) session.getAttribute("cart");
		
		if(cartItem.size() == 0) {
			return "redirect:/product/index";
		}
		else {
		Member currentMember = memberService.getNewCurrentMember();
		
		if(currentMember == null) {
			return "/shopping/shoppingCartLogin";
		}
		
		//扣掉庫存
		for(CartItem cart:cartItem) {
			Product product = productService.getOne(cart.getProduct().getId());
			product.setStock(cart.getProduct().getStock() - cart.getQuantity());
			try {
				productService.update(product);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		Integer totalAmount = 0; //購買金額
		Date orderDate = null; //訂單日期
		for(CartItem cart:cartItem) {
			totalAmount = totalAmount + cart.getProduct().getPrice() * cart.getQuantity();
			orderDate = new Date(System.currentTimeMillis());
		}
		
		Orders orders = new Orders();
		orders.setTotalAmount(totalAmount);
		orders.setOrderDate(orderDate);
		orders.setMember(currentMember);
		
		List<OrdersItem> ordersList = new ArrayList<OrdersItem>();
		
		OrdersItem ordersItem = null;
		for(CartItem cart:cartItem) {
			ordersItem = new OrdersItem();
			ordersItem.setName(cart.getProduct().getName());
			ordersItem.setPrice(cart.getProduct().getPrice());
			ordersItem.setQuantity(cart.getQuantity());
			ordersItem.setClassify(cart.getProduct().getClassify().getName());
			ordersItem.setOrders(orders);
			ordersList.add(ordersItem);
		}
		orders.setOrdersItem(ordersList);
		ordersService.insert(orders);
		
		SimpleDateFormat convertDate = new SimpleDateFormat("yyyy年MM月dd日 HH时mm分ss秒");
		String date = convertDate.format(orderDate);
		
		model.addAttribute("memberOrders", ordersList);
		model.addAttribute("ordersListSize", ordersList.size());
		model.addAttribute("totalAmount", totalAmount);
		model.addAttribute("date", date);
		cartItem.removeAll(cartItem);
		
		return "/shopping/ThanksForOrdering";
		}
	}
	
	//修改購物車購買數量
	@SuppressWarnings({ "unchecked" })
	@RequestMapping(value="/cart/update", method=RequestMethod.POST)
	public String delete(HttpServletRequest request, HttpSession session) {
		String[] parameter = request.getParameterValues("quantity");
		List<CartItem> cart = (List<CartItem>) session.getAttribute("cart");
		for(int i = 0; i < cart.size(); i++) {
			cart.get(i).setQuantity(Integer.parseInt(parameter[i]));
		}
		session.setAttribute("cart", cart);
		return "redirect:/cart/index";
	}
	
}
