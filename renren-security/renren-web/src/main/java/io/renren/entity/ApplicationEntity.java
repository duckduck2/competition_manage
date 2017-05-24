package io.renren.entity;

import java.io.Serializable;
import java.util.Date;



/**
 * 竞赛项目申请
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2017-05-23 00:32:03
 */
public class ApplicationEntity implements Serializable {
	private static final long serialVersionUID = 1L;
	
	//竞赛申请id
	private Long id;
	//用户id
	private Long userId;
	//竞赛申请名称
	private String name;
	//审核人
	private String reviewer;
	//主办方
	private String organizer;
	//申请时间
	private Date applyTime;
	//审核状态 10 待审核 20 审核通过 30 审核不通过
	private String state;
	//审核情况
	private String situation;
	
	public String getSituation() {
		return situation;
	}
	public void setSituation(String situation) {
		this.situation = situation;
	}
	/**
	 * 设置：竞赛申请id
	 */
	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 获取：竞赛申请id
	 */
	public Long getId() {
		return id;
	}
	/**
	 * 设置：用户id
	 */
	public void setUserId(Long userId) {
		this.userId = userId;
	}
	/**
	 * 获取：用户id
	 */
	public Long getUserId() {
		return userId;
	}
	/**
	 * 设置：竞赛申请名称
	 */
	public void setName(String name) {
		this.name = name;
	}
	/**
	 * 获取：竞赛申请名称
	 */
	public String getName() {
		return name;
	}
	/**
	 * 设置：审核人
	 */
	public void setReviewer(String reviewer) {
		this.reviewer = reviewer;
	}
	/**
	 * 获取：审核人
	 */
	public String getReviewer() {
		return reviewer;
	}
	/**
	 * 设置：主办方
	 */
	public void setOrganizer(String organizer) {
		this.organizer = organizer;
	}
	/**
	 * 获取：主办方
	 */
	public String getOrganizer() {
		return organizer;
	}
	/**
	 * 设置：申请时间
	 */
	public void setApplyTime(Date applyTime) {
		this.applyTime = applyTime;
	}
	/**
	 * 获取：申请时间
	 */
	public Date getApplyTime() {
		return applyTime;
	}
	/**
	 * 设置：审核状态 10 待审核 20 审核通过 30 审核不通过
	 */
	public void setState(String state) {
		this.state = state;
	}
	/**
	 * 获取：审核状态 10 待审核 20 审核通过 30 审核不通过
	 */
	public String getState() {
		return state;
	}
}
