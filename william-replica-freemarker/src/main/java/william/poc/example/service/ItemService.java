package william.poc.example.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import william.poc.example.exception.RecordNotFoundException;
import william.poc.example.model.Item;
import william.poc.example.repository.ItemRepository;

@Service
public class ItemService {
	
	Logger log = LoggerFactory.getLogger(ItemService.class);

	@Autowired
	ItemRepository itemRepository;
	
	public void save(Item item) {
		itemRepository.save(item);
	}
	
	public Item getItemById(Long id) throws RecordNotFoundException 
	{
		Optional<Item> employee = itemRepository.findById(id);
		
		if(employee.isPresent()) {
			return employee.get();
		} else {
			throw new RecordNotFoundException("No employee record exist for given id");
		}
	}
	
	public List<Item> getAllItems() {
		List<Item> result = (List<Item>) itemRepository.findAll();

		if (result.size() > 0) {
			return result;
		} else {
			return new ArrayList<Item>();
		}
	}
	
	
	public List<Item> getItemsOneByOne(List<Long> ids){
		
		List<Item> itemList = (List<Item>) itemRepository.getItemsOneByOne(ids);
		log.info("<<<<<< itemList >>>>>:  " + itemList);
		return itemList;
	}
	 
}
