package io.renren.service;

import io.renren.entity.CompetitionBaseinfoEntity;

import java.util.List;
import java.util.Map;

/**
 * 
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2017-05-02 00:04:41
 */
public interface CompetitionBaseinfoService {
	
	CompetitionBaseinfoEntity queryObject(Long id);
	
	List<CompetitionBaseinfoEntity> queryList(Map<String, Object> map);
	
	int queryTotal(Map<String, Object> map);
	
	void save(CompetitionBaseinfoEntity competitionBaseinfo);
	
	void update(CompetitionBaseinfoEntity competitionBaseinfo);
	
	void delete(Long id);
	
	void deleteBatch(Long[] ids);
}
