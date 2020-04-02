package william.poc.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import william.poc.example.model.Address;

@Controller
public class AddressController {

	@GetMapping("/userdetails")
	public String getAddressDetails() {
		return "address";
	}
	
	@GetMapping("/billingaddress")
	public String getShippingAddress(@RequestParam(value = "customerId", defaultValue = "") String customerId,Model model) {
		customerId = "12345" ;
		if(customerId != null && !customerId.isEmpty()) {
			getAddress(model);
		}
		
		return "billingaddress";
		
	}
	
	@GetMapping("/popup")
	public String showPopUp() {
		return "popup";
	}
	
	@GetMapping("/shippingaddress")
	public String getBillingAddress(@RequestParam(value = "customerId", defaultValue = "") String customerId,Model model) {
		customerId = "12345" ;
		if(customerId != null && !customerId.isEmpty()) {
			getAddress(model);
		}
		return "billingaddress";
	}
	
	@GetMapping("/useraddress")
	public String getAddress(Model model) {
		Address address = new Address();
		address.setFirstName("santhosh");
		address.setLastName("more");
		address.setLocation("Near KIMS");
		address.setCity("Hyderabad");
		address.setState("Telangana");
		address.setCountry("India");
		address.setZipcode("500082");
		address.setPhoneNumber("9848541457");
		address.setEmail("santhosh.more@gmail.com");
		model.addAttribute("useraddress",address);
		return "useraddress";
	}
	
	@GetMapping("/getCustomerAddress")
	public String getCustomerAddressDetails() {
		return "";
	}
}
