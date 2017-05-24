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

import io.renren.entity.ApplicationEntity;
import io.renren.service.ApplicationService;
import io.renren.utils.PageUtils;
import io.renren.utils.Query;
import io.renren.utils.R;


/**
 * 竞赛项目申请
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2017-05-23 00:32:03
 */
@RestController
@RequestMapping("application")
public class ApplicationController {
	@Autowired
	private ApplicationService applicationService;
	
	/**
	 * 列表
	 */
	@RequestMapping("/list")
	@RequiresPermissions("application:list")
	public R list(@RequestParam Map<String, Object> params){
		//查询列表数据
        Query query = new Query(params);

		List<ApplicationEntity> applicationList = applicationService.queryList(query);
		int total = applicationService.queryTotal(query);
		
		PageUtils pageUtil = new PageUtils(applicationList, total, query.getLimit(), query.getPage());
		
		return R.ok().put("page", pageUtil);
	}
	
	
	/**
	 * 信息
	 */
	@RequestMapping("/info/{id}")
	@RequiresPermissions("application:info")
	public R info(@PathVariable("id") Long id){
		ApplicationEntity application = applicationService.queryObject(id);
		
		return R.ok().put("application", application);
	}
	
	/**
	 * 保存
	 */
	@RequestMapping("/save")
	@RequiresPermissions("application:save")
	public R save(@RequestBody ApplicationEntity application){
		applicationService.save(application);
		
		return R.ok();
	}
	
	/**
	 * 修改
	 */
	@RequestMapping("/update")
	@RequiresPermissions("application:update")
	public R update(@RequestBody ApplicationEntity application){
		applicationService.update(application);
		
		return R.ok();
	}
	
	/**
	 * 删除
	 */
	@RequestMapping("/delete")
	@RequiresPermissions("application:delete")
	public R delete(@RequestBody Long[] ids){
		applicationService.deleteBatch(ids);
		
		return R.ok();
	}
	
}
