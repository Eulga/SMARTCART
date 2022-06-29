package smartcart.team.pj1.command;

import lombok.Getter;
import lombok.Setter;
import smartcart.team.pj1.domain.Item;
import smartcart.team.pj1.domain.Option;

@Getter
@Setter
public class ItemOptionCommand {//데이터를 받아오려면 도메인을 써야하지만 두도메인을 합친 정보가 필요할때가 있다
	Item item;
	Option option;
}
