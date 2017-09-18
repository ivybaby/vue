package com.phzc.tamag.webapp.controller.tafund;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zhong.ta.api.dto.FundVirtualInfoDTO;
import com.zhong.ta.api.dto.HoldDTO;
import com.zhong.ta.api.dto.req.GetFundRequest;
import com.zhong.ta.api.dto.req.QueryFundHoldListRequest;
import com.zhong.ta.api.dto.req.QueryFundRequest;
import com.zhong.ta.api.dto.resp.BasePaginationResponse;
import com.zhong.ta.api.dto.resp.BaseResponse;

/**
 * 虚拟基金查询
 * @author liuqiangqiang
 *
 */
@Controller
@RequestMapping("/101007/*")
public class Controller101007 extends TaBaseController{

	private static final long serialVersionUID = 1L;

	@RequestMapping(value="stru")
	public String stru(Model model){
		model.addAttribute("x", "101007");
		return  "biz/tafund/stru";
	}
	
	@RequestMapping(value="control")
	public String control(HttpServletRequest request, Model model){
		return "biz/tafund/control101007";
	}
	
	@RequestMapping(value="queryFundList")
	public void queryFundList(HttpServletRequest request, HttpServletResponse httpResponse, QueryFundRequest req){
//		String fund_code = request.getParameter("fund_code");
//		String v_fund_name = request.getParameter("v_fund_name");
//		String create_time = request.getParameter("create_time");
//		String v_fund_code = request.getParameter("v_fund_code");
//		String company = request.getParameter("company");
//		String status = request.getParameter("status");
//		
//		QueryFundRequest req = new QueryFundRequest();
//		req.setFundId("000001");
		
		BasePaginationResponse<FundVirtualInfoDTO> res = taService.queryFundList(req);
		
		this.printJson(httpResponse, res);
	}
	
	
	@RequestMapping(value="virtualFundInfo")
	public String virtualFundInfo(HttpServletRequest request, Model model){
		
		String fundId = request.getParameter("fundId");
		QueryFundRequest req = new QueryFundRequest();
		req.setVirtualFundId(fundId);
		BasePaginationResponse<FundVirtualInfoDTO> res = taService.queryFundList(req);
		
		model.addAttribute("fundInfo", res.getModelList().get(0));
		
		
		return "biz/tafund/virtualFundInfo";
	}
	
	@RequestMapping(value="virtualFundView")
	public String virtualFundView(HttpServletRequest request, Model model){
		String fundId = request.getParameter("fundId");
		try {
			GetFundRequest requ = new GetFundRequest();
			requ.setVirtualFundId(fundId);
			BaseResponse<FundVirtualInfoDTO> fund = taService.getFund(requ);
			
			model.addAttribute("fund", fund.getModel());
		} catch (Exception e){
			e.printStackTrace();
		}
		
		try {
			QueryFundHoldListRequest req = new QueryFundHoldListRequest();
			req.setVirtualFundId(fundId);
			req.setPageIndex(1);
			req.setPageSize(10);
			BasePaginationResponse<HoldDTO> res = taService.queryHoldList(req);
			if (null != res){
				model.addAttribute("list", res.getModelList());
			}
			} catch (Exception e){
				e.printStackTrace();
			}
		
		return "biz/tafund/virtualFundView";
	}
	
	
}
