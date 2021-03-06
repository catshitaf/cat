<%@ tag trimDirectiveWhitespaces="true" pageEncoding="UTF-8"%>
<%@ taglib prefix="a" uri="/WEB-INF/app.tld"%>

<a:base>
	<div class="main-container" id="main-container">
		<script type="text/javascript">
			try{ace.settings.check('main-container' , 'fixed')}catch(e){}
		</script>
		<div id="sidebar" class="sidebar   responsive">
			<script type="text/javascript">
				try{ace.settings.check('sidebar' , 'fixed')}catch(e){}
			</script>
			<div class="sidebar-shortcuts" id="sidebar-shortcuts">
				<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
					<button class="btn btn-success" id="tab_realtime">
						<i class="ace-icon fa fa-signal"></i>&nbsp;&nbsp;实时
					</button>
					<button class="btn btn-grey" id="tab_offtime">
						<i class="ace-icon fa fa-film"></i>&nbsp;&nbsp;离线
					</button>
					<!-- #section:basics/sidebar.layout.shortcuts -->
					<button class="btn btn-warning" id="tab_document">
						<i class="ace-icon fa fa-users"></i>&nbsp;&nbsp;文档
					</button>
					<button class="btn btn-danger" id="tab_config">
						<i class="ace-icon fa fa-cogs"></i>&nbsp;&nbsp;配置
					</button>
				</div>
				<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
					<span class="btn btn-success"></span>
					<span class="btn btn-info"></span>
					<span class="btn btn-warning"></span>
					<span class="btn btn-danger"></span>
				</div>
			</div>
			<ul class="nav nav-list" style="top: 0px;">
				<li id="Dashboard_report" class="hsub"><a href="cat/r/t" class="dropdown-toggle"> <i class="menu-icon fa fa-tachometer"></i> <span class="menu-text">Dashboard</span>
						<b class="arrow fa fa-angle-down"></b>
				</a> <b class="arrow"></b>
					<ul class="submenu">
						<li id="dashbord_system"><a href="/cat/r/dependency?op=metricDashboard&domain=${model.domain}">
							<i class="menu-icon fa fa-caret-right"></i>报错大盘</a>
							<b class="arrow"></b></li>
						<li id="dashbord_metric"><a href="/cat/r/metric?op=dashboard&domain=${model.domain}">
							<i class="menu-icon fa fa-caret-right"></i>业务大盘</a>
							<b class="arrow"></b></li>
						<li id="dashbord_network"><a href="/cat/r/network?op=dashboard&domain=${model.domain}">
							<i class="menu-icon fa fa-caret-right"></i>网络大盘</a>
							<b class="arrow"></b></li>
						<li id="dashbord_application"><a href="/cat/r/dependency?op=dashboard&domain=${model.domain}">
							<i class="menu-icon fa fa-caret-right"></i>应用大盘</a>
							<b class="arrow"></b></li>
					</ul>
				</li>
				<li id="Web_report" >
					<a href="/cat/r/web?domain=${model.domain}&ip=${model.ipAddress}&date=${model.date}&reportType=view&op=view">
						<i class="menu-icon fa fa-globe"></i>
						<span class="menu-text">Web</span>
					</a>
					<b class="arrow"></b>
				</li>
				<li id="App_report" class="hsub"><a href="#" class="dropdown-toggle"> <i class="menu-icon glyphicon glyphicon-phone"></i> <span class="menu-text">App</span>
						<b class="arrow fa fa-angle-down"></b>
				</a> <b class="arrow"></b>
					<ul class="submenu">
						<li id="trend"><a href="/cat/r/app?op=view&showActivity=false&domain=${model.domain}">
							<i class="menu-icon fa fa-caret-right"></i>API访问趋势</a>
							<b class="arrow"></b></li>
						<li id="activity_trend"><a href="/cat/r/app?op=view&showActivity=true&domain=${model.domain}">
							<i class="menu-icon fa fa-caret-right"></i>运营活动趋势</a>
							<b class="arrow"></b></li>
						<li id="speed"><a href="/cat/r/app?op=speed&domain=${model.domain}">
							<i class="menu-icon fa fa-caret-right"></i>访问速度趋势</a>
							<b class="arrow"></b></li>
						<li id="accessPiechart"><a href="/cat/r/app?op=piechart&domain=${model.domain}">
							<i class="menu-icon fa fa-caret-right"></i>访问量分布</a>
							<b class="arrow"></b></li>
						<li id="crashLog"><a href="/cat/r/app?op=crashLog&domain=${model.domain}">
							<i class="menu-icon fa fa-caret-right"></i>Crash日志</a>
							<b class="arrow"></b></li>
					</ul>
				</li>
				<li id="Transaction_report" >
					<a href="/cat/r/t?domain=${model.domain}&ip=${model.ipAddress}&date=${model.date}&reportType=${payload.reportType}&op=${payload.action.name}">
						<i class="menu-icon glyphicon glyphicon-time"></i>
						<span class="menu-text">Transaction</span>
					</a>
				</li>
				<li id="Event_report" >
					<a href="/cat/r/e?domain=${model.domain}&ip=${model.ipAddress}&date=${model.date}&reportType=${payload.reportType}&op=${payload.action.name}">
						<i class="menu-icon fa fa-flag"></i>
						<span class="menu-text">Event</span>
					</a>
				</li>					
				<li id="Problem_report" >
					<a href="/cat/r/p?domain=${model.domain}&ip=${model.ipAddress}&date=${model.date}&reportType=${payload.reportType}&op=${payload.action.name}">
						<i class="menu-icon glyphicon glyphicon-exclamation-sign"></i>
						<span class="menu-text">Problem</span>
					</a>
				</li>			
				<li id="Heartbeat_report" >
					<a href="/cat/r/h?domain=${model.domain}&ip=${model.ipAddress}&date=${model.date}&reportType=${payload.reportType}&op=${payload.action.name}">
						<i class="menu-icon  fa fa-heart"></i>
						<span class="menu-text">Heartbeat</span>
					</a>
				</li>		
				<li id="Cross_report" >
					<a href="/cat/r/cross?domain=${model.domain}&ip=${model.ipAddress}&date=${model.date}&reportType=${payload.reportType}&op=${payload.action.name}">
						<i class="menu-icon  glyphicon glyphicon-random"></i>
						<span class="menu-text">Cross</span>
					</a>
				</li>		
				<li id="Cache_report" >
					<a href="/cat/r/cache?domain=${model.domain}&ip=${model.ipAddress}&date=${model.date}&reportType=${payload.reportType}&op=${payload.action.name}">
						<i class="menu-icon glyphicon glyphicon-flash"></i>
						<span class="menu-text">Cache</span>
					</a>
				</li>
				<li id="Dependency_report" class="hsub"><a href="/cat/r/dependency?domain=${model.domain}&ip=${model.ipAddress}&date=${model.date}&reportType=view&op=view" class="dropdown-toggle"> <i class="menu-icon glyphicon glyphicon-road"></i> <span class="menu-text">Dependency</span>
						<b class="arrow fa fa-angle-down"></b>
				</a> <b class="arrow"></b>
					<ul class="submenu">
						<li id="dependency_trend"><a href="/cat/r/dependency?op=lineChart&domain=${model.domain}&date=${model.date}">
							<i class="menu-icon fa fa-caret-right"></i>趋势图</a>
							<b class="arrow"></b></li>
						<li id="dependency_topo"><a href="/cat/r/dependency?op=dependencyGraph&domain=${model.domain}&date=${model.date}">
							<i class="menu-icon fa fa-caret-right"></i>拓扑图</a>
							<b class="arrow"></b></li>
						
					</ul>
				</li>
				<li id="Matrix_report" >
					<a href="/cat/r/matrix?domain=${model.domain}&ip=${model.ipAddress}&date=${model.date}&reportType=${payload.reportType}&op=${payload.action.name}">
						<i class="menu-icon  fa fa-cog"></i>
						<span class="menu-text">Matrix</span>
					</a>
				</li>
				<li id="State_report" >
					<a href="/cat/r/state?domain=${model.domain}&ip=${model.ipAddress}&date=${model.date}&reportType=${payload.reportType}&op=${payload.action.name}">
						<i class="menu-icon fa fa-bar-chart-o"></i>
						<span class="menu-text">State</span>
					</a>
				</li>
				<li id="System_report" class="hsub"><a href="#" class="dropdown-toggle"> <i class="menu-icon fa fa-gavel"></i> <span class="menu-text">System</span>
						<b class="arrow fa fa-angle-down"></b>
				</a> <b class="arrow"></b>
					<ul class="submenu">
						<li id="system_cdn"><a href="/cat/r/cdn?domain=${model.domain}&ip=${model.ipAddress}&date=${model.date}&reportType=${payload.reportType}&op=${payload.action.name}">
							<i class="menu-icon fa fa-caret-right"></i>CDN监控</a>
							<b class="arrow"></b></li>
						<li id="system_network"><a href="/cat/r/network?op=metric&product=f5-3600-2-dianping-com&domain=${model.domain}&ip=${model.ipAddress}&date=${model.date}&reportType=${payload.reportType}&op=${payload.action.name}">
							<i class="menu-icon fa fa-caret-right"></i>网络监控</a>
							<b class="arrow"></b></li>
						<li id="system_database"><a href="/cat/r/database?domain=${model.domain}&ip=${model.ipAddress}&date=${model.date}&reportType=${payload.reportType}&op=${payload.action.name}">
							<i class="menu-icon fa fa-caret-right"></i>数据库</a>
							<b class="arrow"></b></li>
						<li id="system_paas"><a href="/cat/r/system?domain=${model.domain}&ip=${model.ipAddress}&date=${model.date}&reportType=${payload.reportType}&op=${payload.action.name}">
							<i class="menu-icon fa fa-caret-right"></i>PAAS监控</a>
							<b class="arrow"></b></li>
						<li id="system_alteration"><a href="/cat/r/alteration?domain=${model.domain}&ip=${model.ipAddress}&date=${model.date}&reportType=${payload.reportType}&op=${payload.action.name}">
							<i class="menu-icon fa fa-caret-right"></i>线上变更</a>
							<b class="arrow"></b></li>
						<li id="system_alert"><a href="/cat/r/alert?domain=${model.domain}&op=${payload.action.name}">
							<i class="menu-icon fa fa-caret-right"></i>告警信息</a>
							<b class="arrow"></b></li>
						
					</ul>
				</li>
				</ul>
			</ul>
			<!-- #section:basics/sidebar.layout.minimize -->
			<div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
				<i class="ace-icon fa fa-angle-double-left" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
			</div>

			<!-- /section:basics/sidebar.layout.minimize -->
			<script type="text/javascript">
				try{ace.settings.check('sidebar' , 'collapsed')}catch(e){}
			</script>
		</div>
		<div class="main-content">
				<div id="dialog-message" class="hide">
				<p>
					你确定要删除吗？(不可恢复)
				</p>
			</div>
				<div style="padding-top:5px;padding-right:8px;">
				<jsp:doBody/>
				</div>
		</div>
	</div>
</a:base>
<script  type="text/javascript">
	$(document).ready(function() {
		$("#tab_realtime").click(function(){
			window.location.href = "/cat/r/t?domain=${model.domain}&ip=${model.ipAddress}&date=${model.date}&reportType=${payload.reportType}&op=${payload.action.name}";
		});
		$("#tab_offtime").click(function(){
			window.location.href = "/cat/r/statistics?op=service&domain=${model.domain}&ip=${model.ipAddress}&date=${model.date}&reportType=${payload.reportType}&op=${payload.action.name}";
		});
		$("#tab_document").click(function(){
			window.location.href = "/cat/r/home?domain=${model.domain}&ip=${model.ipAddress}&date=${model.date}&reportType=${payload.reportType}&op=${payload.action.name}";
		});
		$("#tab_config").click(function(){
			window.location.href = "/cat/s/config?op=topologyProductLines";
		});});
		$("#tab_realtime").addClass("disabled");

</script>

