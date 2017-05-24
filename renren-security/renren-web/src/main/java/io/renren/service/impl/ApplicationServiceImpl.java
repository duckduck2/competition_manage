package io.renren.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

import io.renren.dao.ApplicationDao;
import io.renren.entity.ApplicationEntity;
import io.renren.service.ApplicationService;



@Service("cmApplicationService")
public class ApplicationServiceImpl implements ApplicationService {
	@Autowired
	private ApplicationDao applicationDao;
	
	@Override
	public ApplicationEntity queryObject(Long id){
		return applicationDao.queryObject(id);
	}
	
	@Override
	public List<ApplicationEntity> queryList(Map<String, Object> map){
		return applicationDao.queryList(map);
	}
	
	@Override
	public int queryTotal(Map<String, Object> map){
		return applicationDao.queryTotal(map);
	}
	
	@Override
	public void save(ApplicationEntity application){
		applicationDao.save(application);
	}
	
	@Override
	public void update(ApplicationEntity application){
		applicationDao.update(application);
	}
	
	@Override
	public void delete(Long id){
		applicationDao.delete(id);
	}
	
	@Override
	public void deleteBatch(Long[] ids){
		applicationDao.deleteBatch(ids);
	}
	
}
