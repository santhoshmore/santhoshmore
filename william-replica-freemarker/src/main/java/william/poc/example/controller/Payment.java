package william.poc.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class Payment {

	@GetMapping("/paymentMode")
	public String getPaymentMode() {
		return "payment";
	}
	
	
}
