<div class="container">
  <!--<h2>Horizontal form: control states</h2>-->
  <form class="form-horizontal" name="saveFundForm" id="saveFundForm" action="${rc.contextPath}/101005/perform" >
  	<div class="row">
  		<div class="col-sm-6">
  			<div class="form-group">
  				<div class="col-sm-5 text-right">
  					<label class="form-label"><span style="font-size:16px">*</span>底层基金代码</label>
  				</div>
  				<div class="col-sm-7">
  					<select class="form-control" name="fundId" id="fundId">
  						<option value="0">请选择底层基金</option>
			        </select>
  					
	        		<label id="error_fundId" for="fundId" style='text-align:left;' class="control-label help-block"></label>
	        	</div>
  			</div>
  		</div>
  		<div class="col-sm-6">
  			<div class="form-group">
  				<div class="col-sm-5 text-right">
  					<label class="form-label"><span style="font-size:16px">*</span>币种</label>
  				</div>
  				<div class="col-sm-7">
  					<select class="form-control" name="currency" id="currency" disabled="disabled">
			        	<option value="rmb">人民币</option>
			        </select>
	        		<label id="error_currency" for="currency" style='text-align:left;' class="control-label help-block"></label>
	        	</div>
  			</div>
  		</div>
  		<div class="col-sm-6">
  			<div class="form-group">
  				<div class="col-sm-5 text-right">
  					<label class="form-label"><span style="font-size:16px">*</span>底层基金托管人</label>
  				</div>
  				<div class="col-sm-7">
  					<input class="form-control" id="custodian" type="text" name="custodian" value="" readonly="readonly">
	        		<label id="error_custodian" for="custodian" style='text-align:left;' class="control-label help-block"></label>
	        	</div>
  			</div>
  		</div>
  		<div class="col-sm-6">
  			<div class="form-group">
  				<div class="col-sm-5 text-right">
  					<label class="form-label"><span style="font-size:16px">*</span>底层基金风险等级</label>
  				</div>
  				<div class="col-sm-7">
  					<select class="form-control" name="riskLvl" id="riskLvl" disabled="disabled">
			        	<option value="低">低</option>
			        	<option value="中">中</option>
			        	<option value="高">高</option>
			        </select>
	        		<label id="error_riskLvl" for="riskLvl" style='text-align:left;' class="control-label help-block"></label>
	        	</div>
  			</div>
  		</div>
  		<div class="col-sm-12">
	  		<!-- 横线分割 -->
	    	<hr class="bs-docs-separator">
  		</div>
  		<div class="col-sm-6">
  			<div class="form-group">
  				<div class="col-sm-5 text-right">
  					<label class="form-label">虚拟基金代码</label>
  				</div>
  				<div class="col-sm-7">
  					<input class="form-control" id="virtualFundId" type="text" name="virtualFundId" value="" readonly="readonly" />
	        		<label id="error_virtualFundId" for="virtualFundId" style='text-align:left;' class="control-label help-block"></label>
	        	</div>
  			</div>
  		</div>
  		<div class="col-sm-6">
  			<div class="form-group">
  				<div class="col-sm-5 text-right">
  					<label class="form-label"><span style="font-size:16px">*</span>产品名称</label>
  				</div>
  				<div class="col-sm-7">
  					<input class="form-control" id="virtualFundName" type="text" name="virtualFundName" value="" placeholder="请填写对应楼盘项目名称"/>
	        		<label id="error_virtualFundName" for="virtualFundName" style='text-align:left;' class="control-label help-block"></label>
	        	</div>
  			</div>
  		</div>
  		<div class="col-sm-6">
  			<div class="form-group">
  				<div class="col-sm-5 text-right">
  					<label class="form-label">产品简称</label>
  				</div>
  				<div class="col-sm-7">
  					<input class="form-control" id="shortName" type="text" name="shortName" value="" />
	        		<label id="error_shortName" for="shortName" style='text-align:left;' class="control-label help-block"></label>
	        	</div>
  			</div>
  		</div>
  		<div class="col-sm-6">
  			<div class="form-group">
  				<div class="col-sm-5 text-right">
  					<label class="form-label"><span style="font-size:16px">*</span>产品描述</label>
  				</div>
  				<div class="col-sm-7">
  					<textarea class="form-control" rows="2" id="description" name="description"></textarea>
	        		<label id="error_description" for="description" style='text-align:left;' class="control-label help-block"></label>
	        	</div>
  			</div>
  		</div>
  		<div class="col-sm-6">
  			<div class="form-group">
  				<div class="col-sm-5 text-right">
  					<label class="form-label"><span style="font-size:16px">*</span>项目公司名称</label>
  				</div>
  				<div class="col-sm-7">
  					<input class="form-control" id="fundManager" type="text" name="fundManager" value="" placeholder="请填写对应楼盘项目公司或集团公司名称"/>
	        		<label id="error_fundManager" for="fundManager" style='text-align:left;' class="control-label help-block"></label>
	        	</div>
  			</div>
  		</div>
  		<div class="col-sm-6">
  			<div class="form-group">
  				<div class="col-sm-5 text-right">
  					<label class="form-label"><span style="font-size:16px">*</span>虚拟基金状态</label>
  				</div>
  				<div class="col-sm-7">
  					<select class="form-control" name="fundStatus" id="fundStatus">
			        	<option value="1">认购期</option>
						<option value="2">认购结束</option>
			        </select>
	        		<label id="error_fundStatus" for="fundStatus" style='text-align:left;' class="control-label help-block"></label>
	        	</div>
  			</div>
  		</div>
  		<div class="col-sm-6">
  			<div class="form-group">
  				<div class="col-sm-5 text-right">
  					<label class="form-label"><span style="font-size:16px">*</span>项目公司交易账户ID</label>
  				</div>
  				<div class="col-sm-7">
  					<input class="form-control" id="transactionAccountId" type="text" name="transactionAccountId" value="" placeholer="请填写项目公司交易账户ID"/>
	        		<label id="error_transactionAccountId" for="transactionAccountId" style='text-align:left;' class="control-label help-block"></label>
	        	</div>
  			</div>
  		</div>
  		<div class="col-sm-6">
  			<div class="form-group">
  				<div class="col-sm-5 text-right">
  					<label class="form-label"><span style="font-size:16px">*</span>管理费收取方式</label>
  				</div>
  				<div class="col-sm-7">
  					<select class="form-control" name="managerFeeMethod" id="managerFeeMethod">
			        	<option value="0">默认收费方式</option>
			        </select>
	        		<label id="error_managerFeeMethod" for="managerFeeMethod" style='text-align:left;' class="control-label help-block"></label>
	        	</div>
  			</div>
  		</div>
  		<div class="col-sm-6">
  			<div class="form-group">
  				<div class="col-sm-5 text-right">
  					<label class="form-label"><span style="font-size:16px">*</span>管理费费率（%）</label>
  				</div>
  				<div class="col-sm-7">
  					<input class="form-control" id="manageFee" type="text" name="manageFee" value="" />
	        		<label id="error_manageFee" for="manageFee" style='text-align:left;' class="control-label help-block"></label>
	        	</div>
  			</div>
  		</div>
  		<div class="col-sm-6">
  			<div class="form-group">
  				<div class="col-sm-5 text-right">
  					<label class="form-label"><span style="font-size:16px">*</span>最高持有人数</label>
  				</div>
  				<div class="col-sm-7">
  					<input class="form-control" id="maxHoldAccountCount" type="text" name="maxHoldAccountCount" value="" />
	        		<label id="error_maxHoldAccountCount" for="maxHoldAccountCount" style='text-align:left;' class="control-label help-block"></label>
	        	</div>
  			</div>
  		</div>
  		<div class="col-sm-6">
  			<div class="form-group">
  				<div class="col-sm-5 text-right">
  					<label class="form-label"><span style="font-size:16px">*</span>达到最高人数后处理方法</label>
  				</div>
  				<div class="col-sm-7">
  					<select class="form-control" name="maxHoldAccountMethod" id="maxHoldAccountMethod">
			        	<option value="0">自动分拆</option>
			        </select>
	        		<label id="error_maxHoldAccountMethod" for="maxHoldAccountMethod" style='text-align:left;' class="control-label help-block"></label>
	        	</div>
  			</div>
  		</div>
  		<div class="col-sm-6">
  			<div class="form-group">
  				<div class="col-sm-5 text-right">
  					<label class="form-label">开放日</label>
  				</div>
  				<div class="col-sm-7">
  					<input class="form-control" id="redeemOpenDate2" placeholder="应等于开盘日，若开盘日未定，可先不填" type="date" />
  					<input type="hidden" value="" id="redeemOpenDate" name="redeemOpenDate" />
	        		<label id="error_redeemOpenDate" for="redeemOpenDate2" style='text-align:left;' class="control-label help-block"></label>
	        	</div>
  			</div>
  		</div>
  		<div class="col-sm-6">
  			<div class="form-group">
  				<div class="col-sm-5 text-right">
  					<label class="form-label"><span style="font-size:16px">*</span>利息处理方式</label>
  				</div>
  				<div class="col-sm-7">
  					<select class="form-control" id="dividendProcessMethod" name="dividendProcessMethod">
			        	<option value="0">红利转投</option>
			        	<option value="1">现金分红</option>
			        </select>
	        		<label id="error_dividendProcessMethod" for="dividendProcessMethod" style='text-align:left;' class="control-label help-block"></label>
	        	</div>
  			</div>
  		</div>
  		<div class="col-sm-12">
  			<!-- 横线分割 -->
    		<hr class="bs-docs-separator">
  		</div>
  		<div class="col-sm-6">
  			<div class="form-group">
  				<div class="col-sm-5 text-right">
  					<label class="form-label"><span style="font-size:16px">*</span>发行价格（元）</label>
  				</div>
  				<div class="col-sm-7">
  					<input class="form-control" name="oneVolsAmount" id="oneVolsAmount" type="number" value="" />
	        		<label id="error_" for="" style='text-align:left;' class="control-label help-block"></label>
	        	</div>
  			</div>
  		</div>
  		<div class="col-sm-6">
  			<div class="form-group">
  				<div class="col-sm-5 text-right">
  					<label class="form-label"><span style="font-size:16px">*</span>认购递增金额（元）</label>
  				</div>
  				<div class="col-sm-7">
  					<input class="form-control" name="purchaseVolStepUnit" id="purchaseVolStepUnit" type="number" value="" />
	        		<label id="error_purchaseVolStepUnit" for="purchaseVolStepUnit" style='text-align:left;' class="control-label help-block"></label>
	        	</div>
  			</div>
  		</div>
  		<div class="col-sm-6">
  			<div class="form-group">
  				<div class="col-sm-5 text-right">
  					<label class="form-label"><span style="font-size:16px">*</span>利率类型</label>
  				</div>
  				<div class="col-sm-7">
  					<select class="form-control" name="interestMethod" id="interestMethod" />
			        	<option value="0">浮动收益</option>
			          </select>
	        		<label id="error_interestMethod" for="interestMethod" style='text-align:left;' class="control-label help-block"></label>
	        	</div>
  			</div>
  		</div>
  		<div class="col-sm-6">
  			<div class="form-group">
  				<div class="col-sm-5 text-right">
  					<label class="form-label"><span style="font-size:16px">*</span>预计年化利率（%）</label>
  				</div>
  				<div class="col-sm-7">
  					<input class="form-control" name="estimateDividendPerUnit" id="estimateDividendPerUnit" type="number" value="" placeholder="利率为固定收益时，此项生效，且必填。"/>
	        		<label id="error_estimateDividendPerUnit" for="estimateDividendPerUnit" style='text-align:left;' class="control-label help-block"></label>
	        	</div>
  			</div>
  		</div>
  		<div class="col-sm-6">
  			<div class="form-group">
  				<div class="col-sm-5 text-right">
  					<label class="form-label"><span style="font-size:16px">*</span>尾差处理方式</label>
  				</div>
  				<div class="col-sm-7">
  					<select class="form-control" name="indivisibleDividendProcessMethod" id="indivisibleDividendProcessMethod" value="">
						<option value="0">截位</option>
						<option value="1">四舍五入</option>
					</select>
	        		<label id="error_indivisibleDividendProcessMethod" for="indivisibleDividendProcessMethod" style='text-align:left;' class="control-label help-block"></label>
	        	</div>
  			</div>
  		</div>
  		<div class="col-sm-12">
		    <!-- 横线分割 -->
		    <hr class="bs-docs-separator">
	    </div>
  	
  		<div class="col-sm-6">
  			<div class="form-group">
  				<div class="col-sm-5 text-right">
  					<label class="form-label">单笔最低认购金额（元）</label>
  				</div>
  				<div class="col-sm-7">
  					<input class="form-control" id="minPurchaseAmount" type="number" name="minPurchaseAmount" value="" placeholder="不填默认为无限制"/>
	        		<label id="error_minPurchaseAmount" for="minPurchaseAmount" style='text-align:left;' class="control-label help-block"></label>
	        	</div>
  			</div>
  		</div>
  		<div class="col-sm-6">
  			<div class="form-group">
  				<div class="col-sm-5 text-right">
  					<label class="form-label">单笔最高认购金额（元）</label>
  				</div>
  				<div class="col-sm-7">
  					<input class="form-control" id="maxPurchaseAmount" type="number" name="maxPurchaseAmount" value="" placeholder="不填默认为无限制"/>
	        		<label id="error_maxPurchaseAmount" for="maxPurchaseAmount" style='text-align:left;' class="control-label help-block"></label>
	        	</div>
  			</div>
  		</div>
  		<div class="col-sm-6">
  			<div class="form-group">
  				<div class="col-sm-5 text-right">
  					<label class="form-label">单日最高赎回金额（元）</label>
  				</div>
  				<div class="col-sm-7">
  					<input class="form-control" id="maxRedeemAmountPerday" type="number" name="maxRedeemAmountPerday" value="" placeholder="不填默认为无限制"/>
	        		<label id="error_maxRedeemAmountPerday" for="maxRedeemAmountPerday" style='text-align:left;' class="control-label help-block"></label>
	        	</div>
  			</div>
  		</div>
  		<div class="col-sm-6">
  			<div class="form-group">
  				<div class="col-sm-5 text-right">
  					<label class="form-label">单日最高申购金额（元）</label>
  				</div>
  				<div class="col-sm-7">
  					<input class="form-control" id="maxPurchaseAmountPerday" type="number" name="maxPurchaseAmountPerday" value="" placeholder="不填默认为无限制"/>
	        		<label id="error_maxPurchaseAmountPerday" for="maxPurchaseAmountPerday" style='text-align:left;' class="control-label help-block"></label>
	        	</div>
  			</div>
  		</div>
  		<div class="col-sm-6">
  			<div class="form-group">
  				<div class="col-sm-5 text-right">
  					<label class="form-label"><span style="font-size:16px">*</span>基金当前是否可以认购</label>
  				</div>
  				<div class="col-sm-7">
  					<select class="form-control" id="purchaseFlag" name="purchaseFlag">
			          	<option value="1">可以认购</option>
			          	<option value="0">不可认购</option>
			        </select>
	        		<label id="error_purchaseFlag" for="purchaseFlag" style='text-align:left;' class="control-label help-block"></label>
	        	</div>
  			</div>
  		</div>
  		<div class="col-sm-6">
  			<div class="form-group">
  				<div class="col-sm-5 text-right">
  					<label class="form-label"><span style="font-size:16px">*</span>基金当前是否开放</label>
  				</div>
  				<div class="col-sm-7">
  					<select class="form-control" name="tradeFlag" id="tradeFlag">
			        	<option value="1">开放</option>
			        	<option value="0">不开放</option>
			        </select>
	        		<label id="error_tradeFlag" for="tradeFlag" style='text-align:left;' class="control-label help-block"></label>
	        	</div>
  			</div>
  		</div>
  		<div class="col-sm-6">
  			<div class="form-group">
  				<div class="col-sm-5 text-right">
  					<label class="form-label"><span style="font-size:16px">*</span>基金当前是否可申购</label>
  				</div>
  				<div class="col-sm-7">
  					<select class="form-control" id="subFlag" name="subFlag">
			          	<option value="0">不可申购</option>
			          	<option value="1">可以申购</option>
			        </select>
	        		<label id="error_subFlag" for="subFlag" style='text-align:left;' class="control-label help-block"></label>
	        	</div>
  			</div>
  		</div>
  		<div class="col-sm-6">
  			<div class="form-group">
  				<div class="col-sm-5 text-right">
  					<label class="form-label"><span style="font-size:16px">*</span>基金当前是否可赎回</label>
  				</div>
  				<div class="col-sm-7">
  					<select class="form-control" name="redeemFlag" id="redeemFlag">
			        	<option value="1">可以赎回</option>
			        	<option value="0">不可赎回</option>
			        </select>
	        		<label id="error_redeemFlag" for="redeemFlag" style='text-align:left;' class="control-label help-block"></label>
	        	</div>
  			</div>
  		</div>
  	</div>
    
    
    <div class="row" style="margin:40px 0px 40px;">
    	<div class="col-sm-7 text-right"><button type="button" id="saveFundBtn" class="btn btn-primary btn-lg">保存数据</butotn></div>
    	<div class="col-sm-5">
    		<div class="form-group submitResult" id="saveDailyStatusResult">
				<label class="form-label help-block" style="font-size:14px; line-height:30px;"></label>
			</div>
		</div>
    </div>
    
  </form>
