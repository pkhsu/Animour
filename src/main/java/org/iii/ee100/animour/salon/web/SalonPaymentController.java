package org.iii.ee100.animour.salon.web;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import org.iii.ee100.animour.salon.service.ReservationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import allPay.payment.integration.AllInOne;
import allPay.payment.integration.domain.AioChargebackObj;
import allPay.payment.integration.domain.AioCheckOutALL;
import allPay.payment.integration.domain.InvoiceObj;
import allPay.payment.integration.exception.AllPayException;

@Controller
public class SalonPaymentController {

	@Autowired
	ReservationService reservationService;
	

	// 結帳，在此設定歐付寶結帳所需參數
	@RequestMapping(value = "/SalonfrontEnd/CheckOut/CheckOutALL", method = RequestMethod.POST, produces = "text/html;charset=UTF-8")
	public @ResponseBody String aioCheckOutALL() {
		AioCheckOutALL aio = new AioCheckOutALL();
		AllInOne all = new AllInOne("");
		InvoiceObj invoice = new InvoiceObj();
		// 不指定付款方式，給null
		invoice = null;
		// 設定訂單編號，20碼。可自訂
		aio.setMerchantTradeNo("SalonNo"+UUID.randomUUID().toString().replaceAll("-", "").substring(0, 10));
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd hh:mm:ss");
		// 設定交易時間
		aio.setMerchantTradeDate(sdf.format(date));
		// 商品名稱＋單價＋數量
		aio.setItemName("造型 300元X1");
		// 交易金額
		aio.setTotalAmount("300");
		// 交易描述
		aio.setTradeDesc("編號:");
		aio.setHoldTradeAMT("0");
		// 顯示付款成功的頁面（預設
		aio.setReturnURL("http://211.23.128.214:5000");
		// 付款成功後轉跳的頁面 
		aio.setClientBackURL("http://localhost:8080/halfway/");
		try {
			String html = all.aioCheckOut(aio, invoice);
			System.out.println(html);
			return html;
		} catch (AllPayException e) {
			throw new Error(e.getNewExceptionMessage());
		}
	}
//	
//	// 退款
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
//
}
