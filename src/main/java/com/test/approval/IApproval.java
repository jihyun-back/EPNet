package com.test.approval;

import java.util.List;

public interface IApproval {
	int getTotalCount(String seq);
	
	List<ApprovalDTO> list(String seq);
}
