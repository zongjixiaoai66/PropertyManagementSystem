package com.entity.model;

import com.entity.TingcheweiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
 

/**
 * 停车位
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2023-03-31 13:56:00
 */
public class TingcheweiModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 车位区号
	 */
	
	private String cheweiquhao;
		
	/**
	 * 车位编号
	 */
	
	private String cheweibianhao;
		
	/**
	 * 车场类型
	 */
	
	private String chechangleixing;
		
	/**
	 * 所属小区
	 */
	
	private String suoshuxiaoqu;
		
	/**
	 * 状态
	 */
	
	private String zhuangtai;
				
	
	/**
	 * 设置：车位区号
	 */
	 
	public void setCheweiquhao(String cheweiquhao) {
		this.cheweiquhao = cheweiquhao;
	}
	
	/**
	 * 获取：车位区号
	 */
	public String getCheweiquhao() {
		return cheweiquhao;
	}
				
	
	/**
	 * 设置：车位编号
	 */
	 
	public void setCheweibianhao(String cheweibianhao) {
		this.cheweibianhao = cheweibianhao;
	}
	
	/**
	 * 获取：车位编号
	 */
	public String getCheweibianhao() {
		return cheweibianhao;
	}
				
	
	/**
	 * 设置：车场类型
	 */
	 
	public void setChechangleixing(String chechangleixing) {
		this.chechangleixing = chechangleixing;
	}
	
	/**
	 * 获取：车场类型
	 */
	public String getChechangleixing() {
		return chechangleixing;
	}
				
	
	/**
	 * 设置：所属小区
	 */
	 
	public void setSuoshuxiaoqu(String suoshuxiaoqu) {
		this.suoshuxiaoqu = suoshuxiaoqu;
	}
	
	/**
	 * 获取：所属小区
	 */
	public String getSuoshuxiaoqu() {
		return suoshuxiaoqu;
	}
				
	
	/**
	 * 设置：状态
	 */
	 
	public void setZhuangtai(String zhuangtai) {
		this.zhuangtai = zhuangtai;
	}
	
	/**
	 * 获取：状态
	 */
	public String getZhuangtai() {
		return zhuangtai;
	}
			
}
