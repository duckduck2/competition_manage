package io.renren.entity;

import java.io.Serializable;
import java.util.Date;



/**
 * 
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2017-05-02 00:04:41
 */
public class CompetitionBaseinfoEntity implements Serializable {
	private static final long serialVersionUID = 1L;
	
	//
	private Long id;
	//竞赛名
	private String name;
	//类别
	private String type;
	//主办单位
	private String company;
	//介绍
	private String introduce;
	//要求
	private String requirement;
	//比赛时间
	private Date time;
	//创建时间
	private Date createTime;
	//修改时间
	private Date updateTime;

	/**
	 * 设置：
	 */
	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 获取：
	 */
	public Long getId() {
		return id;
	}
	/**
	 * 设置：竞赛名
	 */
	public void setName(String name) {
		this.name = name;
	}
	/**
	 * 获取：竞赛名
	 */
	public String getName() {
		return name;
	}
	/**
	 * 设置：类别
	 */
	public void setType(String type) {
		this.type = type;
	}
	/**
	 * 获取：类别
	 */
	public String getType() {
		return type;
	}
	/**
	 * 设置：主办单位
	 */
	public void setCompany(String company) {
		this.company = company;
	}
	/**
	 * 获取：主办单位
	 */
	public String getCompany() {
		return company;
	}
	/**
	 * 设置：介绍
	 */
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	/**
	 * 获取：介绍
	 */
	public String getIntroduce() {
		return introduce;
	}
	/**
	 * 设置：要求
	 */
	public void setRequirement(String requirement) {
		this.requirement = requirement;
	}
	/**
	 * 获取：要求
	 */
	public String getRequirement() {
		return requirement;
	}
	/**
	 * 设置：比赛时间
	 */
	public void setTime(Date time) {
		this.time = time;
	}
	/**
	 * 获取：比赛时间
	 */
	public Date getTime() {
		return time;
	}
	/**
	 * 设置：创建时间
	 */
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	/**
	 * 获取：创建时间
	 */
	public Date getCreateTime() {
		return createTime;
	}
	/**
	 * 设置：修改时间
	 */
	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}
	/**
	 * 获取：修改时间
	 */
	public Date getUpdateTime() {
		return updateTime;
	}
}
