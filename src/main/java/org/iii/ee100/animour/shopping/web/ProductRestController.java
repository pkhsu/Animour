package org.iii.ee100.animour.shopping.web;

import java.util.List;
import java.util.Map;

import org.iii.ee100.animour.shopping.entity.Product;
import org.iii.ee100.animour.shopping.service.OrdersService;
import org.iii.ee100.animour.shopping.service.ProductService;
import org.iii.ee100.animour.shopping.web.utility.pageUtility;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ProductRestController {
	
	@Autowired
	ProductService productService;
	
	@Autowired
	OrdersService ordersService;
	
	@RequestMapping(value={"/shopping/product"}, method=RequestMethod.GET, produces={"application/json", "application/xml"})
	public List<Product> listProduct(@RequestParam(value="pageNo", required=false, defaultValue="1") String pageNoStr) {
		int pageNo = pageUtility.getPageNumber(pageNoStr);
		Page<Product> page = productService.getPage(pageNo, 20);
		List<Product> products = page.getContent();
		return products;
	}
	
	@RequestMapping(path = { "/shopping/product/chart" }, method = RequestMethod.GET, produces = { "application/json" })
	public Map<String, Integer> chart() {
		return productService.chart();
	}
	
	@RequestMapping(path = { "/shopping/orders/chart" }, method = RequestMethod.GET, produces = { "application/json" })
	public Map<String, Integer> ordersChart() {
		return ordersService.chart();
	}
}
