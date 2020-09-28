package com.test.pay;

import java.util.HashMap;
import java.util.List;

public interface IPayDAO {

	List<PayDTO> list(HashMap<String, String> map);

	String totalCount();
	
}
