package io.renren.service;

import io.renren.entity.ApplicationEntity;

import java.util.List;
import java.util.Map;

/**
 * 竞赛项目申请
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2017-05-23 00:32:03
 */
public interface ApplicationService {
	
	ApplicationEntity queryObject(Long id);
	
	List<ApplicationEntity> queryList(Map<String, Object> map);
	
	int queryTotal(Map<String, Object> map);
	
	void save(ApplicationEntity application);
	
	void update(ApplicationEntity application);
	
	void delete(Long id);
	
	void deleteBatch(Long[] ids);
}
