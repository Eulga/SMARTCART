package smartcart.team.pj1.service;

import java.util.List;

import smartcart.team.pj1.command.ItemOptionCommand;
import smartcart.team.pj1.domain.Item;
import smartcart.team.pj1.domain.Sale;

public interface ItemService {
	List<Item> findItemsByCateAtt(String cateAtt);
	List<Item> findItemByName(String name);
	List<ItemOptionCommand> findItemOptionByName(String name);
	List<Sale> findAllSale();
}
