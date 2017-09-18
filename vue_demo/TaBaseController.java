package com.phzc.tamag.webapp.controller.tafund;

import java.io.IOException;

import javax.annotation.PostConstruct;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.alibaba.fastjson.serializer.ValueFilter;
import com.phzc.tamag.webapp.common.BaseController;
import com.zhong.ta.api.service.ITaService;

public class TaBaseController extends BaseController {

	private static final long serialVersionUID = 1L;
	@Autowired
	ITaService taService;

	@PostConstruct
	public void init() {
		JSON.DEFFAULT_DATE_FORMAT = "yyyy-MM-dd HH:mm:ss";
	}

	public void printJsonWithNull(HttpServletResponse httpResponse, Object obj) {
		printStr(httpResponse,
				JSON.toJSONString(obj, writeNullStringAsEmpty, SerializerFeature.WriteDateUseDateFormat));
	}

	public void printJson(HttpServletResponse httpResponse, Object obj) {
		printStr(httpResponse, JSON.toJSONString(obj, SerializerFeature.WriteDateUseDateFormat));
	}

	public void printStr(HttpServletResponse httpResponse, String str) {
		try {
			httpResponse.setCharacterEncoding("UTF-8");
			httpResponse.setContentType("text/plain;charset=UTF-8");
			httpResponse.getWriter().print(str);
			httpResponse.getWriter().flush();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	private static ValueFilter writeNullStringAsEmpty = new ValueFilter() {
		@Override
		public Object process(Object obj, String s, Object v) {
			if (v == null)
				return "";
			return v;
		}
	};

}
