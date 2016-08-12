<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html><html lang="zh"><head><meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><title><?php if(isset($contentDetail)): ?><?php echo ($contentDetail["title"]); ?>-<?php else: ?><?php if(isset($moduleTitle)): ?><?php echo ($moduleTitle); ?>-<?php endif; ?><?php endif; ?><?php echo ($sysConfig["site_name"]); ?>-<?php echo ($sysConfig["seo_title"]); ?>-Powered by Y-city</title><meta name="keywords" content="<?php echo (($contentDetail["keyword"])?($contentDetail["keyword"]):$sysConfig['seo_keyword']); ?>" /><meta name="description" content="<?php echo (($contentDetail["description"])?($contentDetail["description"]):$sysConfig['seo_description']); ?>" /><meta http-equiv="X-UA-Compatible" content="IE=7"/><meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7"/><link rel="stylesheet" href="__PUBLIC__/Style/style2.css" type="text/css"><script type="text/javascript" src="__PUBLIC__/Js/jquery-1.9.1.min.js"></script><script type="text/javascript">        function changeDisplayByClass(className) {
            value=$('.'+className);
            value.fadeToggle(600);
        }
    </script></head><body class="body2"><div class="wrap"><div class="header_line"><div class="headerIn"><div class="contain"><img  class="login_pic" src="__PUBLIC__/Images/login.png"/><?php if($isLogin == 1): ?><ul class="user"><li class="user_name"><a class="user_name" onclick="changeDisplayByClass('hidden')">已登录: <?php echo ($realName); ?></a></li><li><a class="hidden change_pwd" id="change_pwd"  href="<?php echo U('Public/changePwd');?>">修改密码</a></li><li><a class="hidden login_out" id="login_out" href="<?php echo U('Public/logout');?>">注销</a></li></ul><a class="upload_file" href="<?php echo U('Upload/index');?>" >点击上传文件</a><?php else: ?><a class="login" href="<?php echo U('Public/login');?>">用户登录</a><?php endif; ?></div></div></div><div class="banner"><div class="header_font"><span>建环专业指导委员会燃气方向指导小组频道</span></div></div><div class="nav_out"><div class="nav"><ul><li class="home"><a class="on" href="__ROOT__">首&nbsp;&nbsp;页</a></li><?php if(is_array($headerData)): $i = 0; $__LIST__ = $headerData;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$row): $mod = ($i % 2 );++$i;?><?php if($row['module'] == 'Page'): ?><li><a class="on" href="<?php echo U('Page/detail');?>"><?php echo ($row['title']); ?></a></li><?php elseif($row['module'] == News): ?><li><a class="on" href="<?php echo U('News/index',array('item'=>$row['id']));?>"><?php echo ($row['title']); ?></a></li><?php elseif($row['module'] == Download): ?><li><a class="on" href="<?php echo U('Down/index');?>"><?php echo ($row['title']); ?></a></li><?php endif; ?><?php endforeach; endif; else: echo "" ;endif; ?></ul></div></div><div class="main"><script type="text/javascript" >    $(function(){
        $("#submit").click(function(){
            var jumpUri = $("#jumpUri").val();
            $.ajax({
                type:"POST",
                url:"<?php echo U('Public/doChangePwd');?>",
                data:{
                    username: $('#username').val(), password_old: $('#password_old').val(), verifyCode: $('#verifyCode').val(),password_new: $('#password_new').val()
                },
                beforeSend:function(){
                    $("#submit").addClass("disable");
                    $("#submit").attr("disable","disable");
                    $("#submit").attr("value","正在提交...");
                },
                success:function(data){
                    switch(data)
                    {
                        case 'errorVerifyCode':
                            //$("#verifyImage").attr('src', "<?php echo U('Public/verify',0,0,0);?>?"+ Math.random());
                            resetVerifyCode();
                            $("#msg").html('<span style="color:#FF0000">验证码错误</span>');
                            $("#submit").removeClass('disable');
                            $("#submit").attr("value","提交");
                            break;
                        case 'emptyInfo':
                            $("#msg").html('<span style="color:#FF0000">用户名密码必须填写</span>');
                            $("#submit").removeClass('disable');
                            $("#submit").attr("value","提交");
                            break;
                        case 'usernameFalse':
                            $("#msg").html('<span style="color:#FF0000">用户信息不存在，登录失败</span>');
                            $("#submit").removeClass('disable');
                            $("#submit").attr("value","提交");
                            resetVerifyCode();
                            break;
                        case 'passwordFalse':
                            $("#msg").html('<span style="color:#FF0000">密码错误</span>');
                            $("#submit").removeClass('disable');
                            $("#submit").attr("value","提交");
                            resetVerifyCode();
                            break;
                        case 'roleFalse':
                            $("#msg").html('<span style="color:#FF0000">当前用户被限制登录，请联系管理员</span>');
                            resetVerifyCode();
                            $("#submit").removeClass('disable');
                            $("#submit").attr("value","提交");
                            break;
                        case 'roleLost':
                            $("#msg").html('<span style="color:#FF0000">不存在的用户组，请联系管理员</span>');
                            resetVerifyCode();
                            $("#submit").removeClass('disable');
                            $("#submit").attr("value","提交");
                            break;
                        case 'changeSuccess':
                            $("#msg").html('<span style="color:#FF0000">密码修改成功</span>');
                            /*if(jumpUri == ''){
                             window.location.href = '<?php echo U("Index/index");?>';
                             }else{
                             window.location.href = jumpUri;
                             }*/
                            window.location.href = '<?php echo U("Index/index");?>';
                            return true;
                            break;
                        default:
                            $("#msg").html('<span style="color:#FF0000">'+data+'</span>');
                            alert ('未知错误，请联系管理员');
                    }
                    return false;
                }
            });
            return false;
        });
        $("#changeCode").click(function(){
            resetVerifyCode();
        })
    });

    function resetVerifyCode()
    {
        $("#verifyImage").attr('src', "<?php echo U('Public/verify',0,0,0);?>");
    }

