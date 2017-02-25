package com.yc.tn.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.tn.entity.PaginationBean;
import com.yc.tn.entity.StrategyInfo;
import com.yc.tn.mapper.StrategyInfoMapper;
import com.yc.tn.service.StrategyInfoService;




@Service("strategyInfoService")
public class StrategyInfoServiceImpl implements StrategyInfoService {

		
	@Autowired
	private StrategyInfoMapper strategyInfoMapper;
	

	@Override
	public List<StrategyInfo> allInfo() {
		return strategyInfoMapper.allInfo();
	}


	

	@Override
	public List<StrategyInfo> partInfo(int type) {
		return strategyInfoMapper.partInfo(type);
	}


	@Override
	public PaginationBean<StrategyInfo> listPartstrategyInfo(String currPage, String pageSize) {
		PaginationBean<StrategyInfo> strategyInfoBean = new PaginationBean<StrategyInfo>();
		if(currPage != null){
			strategyInfoBean.setCurrPage(Integer.parseInt(currPage));
		}
		if(pageSize != null){
			strategyInfoBean.setPageSize(Integer.parseInt(pageSize));
		}
		
		return strategyInfoMapper.getStrategyInfoByPagination(strategyInfoBean);
	}

}
