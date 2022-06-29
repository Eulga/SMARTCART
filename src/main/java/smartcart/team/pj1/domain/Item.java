package smartcart.team.pj1.domain;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Item {
	String itemCode;
	Category category;
	String itemName;
	int itemPrice;
	boolean itemDisplay;
	boolean itemSell;
	Sale sale;
}
