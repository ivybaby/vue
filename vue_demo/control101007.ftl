<script type="text/javascript" src="${rc.contextPath}/scripts/vue.js"></script>

<div class="panel panel-default hidden" id="panel101007">
  <div class="panel-heading">虚拟基金查询</div>
  <div class="panel-body">
    <div class="panel panel-default">
      <!--<div class="panel-heading">搜索</div>-->
      <div class="panel-body">
        <form class="form-horizontal" action="control" method="post">
          <div class="form-group">
          	<div class="col-sm-11">
	            <label class="col-sm-2 control-label">基金代码</label>
	            <div class="col-sm-2">
	              <input v-model="form.fundId" class="form-control" type="text" value="" placeholder="基金代码"/></div>
	            <label class="col-sm-2 control-label text-center">虚拟基金名称</label>
	            <div class="col-sm-2">
	              <input v-model="form.virtualFundName" class="form-control" type="text" value=""/></div>
	            <label class="col-sm-2 control-label text-center">成立日期</label>
	            <div class="col-sm-2">
	              <div class='input-group date'>
	                <input v-model="form.createdDate" type='date' class="form-control" id="createdDate2"/>
	              </div>
	            </div>
            </div>
          </div>
          <div class="form-group">
          	<div class="col-sm-11">
	            <label class="col-sm-2 control-label">虚拟基金代码</label>
	            <div class="col-sm-2">
	              <input v-model="form.virtualFundId" class="form-control" type="text" value=""/></div>
	            <label class="col-sm-2 control-label text-center">项目公司</label>
	            <div class="col-sm-2">
	              <input v-model="form.managerName" class="form-control" type="text" value=""/></div>
	            <label class="col-sm-2 control-label text-center">产品状态</label>
	            <div class="col-sm-2">
	              <select v-model="form.fundStatus" class="form-control" value="">
	                <option value="1">认购期</option>
	              </select>
	            </div>
	        </div>
            <div class="col-sm-1">
              <input class="btn btn-default" type="button" v-on:click="query" value='搜索'></input></div>
          </div>
        </form>
      </div>
    </div>
      <div id="dataGrid">
	    <table class="table table-bordered">
	      <tr style="background-color:#f5f5f5;">
	      	<th>底层基金代码</th>
	      	<th>虚拟基金代码</th>
	      	<th>虚拟基金名称</th>
	      	<th>项目公司</th>
	      	<th>产品成立日期</th>
	      	<th>产品状态</th>
	      	<th>操作</th>
	      </tr>
	      <tbody id="tableBody">
	      	<tr v-for="item in json.modelList">
		      	<th><a v-bind:href="'${rc.contextPath}/101004/control?fundId='+item.fundId"  @click="show(this,$event)">{{item.fundId}}</a></th>
		      	<th>{{item.virtualFundId}}</th>
		      	<th>{{item.virtualFundName}}</th>
		      	<th>{{item.fundManager}}</th>
		      	<th>{{item.gmtCreated}}</th>
		      	<th>{{item.fundStatus==1?'认购期':'认购结束'}}</th>
		      	<th><a v-bind:href="'${rc.contextPath}/101001/control?virtualfundId='+item.virtualFundId" @click="show(this,$event)" >查看</a>
		      	<a v-bind:href="'${rc.contextPath}/101008/control?virtualFundId='+item.virtualFundId" @click="show(this,$event)" >认购信息</a>
		      	</th>
		    </tr>
	      </tbody>
	    </table>
<#include "/biz/common/page.ftl"/>
       </div>
    </div>
  </div>
</div>

<div class="modal fade bs-example-modal-lg" id="pageModal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" style="width:1000px;" id='pageModalDialog'>
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel">
					查看
				</h4>
			</div>
			<div class="modal-body">
				<div class="bms-mod" style="width:1000px;">
				  <iframe src="blank" id="iframepage" name="righttop" scrolling="no" frameborder="0" width="98%" height="100%" class="itop"></iframe>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭
				</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div>

<script>

function reinitIframe(){
var iframe = document.getElementById("iframepage");
try{
var bHeight = iframe.contentWindow.document.body.scrollHeight;
var dHeight = iframe.contentWindow.document.documentElement.scrollHeight;
var height = Math.max(bHeight, dHeight);
iframe.height = height;

}catch (ex){}
}
var iframeInterval = null;

function showModal(url){
	$('#pageModal').modal('show');
	var iframe = document.getElementById("iframepage");
	iframe.src=url;
}
$('#pageModal').on('show.bs.modal', function (e) {
  iframeInterval = window.setInterval("reinitIframe()", 200);
})
$('#pageModal').on('hidden.bs.modal', function (e) {
  clearInterval(iframeInterval);
  var iframe = document.getElementById("iframepage");
  iframe.src="blank";
})


var app = new PageVue({
  el: '#panel101007',
  data: {
  	request:{
  		pageIndex:1
  	},
  	form:{
  		virtualFundName:"",
  		createdDate:"",
  		fundId:"",
  		virtualFundId:"",
  		virtualFundName:"",
  		managerName:"",
  		fundStatus:"1"
  	},
    json: {}
  },
  methods:{
  	query:function(){
  		var self = this;
  		self.json={};
  		self.request = self.getRequest();
  		self.queryByPage();
  	},
  	queryByPage:function(){
  		var self = this;
  		self.json={};
  		self.pageInit();
		$.ajax({
			url: "${rc.contextPath}/101007/queryFundList",
			data:self.request,
			type: "POST",
			dataType:'json',
			success:function(data){
				self.json=data;
				self.pageInit(self.json.pageCount, function(page){
					self.request.pageIndex=page;
					self.queryByPage();
				});
			}
		})
  	},
  	getRequest:function(){
  		var self=this;
  		var data = {virtualFundName:self.form.virtualFundName,
  		fundId:self.form.fundId,
  		virtualFundId:self.form.virtualFundId,
  		virtualFundName:self.form.virtualFundName,
  		managerName:self.form.managerName,
  		fundStatus:self.form.fundStatus};
  		data.pageIndex=1;
  		data.time=new Date();
  		self.form.createdDate=$("#createdDate2").val();
  		data.createdDate=$("#createdDate2").val().replace(/-/g,'').replace(/\//g,'');
  		return data;
  	},
  	showCalendarControl:function(){
  		WdatePicker();
  	},
  	show:function(ele, event){
  		console.info(event.target.href);
  		showModal(event.target.href);
  		event.preventDefault()
  	}
  },
  computed:{
  }
})

$("#panel101007").removeClass("hidden");
</script>