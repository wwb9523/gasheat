<?php if (!defined('THINK_PATH')) exit();?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr">
	<head>
		<base href="/">
		<meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
		<title>新城网络企业网站管理平台</title>

		<!--                       CSS                       -->
		<!-- Reset Stylesheet -->
		<link rel="stylesheet" href="__ROOT__/Public/Admin/css/reset.css"  type="text/css" media="screen" />
		<!-- Main Stylesheet -->
		<link rel="stylesheet" href="__PUBLIC__/Admin/css/style.css" type="text/css" media="screen" />
		<!-- Invalid Stylesheet. This makes stuff look pretty. Remove it if you want the CSS completely valid -->
		<link rel="stylesheet" href="__PUBLIC__/Admin/css/invalid.css" type="text/css" media="screen" />	
        <!-- Colorpicker Stylesheet -->
        <link rel="stylesheet" href="__PUBLIC__/Admin/scripts/colorpicker/colorpicker.css" type="text/css" media="screen" />
        <!-- UEditor Stylesheet -->
        <link rel="stylesheet" type="text/css" href="__PUBLIC__/Js/ueditor/themes/default/ueditor.css" media="screen" />
		<!-- Colour Schemes
		Default colour scheme is green. Uncomment prefered stylesheet to use it.
		<link rel="stylesheet" href="__PUBLIC__/Admin/css/blue.css" type="text/css" media="screen" />
		<link rel="stylesheet" href="__PUBLIC__/Admin/css/red.css" type="text/css" media="screen" />  
		-->
		<!-- Internet Explorer Fixes Stylesheet -->
		<!--[if lte IE 7]>
			<link rel="stylesheet" href="__PUBLIC__/Admin/css/ie.css" type="text/css" media="screen" />
		<![endif]-->
		<!--                       Javascripts                       -->
        <!-- UEditor -->

        <script type="text/javascript" src="__PUBLIC__/Js/ueditor/editor_config.js"></script>
    	<script type="text/javascript" src="__PUBLIC__/Js/ueditor/editor_ui_all.js"></script>
        <!-- WdatePicker -->
        <script type="text/javascript" src="__PUBLIC__/Js/My97DatePicker/WdatePicker.js"></script>
		<!-- colorpicker -->
		<script type="text/javascript" src="__PUBLIC__/Admin/scripts/colorpicker/colorpicker.js"></script>
		<!-- jQuery -->
		<script type="text/javascript" src="__PUBLIC__/Admin/scripts/jquery-1.3.2.min.js"></script>
        <!-- jQuery Validation -->
        <script type="text/javascript" src="__PUBLIC__/Js/Jquery/jquery.validate.js"></script>
		<!-- jQuery Configuration -->
		<script type="text/javascript" src="__PUBLIC__/Admin/scripts/simpla.jquery.configuration.js"></script>
		<!-- Facebox jQuery Plugin -->
		<script type="text/javascript" src="__PUBLIC__/Admin/scripts/facebox.js"></script>
		<!-- jQuery WYSIWYG Plugin -->
		<script type="text/javascript" src="__PUBLIC__/Admin/scripts/jquery.wysiwyg.js"></script>
		<!-- jQuery Datepicker Plugin -->
		<!-- script type="text/javascript" src="__PUBLIC__/Admin/scripts/jquery.datePicker.js"></script -->
		<script type="text/javascript" src="__PUBLIC__/Admin/scripts/jquery.date.js"></script>
		<!--[if IE]><script type="text/javascript" src="__PUBLIC__/Admin/scripts/jquery.bgiframe.js"></script><![endif]-->
		<!-- Internet Explorer .png-fix -->
		<!--[if IE 6]>
			<script type="text/javascript" src="__PUBLIC__/Admin/scripts/DD_belatedPNG_0.0.7a.js"></script>
			<script type="text/javascript">
				DD_belatedPNG.fix('.png_bg, img, li');
			</script>
		<![endif]-->
	</head>
<body>
	<div id="body-wrapper">
