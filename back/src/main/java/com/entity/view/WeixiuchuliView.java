package com.entity.view;

import com.entity.WeixiuchuliEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 维修处理
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2023-03-31 13:56:00
 */
@TableName("weixiuchuli")
public class WeixiuchuliView  extends WeixiuchuliEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public WeixiuchuliView(){
	}
 
 	public WeixiuchuliView(WeixiuchuliEntity weixiuchuliEntity){
 	try {
			BeanUtils.copyProperties(this, weixiuchuliEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
