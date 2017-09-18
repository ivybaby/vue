
<div class="pageApp text-center">
	<nav v-if="pageCount&&pageCount>1">
	  <ul class="pagination">
	    <li v-if="pageIndex&&pageIndex>1"></a><span v-on:click="gotoPagePrev">&laquo;</span></li>
	    <li v-for="page in pageCount" :class = "{'active': page == pageIndex}">
	    	<span v-on:click="gotoPage(page)">{{page}}</span>
	    </li>
	    <li v-if="pageIndex&&pageIndex<pageCount"><span v-on:click="gotoPageNext">&raquo;</span></li>
	  </ul>
	</nav>
</div>

<script>
var pageApp = {
  data: {
    pageCount:0,
    pageIndex:1
  },
  methods:{
  	gotoPage:function(page){
  		var self = this;
  		self.pageIndex=page;
  		self.pageCallback(self.pageIndex);
  	},
  	gotoPagePrev:function(){
  		var self = this;
  		self.pageIndex--;
  		self.pageCallback(self.pageIndex);
  	},
  	gotoPageNext:function(){
  		var self = this;
  		self.pageIndex++;
  		self.pageCallback(self.pageIndex);
  	},
  	pageCallback:function(page){
  		
  	},
  	pageInit:function(pageCount, doGetDataFn){
  		var self = this;
  		doGetDataFn = doGetDataFn||function(){};
  		pageCount = pageCount||0;
  		if(isNaN(pageCount)){
  			pageCount = 0;
  		} else{
  			pageCount = parseInt(pageCount,10);
  		}
  		self.pageCount = pageCount;
  		self.pageCallback = doGetDataFn;
  	}
  }
}

function extendPageView(app){
	for(var d in pageApp.data){
		app.data[d]=pageApp.data[d];
	}
	for(var d in pageApp.methods){
		app.methods[d]=pageApp.methods[d];
	}
	return app;
}

function PageVue(app){
	app = extendPageView(app);
	return new Vue(app);
}

</script>