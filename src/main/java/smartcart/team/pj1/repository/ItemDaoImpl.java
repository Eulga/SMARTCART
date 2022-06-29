package smartcart.team.pj1.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import smartcart.team.pj1.command.ItemOptionCommand;
import smartcart.team.pj1.domain.Item;
import smartcart.team.pj1.domain.Sale;
import smartcart.team.pj1.repository.rowmapper.ItemRowMapper;
import smartcart.team.pj1.repository.rowmapper.SaleRowMapper;
import smartcart.team.pj1.repository.rowmapper.SearchItemOptionRowMapper;
import smartcart.team.pj1.repository.rowmapper.SearchItemRowMapper;

@Repository("ItemDao")
public class ItemDaoImpl implements ItemDao {
	
	@Autowired //Configuration을 찾아주는 자바자체기능
	JdbcTemplate jt; //db연결 함수 받아와 리턴값을 변수로 지정, db연결담당 쿼리문사용 전부다할수있게
	
	
	@Override
	public List<Item> findItemsByCateAtt(String cateAtt) {
		String sql = "SELECT * FROM ITEM WHERE cate_code IN (SELECT cate_code FROM CATEGORY WHERE CATE_ATT = '" + cateAtt + "')";
		//item 리스트 쿼리문
		return jt.query(sql, new ItemRowMapper());
	}

	@Override
	public List<Item> findItemByName(String name) {
		String sql = "select i.item_name, i.item_price, i.item_display, i.item_sell, s.sale_code, s.sale_type FROM item as i INNER JOIN sale as s ON i.sale_code = s.sale_code WHERE i.item_name like '%" + name + "%';";
		//아이템 검색기능 쿼리문 이너조인을 사용해 이 아이템이 세일중인지 아닌지도 판단하여 표시해주는걸로
		return jt.query(sql, new SearchItemRowMapper());
	}

	@Override
	public List<ItemOptionCommand> findItemOptionByName(String name) {
		String sql = "select i.item_name, o.opt_name, o.opt_value FROM item as i INNER JOIN `option` as o ON i.item_code=o.item_code WHERE i.item_name like '%"+name+"%';";
		//옵션검색 쿼리문
		return jt.query(sql, new SearchItemOptionRowMapper());
	}

	@Override
	public List<Sale> findAllSale() {
		String sql = "select sale_type, sale_date, sale_name, sale_percent, sale_price from sale WHERE sale_pro = 'Y'";
		//sale 품목 받아오는 부분 쿼리 : 세일여부가 true일때 받아옴
		return jt.query(sql, new SaleRowMapper());
	}

}
