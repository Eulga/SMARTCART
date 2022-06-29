package smartcart.team.pj1.repository.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import smartcart.team.pj1.domain.Category;
import smartcart.team.pj1.domain.Item;
import smartcart.team.pj1.domain.Sale;

public class ItemRowMapper implements RowMapper<Item> {

	@Override
	public Item mapRow(ResultSet rs, int rowNum) throws SQLException {
		Item item = new Item();
		Category category = new Category();
		Sale sale = new Sale();
		
		item.setItemCode(rs.getString("item_code"));
		category.setCateCode(rs.getInt("cate_code"));
		item.setCategory(category);
		item.setItemName(rs.getString("item_name"));
		item.setItemPrice(rs.getInt("item_price"));
		item.setItemDisplay(rs.getBoolean("item_display"));
		item.setItemSell(rs.getBoolean("item_sell"));
		sale.setSaleCode(rs.getString("sale_code"));
		item.setSale(sale);
		
		return item;
	}

}
