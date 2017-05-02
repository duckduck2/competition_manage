package io.renren.controller;

import java.util.List;
import java.util.Map;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import io.renren.entity.CompetitionBaseinfoEntity;
import io.renren.service.CompetitionBaseinfoService;
import io.renren.utils.PageUtils;
import io.renren.utils.Query;
import io.renren.utils.R;


/**
 * 
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2017-05-02 00:04:41
 */
@RestController
@RequestMapping("competitionbaseinfo")
public class CompetitionBaseinfoController {
	@Autowired
	private CompetitionBaseinfoService competitionBaseinfoService;
	
	/**
	 * 列表
	 */
	@RequestMapping("/list")
	@RequiresPermissions("competitionbaseinfo:list")
	public R list(@RequestParam Map<String, Object> params){
		//查询列表数据
        Query query = new Query(params);

		List<CompetitionBaseinfoEntity> competitionBaseinfoList = competitionBaseinfoService.queryList(query);
		int total = competitionBaseinfoService.queryTotal(query);
		
		PageUtils pageUtil = new PageUtils(competitionBaseinfoList, total, query.getLimit(), query.getPage());
		
		return R.ok().put("page", pageUtil);
	}
	
	
	/**
	 * 信息
	 */
	@RequestMapping("/info/{id}")
	@RequiresPermissions("competitionbaseinfo:info")
	public R info(@PathVariable("id") Long id){
		CompetitionBaseinfoEntity competitionBaseinfo = competitionBaseinfoService.queryObject(id);
		
		return R.ok().put("competitionBaseinfo", competitionBaseinfo);
	}
	
	/**
	 * 保存
	 */
	@RequestMapping("/save")
	@RequiresPermissions("competitionbaseinfo:save")
	public R save(@RequestBody CompetitionBaseinfoEntity competitionBaseinfo){
		competitionBaseinfoService.save(competitionBaseinfo);
		
		return R.ok();
	}
	
	/**
	 * 修改
	 */
	@RequestMapping("/update")
	@RequiresPermissions("competitionbaseinfo:update")
	public R update(@RequestBody CompetitionBaseinfoEntity competitionBaseinfo){
		competitionBaseinfoService.update(competitionBaseinfo);
		
		return R.ok();
	}
	
	/**
	 * 删除
	 */
	@RequestMapping("/delete")
	@RequiresPermissions("competitionbaseinfo:delete")
	public R delete(@RequestBody Long[] ids){
		competitionBaseinfoService.deleteBatch(ids);
		
		return R.ok();
	}
	
}
