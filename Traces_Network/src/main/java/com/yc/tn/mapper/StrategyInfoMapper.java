package com.yc.tn.mapper;

import java.util.List;

import com.yc.tn.entity.PaginationBean;
import com.yc.tn.entity.StrategyInfo;

public interface StrategyInfoMapper {

	List<StrategyInfo> allInfo();

	List<StrategyInfo> partInfo(int type);

	PaginationBean<StrategyInfo> getStrategyInfoByPagination(PaginationBean<StrategyInfo> userBean);

}