</div>

<script>
function resetForm(form){
	form.find(".control-label").html("&nbsp;");
	form.find(".has-error").removeClass("has-error");
	form.find(".has-success").removeClass("has-success");
	form.find(".submitResult").find("label").html("");
}

function showErrors(validations){
	for(var i=0;i<validations.length;i++){
		var id=validations[i].substr(0, validations[i].indexOf(':'));
		var txt=validations[i].replace(id+': ','');
		$("#error_"+id).html(txt).parent().parent().addClass("has-error");
	}
}

function showErrorMsg(form, msg){
	form.find(".submitResult").addClass("has-error").find("label").html(msg);
}

function showSuccessMsg(form, msg){
	form.find(".submitResult").addClass("has-success").find("label").html(msg);
}

function getSaveFundFormData(){
	var data={};
	$("#redeemOpenDate").val($("#redeemOpenDate2").val().replace(/-/g,'').replace(/\//g,''));
	$("#saveFundForm").find("input").each(function(){
		var ele=$(this);
		if(typeof(ele.attr("name"))!="undefined"){
			data[ele.attr("name")]=ele.val();
		}
	})
	$("#saveFundForm").find("select").each(function(){
		var ele=$(this);
		data[ele.attr("name")]=ele.val();
	})
	$("#saveFundForm").find("textarea").each(function(){
		var ele=$(this);
		data[ele.attr("name")]=ele.val();
	})
	data["ticket"]=new Date();
	return data;
}

function afterSaveFund(data){
	var form=$("#saveFundForm");
	resetForm(form);
	if(data.code=="000"){
		showSuccessMsg(form, "保存成功");
		$("#virtualFundId").val(data.model.virtualFundId);
	} else if(data.code=="001"){
		showErrors(data.validations);
		showErrorMsg(form, data.msg);
	} else{
		showErrorMsg(form, data.msg);
	}
}

function bindFundInfoToUI(data){
	if(data.code=="000"){
		for(var p in data.model){
			$("#"+p).val(data.model[p]);
		}
	}
	$("#redeemOpenDate2").val(formatDate(data.model.redeemOpenDate));
}

function saveFundBtnClickEvent(){
	$("#saveFundBtn").unbind("click");
	$.ajax({
		url: "${rc.contextPath}/101001/saveVirtualFund",
		data:getSaveFundFormData(),
		type: "POST",
		dataType:'json',
		success:function(data){
			afterSaveFund(data);
			$("#saveFundBtn").click(function(){
				saveFundBtnClickEvent();
			})
		}
	})
}

function getVirtualFundInfo(virtualFundId){
	if(virtualFundId==null||virtualFundId.length!=10){
		return;
	}
	$.ajax({
		url: "${rc.contextPath}/101001/getVirtualFund",
		data:{virtualFundId:virtualFundId},
		type: "POST",
		dataType:'json',
		success:function(data){
			bindFundInfoToUI(data);
		}
	})
}

function formatDate(cymd){
	if(cymd!=null&&!isNaN(cymd)){
    	return parseInt(cymd/10000)+"-"+parseInt(cymd/100)%100+"-"+parseInt(cymd%100);
    }
}

function bindFundIdSelector(){
	$.getJSON("${rc.contextPath}/101010/allFunds", {ticket:new Date()}, function(data){
		if(data.length>0){
			for(var i=0;i<data.length;i++){
				$("#fundId").append('<option value="'+data[i].fundId+'">'+data[i].fundName+'</option>')
			}
		}
		getVirtualFundInfo(getQueryString("virtualFundId"));
	})
}

function getFundInfo(fundId){
	if(fundId==null||fundId.length!=6){
		return;
	}
	$.ajax({
		url: "${rc.contextPath}/101004/getFund",
		data:{fundId:fundId},
		type: "POST",
		dataType:'json',
		success:function(data){
			bindFundInfoToUI(data);
		}
	})
}

function bindFundInfoToUI(data){
	if(data.code=="000"){
		for(var p in data.model){
			$("#"+p).val(data.model[p]);
		}
	}
	$("#redeemOpenDate2").val(formatDate(data.model.redeemOpenDate));
}

function getQueryString(name) { 
	var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i"); 
	var r = window.location.search.substr(1).match(reg); 
	if (r != null) return unescape(r[2]); return null; 
} 

$(function(){

	bindFundIdSelector();
	
	$("#fundId").change(function(){
		getFundInfo($(this).val());
	})
	
	$("#saveFundBtn").click(function(){
		saveFundBtnClickEvent();
	})
	
})

</script>