<!-- Wrapper for the radial gradient background -->
		<div id="sidebar">
        	<div id="sidebar-wrapper">
                <!-- Sidebar with logo and menu -->
                <h1 id="sidebar-title"><a href="#">Simpla Admin</a></h1>
                <!-- Logo (221px wide) -->
                <a href="#"><img id="logo" src="__PUBLIC__/Admin/images/logo.png" alt="logo" /></a>
                <!-- Sidebar Profile links -->
                <div id="profile-links">你好，<a href="<?php echo U('User/modify',array('id'=>$adminId, 'jumpUri'=>'run' ));?>"><?php echo ($realName); ?></a><br /><br /><a href="<?php echo ($frontUrl); ?>" target="_blank" title="浏览网站">浏览网站</a> | <a href="<?php echo U('Public/logout');?>" title="退出系统">退出系统</a></div>        
                <ul id="main-nav">  <!-- Accordion Menu -->
                    <li>
                        <a href='<?php echo U("Index/index");?>' class='nav-top-item no-submenu <?php if($moduleName == Index ): ?>current<?php endif; ?>'><!-- Add the class "no-submenu" to menu items with no sub menu -->系统首页</a>       
                    </li>
                    <!--<li> 
                        <a href="#" class="nav-top-item current">--><!-- Add the class "current" to current menu item --><!--Articles</a>
                        <ul>
                            <li><a href="#">Write a new Article</a></li>
                            <li><a class="current" href="#">Manage Articles</a></li>--> <!-- Add class "current" to sub menu items also -->
                            <!--<li><a href="#">Manage Comments</a></li>
                            <li><a href="#">Manage Categories</a></li>
                        </ul>
                    </li>-->
                    <li>
                        <a href="#" class='nav-top-item <?php if(($moduleName == Config) OR ($moduleName == Module) OR ($moduleName == Theme) OR ($moduleName == User) OR ($moduleName == Role)): ?>current<?php endif; ?>'>基本设置</a>
                        <ul>
                            <li class="Config"><a href="<?php echo U("Config/index");?>" <?php if(($moduleName == Config)): ?>class="current"<?php endif; ?>>系统配置</a></li>
                            <li class="Module"><a href="<?php echo U("Module/index");?>" <?php if(($moduleName == Module)): ?>class="current"<?php endif; ?>>系统模块</a></li>
                            <li class="Theme"><a href="<?php echo U("Theme/index");?>" <?php if(($moduleName == Theme)): ?>class="current"<?php endif; ?>>风格主题</a></li>
                            <li class="User"><a href="<?php echo U("User/index");?>" <?php if(($moduleName == User) OR ($moduleName == Role)): ?>class="current"<?php endif; ?>>管理员管理</a></li>
                            <!-- li class="AdminRole"><a href="<?php echo U("AdminRole/index");?>" <?php if(($moduleName == AdminRole)): ?>class="current"<?php endif; ?>>角色管理</a></li -->
                        </ul>
                    </li>
                    <li>
                        <a href="#" class='nav-top-item <?php if(($moduleName == Ad) OR ($moduleName == Category) OR ($moduleName == Link)): ?>current<?php endif; ?>'>模块管理</a>
                        <ul>
                            <!-- li class="Menu"><a href="<?php echo U("Menu/index");?>">导航管理</a></li -->
                            <!--<li class="Ad"><a href="<?php echo U("Ad/index");?>">广告管理</a></li>-->
                            <li class="Category"><a href="<?php echo U("Category/index");?>">分类管理</a></li>
                            <!--<li class="Link"><a href="<?php echo U("Link/index");?>">友情链接管理</a></li>-->
                            <!-- li class="Feedback"><a href="<?php echo U("Feedback/index");?>">留言管理</a></li>
                            <li class="Job"><a href="<?php echo U("Job/index");?>">招聘管理</a></li>
                            <li class="Tags"><a href="<?php echo U("Tags/index");?>">标签管理</a></li>
                            <li class="Comment"><a href="<?php echo U("Comment/index");?>">评论管理</a></li -->
                        </ul>
                    </li>

                    <li>
                        <a href="#" class='nav-top-item <?php if(($moduleName == News) OR($moduleName == Course) OR ($moduleName == Download) OR ($moduleName == Page) OR ($moduleName == Article) OR ($moduleName == Video) OR ($moduleName == Journal) OR ($moduleName == Notice) OR ($moduleName == Person)): ?>current<?php endif; ?>'>内容管理</a>
                        <ul>
                            <li class="News"><a href="<?php echo U('News/index');?>" <?php if(($moduleName == News)): ?>class="current"<?php endif; ?>>新闻管理</a></li>
                           <!-- <li class="Notice"><a href="<?php echo U('Notice/index');?>"<?php if(($moduleName == Notice)): ?>class="current"<?php endif; ?>>公告管理</a></li>-->
                            <li class="Download"><a href="<?php echo U('Download/index');?>" <?php if(($moduleName == Download)): ?>class="current"<?php endif; ?>>下载管理</a></li>
                            <li class="Page"><a href="<?php echo U('Page/index');?>" <?php if(($moduleName == Page)): ?>class="current"<?php endif; ?>>单页管理</a></li>
                           <!-- <li class="Course"><a href="<?php echo U('Course/index');?>" <?php if(($moduleName == Course)): ?>class="current"<?php endif; ?>>精品课程管理</a></li>-->
                           <!-- <li class="Page"><a href="<?php echo U('Page/modify',array('id'=>1));?>" <?php if(($moduleName == Page)): ?>class="current"<?php endif; ?>>单页管理</a></li> -->
                           <!-- <li class="Article"><a href="<?php echo U('Article/index');?>" <?php if(($moduleName == Article)): ?>class="current"<?php endif; ?>>投稿管理</a></li> -->
                            <!--<li class="Video"><a href="<?php echo U('Video/index');?>" <?php if(($moduleName == Video)): ?>class="current"<?php endif; ?>>视频管理</a></li>
                            <li class="Journal"><a href="<?php echo U('Journal/index');?>" <?php if(($moduleName == Journal)): ?>class="current"<?php endif; ?>>期刊管理</a></li>
                            <li class="Person"><a href="<?php echo U('Person/index');?>" <?php if(($moduleName == Person)): ?>class="current"<?php endif; ?>>企业人物管理</a></li>-->
						</ul>
                    </li>
                    <li>
                        <a href="#" class='nav-top-item <?php if(($moduleName == Member) OR ($moduleName == Group)): ?>current<?php endif; ?>'>会员管理</a>
                        <ul>
                            <li class="Config"><a href="<?php echo U("Member/index");?>" <?php if(($moduleName == Member)): ?>class="current"<?php endif; ?>>会员资料管理</a></li>
                            <!-- li class="Module"><a href="<?php echo U("Group/index");?>" <?php if(($moduleName == Group)): ?>class="current"<?php endif; ?>>会员组管理</a></li -->
                        </ul>
                    </li>
                    <li>
                        <a href="#" class='nav-top-item <?php if(($moduleName == Core) OR ($moduleName == Tools) OR ($moduleName == Label) OR ($moduleName == Database) OR ($moduleName == AdminLog)): ?>current<?php endif; ?>'>高级设置</a>
                        <ul>
                        	<li class="Core"><a href="<?php echo U("Core/index");?>" <?php if(($moduleName == Core)): ?>class="current"<?php endif; ?>>内核配置</a></li>
                        	<li class="Tools"><a href="<?php echo U("Tools/index");?>" <?php if(($moduleName == Tools)): ?>class="current"<?php endif; ?>>工具箱</a></li>
                            <!-- li class="Label"><a href="<?php echo U("Label/index");?>">数据调用</a></li -->
                            <li class="Database"><a href="<?php echo U("Database/index");?>" <?php if(($moduleName == Database)): ?>class="current"<?php endif; ?>>数据库管理</a></li>
                            <li class="AdminLog"><a href="<?php echo U("AdminLog/index");?>" <?php if(($moduleName == AdminLog)): ?>class="current"<?php endif; ?>>操作日志</a></li>
						</ul>
                    </li>  
                </ul>
                <!-- End #main-nav -->
				<div id="messages" style="display: none">
                <!-- Messages are shown when a link with these attributes are clicked: href="#messages" rel="modal"  -->
                    <h3>3 Messages</h3>
                    <p>
                        <strong>17th May 2009</strong> by Admin<br />
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus magna. Cras in mi at felis aliquet congue.
                        <small><a href="#" class="remove-link" title="Remove message">Remove</a></small>
                    </p>
                    <p>
                        <strong>2nd May 2009</strong> by Jane Doe<br />
                        Ut a est eget ligula molestie gravida. Curabitur massa. Donec eleifend, libero at sagittis mollis, tellus est malesuada tellus, at luctus turpis elit sit amet quam. Vivamus pretium ornare est.
                        <small><a href="#" class="remove-link" title="Remove message">Remove</a></small>
                    </p>
                    <p>
                        <strong>25th April 2009</strong> by Admin<br />
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus magna. Cras in mi at felis aliquet congue.
                        <small><a href="#" class="remove-link" title="Remove message">Remove</a></small>
                    </p>
                    <form action="" method="post">
                        <h4>New Message</h4>
                        <fieldset>
                            <textarea class="textarea" name="textfield" cols="79" rows="5"></textarea>
                        </fieldset>
                        <fieldset>
                            <select name="dropdown" class="small-input">
                                <option value="option1">Send to...</option>
                                <option value="option2">Everyone</option>
                                <option value="option3">Admin</option>
                                <option value="option4">Jane Doe</option>
                            </select>
                            <input class="button" type="submit" value="Send" />
                        </fieldset>
                    </form>
                </div>
                <!-- End #messages -->
            </div>
        </div>
        <!-- End #sidebar -->
		<div id="main-content">
        <!-- Main Content Section with everything -->
			<noscript>
            <!-- Show a notification if the user has disabled javascript -->
                <div class="notification error png_bg">
					<div>
						您的浏览器不支持Javascript或者已经禁用了Javascript。请升级您的浏览器或者<a href="http://www.google.com/support/bin/answer.py?answer=23852" title="如何启用 JavaScript">启用</a>Javascript支持才能正确浏览页面.
					</div>
				</div>
			</noscript>
			<!-- Page Head -->
			<div class="clear"></div>
            <!-- End .clear -->
			<div class="content-box"><!-- Start Content Box -->
				<div class="content-box-header">
					<h3>内核配置</h3>
					<div class="clear"></div>
				</div> <!-- End .content-box-header -->
				<div class="content-box-content">
                	<form method="post" action="<?php echo U("Core/doCore");?>" id="mainForm">
					<div class="tab-content default-tab"> <!-- This is the target div. id must match the href of this div's tab -->
                    	<div class="notification attention png_bg">
							<a href="#" class="close"><img src="__PUBLIC__/Admin/images/icons/cross_grey_small.png" title="关闭此通知" alt="关闭" /></a>
							<div>
								系统内核配置会影响系统的运行，设置不当可能造成系统崩溃，请谨慎设置。对内核进行设置后，请更新缓存，以使设置生效。如对内核配置不了解，请勿更改任何选项！
							</div>
						</div>
						<fieldset class="column-left"> <!-- Set class to "column-left" or "column-right" on fieldsets to divide the form into columns -->
							<p>
								<label>调试模式</label>
								<select class="small-input" name="APP_DEBUG" id="APP_DEBUG">
                                	<option value="true" <?php echo (selected($APP_DEBUG,1)); ?>>开启</option>
                                	<option value="false" <?php echo (selected($APP_DEBUG,0)); ?>>关闭</option>
                                </select>
                                <br /><small>调试模式下不会生成项目编译缓存和核心缓存，以便快速定位和解决问题。调试模式适合使用于开发或者测试环境，生产环境建议关闭调试模式，使系统生成缓存，取得更好的系统性能。</small>
							</p>
                            <p>
								<label>页面Trace信息</label>
								<select class="small-input" name="SHOW_PAGE_TRACE" id="SHOW_PAGE_TRACE">
                                	<option value="true" <?php echo (selected($SHOW_PAGE_TRACE,1)); ?>>开启</option>
                                	<option value="false" <?php echo (selected($SHOW_PAGE_TRACE,0)); ?>>关闭</option>
                                </select>
                                <br /><small>当调试模式开启时，可以选择是否显示页面Trace信息。Trace信息能够显示或者记录更多的日志信息，以便快速定位和解决问题。开启之后，系统会检查是否有定义调试配置文件。默认调试配置文件位于./Core/Common/debug.php。生产环境请关闭此选项。</small>
							</p>
                            <p>
								<label>路由模式</label>
								<select class="small-input" name="URL_ROUTER_ON" id="URL_ROUTER_ON">
                                  	<option value="true" <?php echo (selected($URL_ROUTER_ON,1)); ?>>开启</option>
                                  	<option value="false" <?php echo (selected($URL_ROUTER_ON,0)); ?>>关闭</option>
                                </select>
								<br /><small>开启路由功能后，系统会自动进行路由检测，如果在路由定义里面找到和当前URL匹配的路由名称，就会进行路由解析和重定向。路由功能由路由定义文件定义，位于项目的配置目录下面，文件名为routes.php</small>
							</p>
                            <p>
								<label>URL访问模式</label>
								<select class="small-input" name="URL_MODEL" id="URL_MODEL">
                                  	<option value="0" <?php echo (selected($URL_MODEL,0)); ?>>普通模式</option>
                                  	<option value="1" <?php echo (selected($URL_MODEL,1)); ?>>PATHINFO模式</option>
                                  	<option value="2" <?php echo (selected($URL_MODEL,2)); ?>>REWRITE模式(需要.htaccess文件以及Apache支持)</option>
                                </select>
                                <br /><small>普通模式(入口文件后直接加参数，例如m=module&a=action&id=1)；</small>
                                <br /><small>PATHINFO模式(系统默认使用的模式，参数没有顺序，例如/m/module/a/action/id/1)；</small>
                                <br /><small>REWRITE模式(此模式需要Apache服务器以及对.htaccess文件支持，可自动识别模块和操作/module/action/id/1/ 或者 /module,action,id,1/...)；</small>
                                <br /><small><strong style="color:#F00">更改URL访问模式可能导致前台页面无法访问</strong></small>
							</p>
                        </fieldset>
                        <fieldset class="column-right">
                            <p>
								<label>参数分割符</label>
								<input class="text-input medium-input" type="text" name="URL_PATHINFO_DEPR" id="URL_PATHINFO_DEPR" value="<?php echo ($URL_PATHINFO_DEPR); ?>" />
                                <br /><small>PATHINFO模式下，各参数之间的分割符号</small>
							</p>
                            <p>
								<label>URL伪静态后缀</label>
								<input class="text-input medium-input" type="text" name="URL_HTML_SUFFIX" id="URL_HTML_SUFFIX" value="<?php echo ($URL_HTML_SUFFIX); ?>" />
                                <br /><small>URL伪静态后缀设置</small>
							</p>
                            <p>
								<label>自动侦测模板主题</label>
								<select class="small-input" name="TMPL_DETECT_THEME" id="TMPL_DETECT_THEME">
                                    <option value="true" selected="selected">开启</option>
                                    <option value="false">关闭</option>
                                </select>
							</p>
                            <p>
								<label>模板编译缓存</label>
								<select class="small-input" name="TMPL_CACHE_ON" id="TMPL_CACHE_ON">
                                	<option value="true" <?php echo (selected($TMPL_CACHE_ON,1)); ?>>开启</option>
                                	<option value="false" <?php echo (selected($TMPL_CACHE_ON,0)); ?>>关闭</option>
                                </select>
                                <br /><small>是否开启模板编译缓存，关闭则每次都会重新编译。系统默认为开启。</small>
							</p>
                            <p>
								<label>模板缓存有效期</label>
								<input class="text-input medium-input" type="text" name="TMPL_CACHE_TIME" id="TMPL_CACHE_TIME" value="<?php echo ($TMPL_CACHE_TIME); ?>" />
                                <br /><small>模板缓存有效期 -1 为永久，以数字为值，单位:秒。</small>
							</p>
                            <p>
								<label>令牌验证</label>
								<select class="small-input" name="TOKEN_ON" id="TOKEN_ON">
                              		<option value="true" <?php echo (selected($TOKEN_ON,1)); ?>>开启</option>
                              		<option value="false" <?php echo (selected($TOKEN_ON,0)); ?>>关闭</option>
                              	</select>
                                <br /><small>表单令牌验证功能，可以有效防止表单的远程提交等安全防护。开启表单令牌验证功能，系统会自动在带有表单的模板文件里面自动生成以TOKEN_NAME为名称的隐藏域，其值则是TOKEN_TYPE方式生成的哈希字符串，用于实现表单的自动令牌验证。</small>
							</p>
                            <p>
								<label>令牌表单字段</label>
								<input class="text-input medium-input" type="text" name="TOKEN_NAME" id="TOKEN_NAME" value="<?php echo ($TOKEN_NAME); ?>" />
                                <br /><small>令牌验证的表单隐藏字段名称</small>
							</p>
                        </fieldset>
                        <div class="clear"></div><!-- End .clear -->
                        <p>
                            <input class="button" type="submit" id="submit" name="submit" value="提交更新" />
                            <input class="button" type="reset" id="submit" name="submit" value="还原重填"/>
                        </p>
					</div> <!-- End #tab1 -->
					</form>
				</div> <!-- End .content-box-content -->
			</div> <!-- End .content-box -->
			<div class="clear"></div>
			<div id="footer">
				<small> <!-- Remove this notice or replace it with whatever you want -->
						&#169; Copyright 2011 <a href="http://www.qeeyang.com" target="_blank">Qeeyang Technology Co.,Ltd.</a> | Powered by <a href="http://www.y-city.net.cn" target="_blank">Y-city</a>
				</small>
			</div>
            <!-- End #footer -->
		</div>
        <!-- End #main-content -->
	</div>
</body>
</html>