package smartcart.team.pj1.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import smartcart.team.pj1.command.ItemOptionCommand;
import smartcart.team.pj1.domain.Item;
import smartcart.team.pj1.domain.Sale;
import smartcart.team.pj1.repository.ItemDao;

@Service("ItemService")
public class ItemServiceImpl implements ItemService {

	@Autowired
	ItemDao id;//쿼리활용을 위해서 클래스 변수를 선언
	
	@Override
	public List<Item> findItemsByCateAtt(String cateAtt) {
		
		return id.findItemsByCateAtt(cateAtt);
	}

	@Override
	public List<Item> findItemByName(String name) {
		
		return id.findItemByName(name);
	}

	@Override
	public List<ItemOptionCommand> findItemOptionByName(String name) {

		return id.findItemOptionByName(name);
	}

	@Override
	public List<Sale> findAllSale() {
		
		return id.findAllSale();
	}

}
