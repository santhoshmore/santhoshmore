package william.poc.example.repository;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import william.poc.example.model.Item;

@Repository
public interface ItemRepository extends CrudRepository<Item, Long>{
	
	 Logger log = LoggerFactory.getLogger(ItemRepository.class);
	
	@Query("select d from Item d WHERE d.id IN :id")
	public List<Item> getItemsOneByOne(List<Long> id);
	
	

}
