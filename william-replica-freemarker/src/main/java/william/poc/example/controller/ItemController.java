package william.poc.example.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import william.poc.example.exception.RecordNotFoundException;
import william.poc.example.model.Item;
import william.poc.example.service.ItemService;

@Controller
public class ItemController {

	 private final Logger log = LoggerFactory.getLogger(this.getClass()); 
	
	@Autowired
	ItemService itemService;
	
	@GetMapping("/items")
	public String getItems(Model model) {
		
		model.addAttribute("items");
		return "itemDetails";
	}
	
	@GetMapping("/itemList")
	public String getAllItems(Model model){
		log.info("Getting Item details from the database."  );
		List<Item> list = itemService.getAllItems();
		model.addAttribute("items", list);
		return "itemDetails";
	}
	
	@GetMapping(value = "/getItemDetails")
	public ModelAndView showItemById(Model model, @RequestParam("q") List<Long> id) 
							throws RecordNotFoundException 
	{
			List<Item> items = this.itemService.getItemsOneByOne(id);
			Map<String, Object> params = new HashMap<String, Object>();
			params.put("items", items);
			return new ModelAndView("itemDetails", params);
	}
}
