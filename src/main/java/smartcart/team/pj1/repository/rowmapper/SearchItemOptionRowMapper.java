package smartcart.team.pj1.repository.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import smartcart.team.pj1.command.ItemOptionCommand;
import smartcart.team.pj1.domain.Item;
import smartcart.team.pj1.domain.Option;

public class SearchItemOptionRowMapper implements RowMapper<ItemOptionCommand> {
	
	@Override
	public ItemOptionCommand mapRow(ResultSet rs, int rowNum) throws SQLException {
		ItemOptionCommand itemOption = new ItemOptionCommand();
		Item item = new Item();
		Option option = new Option();
		
		item.setItemName(rs.getString("i.item_name"));
		itemOption.setItem(item);
		option.setOptName(rs.getString("o.opt_name"));
		option.setOptValue(rs.getString("o.opt_value"));
		itemOption.setOption(option);
		
		return itemOption;
	}
}
