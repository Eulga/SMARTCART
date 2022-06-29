package smartcart.team.pj1.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import smartcart.team.pj1.domain.Item;
import smartcart.team.pj1.domain.Sale;
import smartcart.team.pj1.service.ItemService;

//화면전환 기능

@Controller
public class PageController {
	
	@Autowired
	ItemService is; //for menu2(), itemList()
	//리스트를 받아올수있게
	
	@GetMapping("/")
	public ModelAndView mainPage() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("index");
		return mav;
	}
	
	@GetMapping("menu1")
	public ModelAndView menu1() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("menu1");
		return mav;
	}
	
	@GetMapping("menu2")
	public ModelAndView menu2() {
		ModelAndView mav = new ModelAndView();
		
		List<Sale> saleList = is.findAllSale();
		mav.addObject("saleList", saleList);
		mav.setViewName("menu2");
		
		return mav;
	}
	
	@GetMapping("menu3")
	public ModelAndView menu3() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("menu3");
		return mav;
	}
	
	@GetMapping("menu4")
	public ModelAndView menu4() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("menu4");
		return mav;
	}
	
	@GetMapping("result1")
	public ModelAndView result1() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("result1");
		return mav;
	}
	
	@GetMapping("result2")
	public ModelAndView result2() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("result2");
		return mav;
	}
	
	@GetMapping("itemList")//물품탐색기능 - 
	public ModelAndView itemList(String cateAtt) {
		ModelAndView mav = new ModelAndView();
		List<Item> itemList = is.findItemsByCateAtt(cateAtt);//DB에 있는 상품 가져오는것(검색한 카테속성으로 부합한 아이템을 가져오는것)
		//아이템이라는 배열을 하나 선언
		
		mav.addObject("itemList", itemList); 
		//모델앤뷰에 모델설정(데이터)를 받음
		//itemlist의 변수를 머금고 itemlist 페이지로 이동
		mav.setViewName("itemList");//jsp명t
		return mav;
	}
}