</script><div class="listright"><div class="loginTitle">        燃气指导小组频道用户密码修改
    </div><form action="<?php echo U('Public/doChangePwd');?>" method="post" class="lform"><input style="display:none" type="text" id="aaa"/><input type="password" name="password1"  id="pwd1" style="display:none"/><div class="username"><label>用户名：</label><input type="text" name="username" id="username" autocomplete="off" value="<?php echo ($userName); ?>" readOnly='true' style="background-color: #d2d2d2"/></div><div class="password"><label>旧密码：</label><input type="password" class="password" name="password_old" id="password_old" /></div><div class="password"><label>新密码：</label><input type="password" class="password" name="password_new" id="password_new" /></div><div class="verifyCode"><label>验证码：</label><input type="text" name="verifyCode" id="verifyCode" size="8" maxlength="4" /><img src="<?php echo U('Public/verify');?>" align="absmiddle" class="checkcode"  id="verifyImage"/><div class="changeCode" id="changeCode" onclick="">看不清,换一个</div></div><input type="submit" value="提交" id="submit" class="submit"><input name="jumpUri" type="hidden" id="jumpUri" value="<?php echo ($jumpUri); ?>" /></form><div id="msg"></div></div></div></div><!--<div class="foot_out">--><!--<div class="foot_placeHold"></div>--><div class="foot"><div class="ftbox"><div class="ftfont"><span>版权所有&thinsp;&copy;&thinsp;2016&thinsp;《煤气与热力》杂志社有限公司&thinsp;津ICP备15003419号</span><br/><img src="__PUBLIC__/Images/foot_img1.png" class="img1"><span>&thinsp;津公网安备&thinsp;12010102000045</span><br/><img src="__PUBLIC__/Images/foot_img2.png" class="img2"></div></div><!-- </div>--></div></body></html></body></html>