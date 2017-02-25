package com.yc.tn.service;

import java.util.List;

import com.yc.tn.entity.PaginationBean;
import com.yc.tn.entity.StrategyInfo;

public interface StrategyInfoService {

	List<StrategyInfo> allInfo();

	List<StrategyInfo> partInfo(int type);

	PaginationBean<StrategyInfo> listPartstrategyInfo(String currPage, String pageSize);

}
