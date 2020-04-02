package william.poc.example.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import william.poc.example.model.Order;

@Controller
public class OrderController {
	
	@GetMapping("/orderdetails")
	public String getOrderDetails(Model model) {
		Order order = new Order();
		DateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
		Date date = new Date();
		int uniqueIdSize = 7;
		String alphaNumericeValue = getAlphaNumericeUniqueValue(uniqueIdSize);
		order.setOrderNumber(alphaNumericeValue); //create auto generated id
		order.setOrderDate(dateFormat.format(date));   
		order.setUserWhoCreatedThisOrder("Santhosh");
		order.setBrandName("Nisum");
		model.addAttribute("orderDetails", order);
		return "orderdetails";
	}
	
	@GetMapping("/ordercreation")
	public String orderCreation() {
		return "orderCreation";
	}
	
	private String getAlphaNumericeUniqueValue(int size) {
		 // chose a Character random from this String 
		String AlphaNumericString = "ABCDEFGHIJKLMNOPQRSTUVWXYZ" + "0123456789"
									 + "abcdefghijklmnopqrstuvxyz"; 
		StringBuffer sb = new StringBuffer();
		for(int i=0; i<size; i++) {
			// generate a random number between 
            // 0 to AlphaNumericString variable length 
            int index 
                = (int)(AlphaNumericString.length() 
                        * Math.random()); 
  
            // add Character one by one in end of sb 
            sb.append(AlphaNumericString 
                          .charAt(index)); 
		}
		return sb.toString();
	}

}
