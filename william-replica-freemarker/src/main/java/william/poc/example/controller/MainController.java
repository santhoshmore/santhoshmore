package william.poc.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

	@GetMapping("/orderCapture")
	public String orderCapturePage() {
		return "orderCapturePage";
	}
}
