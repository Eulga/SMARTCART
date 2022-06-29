package smartcart.team.pj1.repository.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import smartcart.team.pj1.domain.Sale;

public class SaleRowMapper implements RowMapper<Sale> {

	@Override
	public Sale mapRow(ResultSet rs, int rowNum) throws SQLException {
		Sale sale = new Sale();
		
		sale.setSaleType(rs.getString("sale_type"));
		sale.setSaleDate(rs.getInt("sale_date"));
		sale.setSaleName(rs.getString("sale_name"));
		sale.setSalePercent(rs.getString("sale_percent"));
		sale.setSalePrice(rs.getInt("sale_price"));
		
		return sale;
	}

}
