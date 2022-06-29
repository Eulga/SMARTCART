package smartcart.team.pj1.repository.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import smartcart.team.pj1.domain.Item;
import smartcart.team.pj1.domain.Sale;

public class SearchItemRowMapper implements RowMapper<Item> {
	
	@Override
	public Item mapRow(ResultSet rs, int rowNum) throws SQLException {
		Item item = new Item();
		Sale sale = new Sale();
		
		item.setItemName(rs.getString("i.item_name"));
		item.setItemPrice(rs.getInt("i.item_price"));
		item.setItemDisplay(rs.getBoolean("i.item_display"));
		item.setItemSell(rs.getBoolean("i.item_sell"));
		sale.setSaleCode(rs.getString("s.sale_code"));
		sale.setSaleType(rs.getString("s.sale_type"));
		item.setSale(sale);
		
		return item;
	}
}
