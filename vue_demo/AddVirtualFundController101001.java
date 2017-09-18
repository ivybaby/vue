package com.phzc.tamag.webapp.controller.tafund;

import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.phzc.tamag.webapp.common.BaseController;
import com.phzc.tamag.webapp.model.VirtualFundInfoDto;
import com.zhong.ta.api.dto.FundDTO;
import com.zhong.ta.api.dto.FundVirtualInfoDTO;
import com.zhong.ta.api.dto.req.GetBaseFundRequest;
import com.zhong.ta.api.dto.req.GetFundRequest;
import com.zhong.ta.api.dto.resp.BaseResponse;
import com.zhong.ta.api.service.ITaService;

@SuppressWarnings("serial")
@Controller
@RequestMapping(value="/101001/*")
public class AddVirtualFundController101001 extends TaBaseController {
	
	private Logger logger = LoggerFactory.getLogger(AddVirtualFundController101001.class);
	
	@RequestMapping(value="stru")
	public String stru(Model model){
		return "biz/tafund/addvirtualfund/stru101001";
	}
	
	@RequestMapping(value="control")
	public String control(Model model){
		return "biz/tafund/addvirtualfund/control101001_new";
	}
	
	@RequestMapping(value = "saveVirtualFund")
	public void saveFund(HttpServletResponse httpResponse, FundVirtualInfoDTO virtualFund) {
		virtualFund.setCreatedBy(this.getOperId());
		BaseResponse<FundVirtualInfoDTO> addVirtualFund = taService.saveVirtualFund(virtualFund);
		this.printJson(httpResponse, addVirtualFund);
	}

	@RequestMapping(value = "getVirtualFund")
	public void getFund(HttpServletResponse httpResponse, String virtualFundId) {
		GetFundRequest request = new GetFundRequest();
		request.setVirtualFundId(virtualFundId);
		BaseResponse<FundVirtualInfoDTO> fund = taService.getFund(request);

		this.printJsonWithNull(httpResponse, fund);
	}
	
	
	/**
	 * 根据fundId 查询底层基金信息
	 * @param fundId
	 * @return
	 */
	@RequestMapping(value="queryFundInfo.do", method=RequestMethod.POST)
	public JSONObject queryFundInfo(@RequestParam(value="fundId") String fundId) {
		GetFundRequest fundRequest = new GetFundRequest();
		fundRequest.setVirtualFundId(fundId);
		BaseResponse<FundVirtualInfoDTO> fund = taService.getFund(fundRequest);
		return null;
	}
}
