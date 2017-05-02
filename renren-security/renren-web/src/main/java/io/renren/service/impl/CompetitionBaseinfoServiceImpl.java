package io.renren.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

import io.renren.dao.CompetitionBaseinfoDao;
import io.renren.entity.CompetitionBaseinfoEntity;
import io.renren.service.CompetitionBaseinfoService;



@Service("competitionBaseinfoService")
public class CompetitionBaseinfoServiceImpl implements CompetitionBaseinfoService {
	@Autowired
	private CompetitionBaseinfoDao competitionBaseinfoDao;
	
	@Override
	public CompetitionBaseinfoEntity queryObject(Long id){
		return competitionBaseinfoDao.queryObject(id);
	}
	
	@Override
	public List<CompetitionBaseinfoEntity> queryList(Map<String, Object> map){
		return competitionBaseinfoDao.queryList(map);
	}
	
	@Override
	public int queryTotal(Map<String, Object> map){
		return competitionBaseinfoDao.queryTotal(map);
	}
	
	@Override
	public void save(CompetitionBaseinfoEntity competitionBaseinfo){
		competitionBaseinfoDao.save(competitionBaseinfo);
	}
	
	@Override
	public void update(CompetitionBaseinfoEntity competitionBaseinfo){
		competitionBaseinfoDao.update(competitionBaseinfo);
	}
	
	@Override
	public void delete(Long id){
		competitionBaseinfoDao.delete(id);
	}
	
	@Override
	public void deleteBatch(Long[] ids){
		competitionBaseinfoDao.deleteBatch(ids);
	}
	
}
