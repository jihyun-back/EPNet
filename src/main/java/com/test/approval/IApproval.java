package com.test.approval;

import java.util.HashMap;
import java.util.List;

public interface IApproval {
	int getTotalCount(String seq);
	
	List<ApprovalDTO> list(HashMap<String, String> hash);
}
