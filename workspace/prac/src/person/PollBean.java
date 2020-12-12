package person;

import java.io.Serializable;
import java.util.Set;

public class PollBean implements Serializable{

	private static final long serialVersionUID = 1L;
	private String name;
	private String item;
	
	//득표수 계산을 위한 메서드
	public int getPoll(Set<PollBean> pollList, String item) {
		int reVal = 0;
		for(PollBean p : pollList) {
			if(item.equals(p.item)) {
				reVal++;
			}
		}
		return reVal;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getItem() {
		return item;
	}
	public void setItem(String item) {
		this.item = item;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((item == null) ? 0 : item.hashCode());
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		PollBean other = (PollBean) obj;
		if (item == null) {
			if (other.item != null)
				return false;
		} else if (!item.equals(other.item))
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "PollBean [name=" + name + ", item=" + item + "]";
	}
	
	

}
