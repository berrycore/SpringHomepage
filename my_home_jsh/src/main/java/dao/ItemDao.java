package dao;

import java.util.List;

import model.Condition;
import model.Item;

public interface ItemDao {

	void putItem(Item item);
	List<Item> getItem(Condition c);
	Integer getItemCount();
	Item getItem(String code);
}
