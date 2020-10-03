package com.test.approval;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ApprovalDAO implements IApproval {
	@Autowired
	private SqlSessionTemplate template;

	@Override
	public int getTotalCount(String seq) {
		// TODO Auto-generated method stub
		return template.selectOne("approval.totalcount", seq);
	}

	@Override
	public List<ApprovalDTO> list(String seq) {
		// TODO Auto-generated method stub
		return template.selectList("approval.list",seq);
	}

}
