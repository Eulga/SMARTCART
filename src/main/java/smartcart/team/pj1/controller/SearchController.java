package smartcart.team.pj1.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import smartcart.team.pj1.command.ItemOptionCommand;
import smartcart.team.pj1.domain.Item;
import smartcart.team.pj1.service.ItemService;

@Controller
public class SearchController {
	
	@Autowired
	ItemService is;
	
	@PostMapping("searchItem")
	public ModelAndView searchStock(String itemName) {
		ModelAndView mav = new ModelAndView();
		
		List<Item> itemList = is.findItemByName(itemName);
		mav.addObject("itemList", itemList);
		mav.setViewName("searchItemName");
		return mav;
	}
	
	@PostMapping("searchOption")
	public ModelAndView searchOption(String itemName) {
		ModelAndView mav = new ModelAndView();
		
		List<ItemOptionCommand> itemOptionList = is.findItemOptionByName(itemName);
		mav.addObject("itemOptionList", itemOptionList);
		mav.setViewName("searchOption");
		return mav;
	}
}
