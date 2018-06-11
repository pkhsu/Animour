package org.iii.ee100.animour.shopping.web;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.iii.ee100.animour.member.entity.Member;
import org.iii.ee100.animour.member.service.MemberService;
import org.iii.ee100.animour.shopping.entity.Orders;
import org.iii.ee100.animour.shopping.service.OrdersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import allPay.payment.integration.AllInOne;
import allPay.payment.integration.domain.AioCheckOutALL;
import allPay.payment.integration.domain.InvoiceObj;
import allPay.payment.integration.exception.AllPayException;

@Controller
public class ShoppingPaymentController {

	@Autowired
	private OrdersService ordersService;
	
	@Autowired
	private MemberService memberService;

	// 結帳，在此設定歐付寶結帳所需參數
	@RequestMapping(value = "/ShopfrontEnd/CheckOut/CheckOutALL", method = RequestMethod.POST, produces = "text/html;charset=UTF-8")
	public @ResponseBody String aioCheckOutALL(HttpServletRequest request) {
		AioCheckOutALL aio = new AioCheckOutALL();
		AllInOne all = new AllInOne("");
		InvoiceObj invoice = new InvoiceObj();
		// 不指定付款方式，給null
		invoice = null;
		// 設定訂單編號，20碼。可自訂
		aio.setMerchantTradeNo("ShopAdp"+UUID.randomUUID().toString().replaceAll("-", "").substring(0, 10));
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd hh:mm:ss");
		// 設定交易時間
		aio.setMerchantTradeDate(sdf.format(date));
		
		Member currentMember = memberService.getNewCurrentMember();
		List<Orders> ordersList = ordersService.getByMemberOrders(currentMember.getId());
		String itemName = new String();
		String totalAmount = String.valueOf(ordersList.get(ordersList.size() - 1).getTotalAmount());
		
		for(int i = 0; i < ordersList.get(ordersList.size() - 1).getOrdersItem().size(); i++) {
			itemName += ordersList.get(ordersList.size() - 1).getOrdersItem().get(i).getName() + "#";
		}
		
		// 商品名稱＋單價＋數量
		aio.setItemName(itemName);
		// 交易金額
		aio.setTotalAmount(totalAmount);
		// 交易描述
		aio.setTradeDesc("認養編號:");
		aio.setHoldTradeAMT("0");
		// 顯示付款成功的頁面（預設
		aio.setReturnURL("http://211.23.128.214:5000");
		// 付款成功後轉跳的頁面 
		StringBuffer url = request.getRequestURL();
		int lastIndexOf = url.lastIndexOf("/ShopfrontEnd");
		String substring = url.substring(0, lastIndexOf);
		aio.setClientBackURL(substring + "/product/index");
		try {
			String html = all.aioCheckOut(aio, invoice);
			System.out.println(html);
			return html;
		} catch (AllPayException e) {
			throw new Error(e.getNewExceptionMessage());
		}
	}
	
	// 退款
//	@RequestMapping(value = "/backstage/aioChargeback", method = RequestMethod.GET)
//	public ModelAndView queryCreditTrade(){
//		return new ModelAndView("/halfway/aioChargeback", "command", new AioChargebackObj());
//	}
//	
//	@RequestMapping(value = "/backstage/aioChargeback", method = RequestMethod.POST, produces="text/html;charset=UTF-8")
//	public @ResponseBody String queryCreditTrade(AioChargebackObj aioChargeback){
//		AllInOne all = new AllInOne("");
//		try{
//			String result = all.aioChargeback(aioChargeback);
//			System.out.println(result);
//			return result;
//		} catch(AllPayException e){
//			throw new Error(e.getNewExceptionMessage());
//		}
//	}

}
