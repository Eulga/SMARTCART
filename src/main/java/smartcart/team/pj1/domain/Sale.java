package smartcart.team.pj1.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Sale {
	String saleCode;
	boolean salePro;
	String saleType;
	String saleName;
	int saleDate;
	String salePercent;
	int salePrice;
}
