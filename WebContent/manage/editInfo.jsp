<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="./css/style.css" rel="stylesheet" type="text/css">
<script src="./js/function.js"></script>
<script language="javascript" src="./js/color.js"></script>
<script charset="utf-8" src="./js/kindeditor.js"></script>
<script>
	KE.show({
		id : 'content'
	});
	
	
</script>
<link type="text/css" rel="stylesheet" href="./css/default.css">
<script language="javascript"> 

function killErrors() { 
return true; 
} 
window.onerror = killErrors; 

</script>
<script src="./js/jquery-1.6.2.js" type="text/javascript"></script> 
<script type="text/javascript">
$(function(){
 $(".tabletlist3 tr:odd").css("background-color","#ffffff");
 $(".tabletlist3 tr:even").css("background-color","#F5F5F5");
 
 	$("#upvideo_list a").click(function(){
			$("#video").val("");
		})
		
});

</script>

<script type="text/javascript" src="./js/jquery.uploadify-3.1.min.js"></script>
<script type="text/javascript" src="./js/uploadify.js"></script>
<link href="./css/uploadify.css" rel="stylesheet" type="text/css">
<title>编辑信息</title>
</head>
<body>
<div class="rightcontent">
<div class="right_top_bg"><a href="./index.jsp">视频管理</a></div>
<form name="form1" method="post" action="">
    <table border="0" align="center" cellpadding="4" cellspacing="1" bordercolor="#F0F0F0" class="table1" width="100%">
    	<tbody><tr>
          <td width="14%" align="center">信息名称</td>
          <td width="86%" align="left">
          	   <input name="title" type="text" class="inputbg" id="title" size="60">
          	   上传者：
          	   <input name="author" type="text" class="inputbg" id="author" value="管理员" size="20"></td>
      </tr>
      <tr>
          <td width="14%" align="center">报告人</td>
          <td width="86%" align="left">
          	   <input name="title2" type="text" class="inputbg" id="title2" size="60"></td>
      </tr>
      <tr>
          <td width="14%" align="center">报告主题</td>
          <td width="86%" align="left">
          	   <input name="title3" type="text" class="inputbg" id="title3" size="60"></td>
      </tr>
      <tr>
        <td width="14%" align="center">第几集</td>
          <td width="86%" align="left">
               <input name="videoOrder" type="text" class="inputbg" id="videoOrder" size="60" value="1"></td>
      </tr>
      
      <!--  
      <tr>
         <td width="14%" align="center">查看权限</td>
          <td width="86%" align="left">
          	<input name="permissions" type="radio" id="radio" value="1" checked="">
          	不用登陆
            <input type="radio" name="permissions" id="radio2" value="2">
            登录查看
          排序
          <input name="orderbyid" type="text" class="inputbg" id="orderbyid" value="1" size="10"></td>
      </tr> 
      -->
        
      <tr>
          <td align="center">分类选择</td>
          <td align="left">
              <select name="classid" id="classid">
                        		<option value="175" disabled="">┣ 生活休闲 </option>
                       	   <option value="227">&nbsp;&nbsp;&nbsp;&nbsp;生活 </option>
                       	   <option value="228">&nbsp;&nbsp;&nbsp;&nbsp;音乐 </option>
                       	   <option value="230">&nbsp;&nbsp;&nbsp;&nbsp;体育 </option>
                       	   <option value="233">&nbsp;&nbsp;&nbsp;&nbsp;综艺 </option>
                       		<option value="177" disabled="">┣ 人文社科 </option>
                       	   <option value="236">&nbsp;&nbsp;&nbsp;&nbsp;经济 </option>
                       	   <option value="207">&nbsp;&nbsp;&nbsp;&nbsp;历史 </option>
                       	   <option value="208">&nbsp;&nbsp;&nbsp;&nbsp;艺术 </option>
                       	   <option value="209">&nbsp;&nbsp;&nbsp;&nbsp;探索 </option>
                       	   <option value="210">&nbsp;&nbsp;&nbsp;&nbsp;人物 </option>
                       	   <option value="211">&nbsp;&nbsp;&nbsp;&nbsp;军事 </option>
                       	   <option value="237">&nbsp;&nbsp;&nbsp;&nbsp;国学 </option>
                       		<option value="178" disabled="">┣ 技术教程 </option>
                       	   <option value="224">&nbsp;&nbsp;&nbsp;&nbsp;工大技能 </option>
                       	   <option value="225">&nbsp;&nbsp;&nbsp;&nbsp;摄影天堂 </option>
                       	   <option value="235">&nbsp;&nbsp;&nbsp;&nbsp;图像后期 </option>
                       		<option value="179" disabled="">┣ 求职有道 </option>
                       	   <option value="226">&nbsp;&nbsp;&nbsp;&nbsp;入职准备 </option>
                       	   <option value="232">&nbsp;&nbsp;&nbsp;&nbsp;职场生涯 </option>
                       		<option value="180" disabled="">┣ 校园微视 </option>
                       	   <option value="212">&nbsp;&nbsp;&nbsp;&nbsp;瓜子视角 </option>
                       		<option value="181" disabled="">┣ 翱翔名家讲堂 </option>
                       	   <option value="213">&nbsp;&nbsp;&nbsp;&nbsp;成功励志 </option>
                       	   <option value="214">&nbsp;&nbsp;&nbsp;&nbsp;国防外交 </option>
                       	   <option value="215">&nbsp;&nbsp;&nbsp;&nbsp;科学技术 </option>
                       	   <option value="216">&nbsp;&nbsp;&nbsp;&nbsp;人文社会 </option>
                       		<option value="182" disabled="">┣ 在线学习 </option>
                       	   <option value="217">&nbsp;&nbsp;&nbsp;&nbsp;公开课 </option>
                       	   <option value="220">&nbsp;&nbsp;&nbsp;&nbsp;学生竞赛 </option>
                       	   <option value="219">&nbsp;&nbsp;&nbsp;&nbsp;TED </option>
                       		<option value="183" disabled="">┣ 主题教育 </option>
                       	   <option value="190">&nbsp;&nbsp;&nbsp;&nbsp;网上党校 </option>
                       	   <option value="193">&nbsp;&nbsp;&nbsp;&nbsp;学习典范 </option>
                       	   <option value="195">&nbsp;&nbsp;&nbsp;&nbsp;学风建设 </option>
                       		<option value="2" disabled="">┣ 心灵驿站 </option>
                       	   <option value="203">&nbsp;&nbsp;&nbsp;&nbsp;减压训练 </option>
                       	   <option value="204">&nbsp;&nbsp;&nbsp;&nbsp;心灵相约 </option>
                       	   <option value="205">&nbsp;&nbsp;&nbsp;&nbsp;心理学堂 </option>
                       	   <option value="206">&nbsp;&nbsp;&nbsp;&nbsp;成功之道 </option>
                       		<option value="1" disabled="">┣ 工大影院 </option>
                       	   <option value="221">&nbsp;&nbsp;&nbsp;&nbsp;欧美 </option>
                       	   <option value="222">&nbsp;&nbsp;&nbsp;&nbsp;华语 </option>
                       	   <option value="223">&nbsp;&nbsp;&nbsp;&nbsp;电视剧 </option>
                       	   <option value="234">&nbsp;&nbsp;&nbsp;&nbsp;亚洲 </option>
                        </select>
            </td>
        </tr>
        
        <tr>
          <td align="center" valign="top">视频上传</td>
          <td colspan="9" align="left">
          	<div id="video_window">
          		<div id="uploadify_video" class="uploadify" style="height: 24px; width: 88px;">
          			<object id="SWFUpload_0" type="application/x-shockwave-flash" 
          			data="./西安宏博网络网站管理系统CMS005_files/uploadify.swf.下载" width="88" height="24" 
          			class="swfupload" style="position: absolute; z-index: 1;">
          			<param name="wmode" value="transparent">
          			<param name="movie" value="js/uploadify.swf?preventswfcaching=1479736664374">
          			<param name="quality" value="high"><param name="menu" value="false">
          			<param name="allowScriptAccess" value="always">
          			<param name="flashvars" value="movieName=SWFUpload_0&amp;uploadURL=%2Fyt_manage%2Fuploadify_video.php&amp;useQueryString=false&amp;requeueOnError=false&amp;httpSuccess=&amp;assumeSuccessTimeout=30&amp;params=&amp;filePostName=Filedata&amp;fileTypes=*.ogg%3B%20*.mp4%3B%20*.webm&amp;fileTypesDescription=Image%20Files&amp;fileSizeLimit=2000000000KB&amp;fileUploadLimit=15&amp;fileQueueLimit=999&amp;debugEnabled=false&amp;buttonImageURL=%2Fyt_manage%2F&amp;buttonWidth=88&amp;buttonHeight=24&amp;buttonText=&amp;buttonTextTopPadding=0&amp;buttonTextLeftPadding=0&amp;buttonTextStyle=color%3A%20%23000000%3B%20font-size%3A%2016pt%3B&amp;buttonAction=-100&amp;buttonDisabled=false&amp;buttonCursor=-2">
          			</object>
          			<div id="uploadify_video-button" class="uploadify-button " style="height: 24px; line-height: 24px; width: 88px;">
          			<span class="uploadify-button-text">点击上传视频</span>
          			</div>
          		</div>
          	</div>
            <div id="upvideo_list"></div>
			      <div id="fileQueue_video"></div>
          </td>
        </tr>
        
        <tr>
          <td align="center" valign="top">图片上传</td>
          <td colspan="9" align="left">
          	  <iframe width="400" height="75" src="./delupload.html" scrolling="no" frameborder="0"></iframe>
              <input name="img" type="hidden" id="img" value="">          </td>
        </tr>
        <tr>
          <td align="center" valign="top">详细介绍</td>
          <td colspan="9" align="left">
          <textarea name="Description" id="Description" cols="80" rows="5"></textarea>
            <br>
            <!--  
          	  <table cellpadding="0" cellspacing="0" border="0" class="ke-container" style="width: 65%; 
          	  height: 300px;">
          	  <tbody><tr><td class="ke-toolbar-outer">
          	  <table cellpadding="0" cellspacing="0" border="0" class="ke-toolbar" style="height: 48px;">
          	  <tbody><tr><td>
          	  <table cellpadding="0" cellspacing="0" border="0" class="ke-toolbar-table">
          	  <tbody><tr><td>
          	  <a class="ke-icon" href="javascript:;" title="HTML代码">
          	  <span class="ke-common-icon ke-common-icon-url ke-icon-source"></span></a></td>
          	  <td><div class="ke-toolbar-separator"></div></td><td>
          	  <a class="ke-icon" href="javascript:;" title="全屏显示">
          	  <span class="ke-common-icon ke-common-icon-url ke-icon-fullscreen"></span></a></td><td>
          	  <a class="ke-icon" href="javascript:;" title="后退(Ctrl+Z)">
          	  <span class="ke-common-icon ke-common-icon-url ke-icon-undo"></span></a></td>
          	  <td><a class="ke-icon" href="javascript:;" title="前进(Ctrl+Y)">
          	  <span class="ke-common-icon ke-common-icon-url ke-icon-redo"></span></a></td>
          	  <td><a class="ke-icon" href="javascript:;" title="打印">
          	  <span class="ke-common-icon ke-common-icon-url ke-icon-print"></span></a></td>
          	  <td><a class="ke-icon" href="javascript:;" title="剪切(Ctrl+X)">
          	  <span class="ke-common-icon ke-common-icon-url ke-icon-cut"></span></a></td>
          	  <td><a class="ke-icon" href="javascript:;" title="复制(Ctrl+C)">
          	  <span class="ke-common-icon ke-common-icon-url ke-icon-copy"></span></a></td>
          	  <td><a class="ke-icon" href="javascript:;" title="粘贴(Ctrl+V)">
          	  <span class="ke-common-icon ke-common-icon-url ke-icon-paste"></span></a></td>
          	  <td><a class="ke-icon" href="javascript:;" title="粘贴为无格式文本">
          	  <span class="ke-common-icon ke-common-icon-url ke-icon-plainpaste"></span></a></td>
          	  <td><a class="ke-icon" href="javascript:;" title="从Word粘贴">
          	  <span class="ke-common-icon ke-common-icon-url ke-icon-wordpaste"></span></a></td>
          	  <td><div class="ke-toolbar-separator"></div></td>
          	  <td><a class="ke-icon" href="javascript:;" title="左对齐">
          	  <span class="ke-common-icon ke-common-icon-url ke-icon-justifyleft"></span></a></td>
          	  <td><a class="ke-icon" href="javascript:;" title="居中">
          	  <span class="ke-common-icon ke-common-icon-url ke-icon-justifycenter"></span></a></td>
          	  <td><a class="ke-icon" href="javascript:;" title="右对齐">
          	  <span class="ke-common-icon ke-common-icon-url ke-icon-justifyright"></span></a></td>
          	  <td><a class="ke-icon" href="javascript:;" title="两端对齐">
          	  <span class="ke-common-icon ke-common-icon-url ke-icon-justifyfull"></span></a></td>
          	  <td><a class="ke-icon" href="javascript:;" title="编号">
          	  <span class="ke-common-icon ke-common-icon-url ke-icon-insertorderedlist"></span></a></td>
          	  <td><a class="ke-icon" href="javascript:;" title="项目符号">
          	  <span class="ke-common-icon ke-common-icon-url ke-icon-insertunorderedlist"></span></a></td>
          	  <td><a class="ke-icon" href="javascript:;" title="增加缩进">
          	  <span class="ke-common-icon ke-common-icon-url ke-icon-indent"></span></a></td>
          	  <td><a class="ke-icon" href="javascript:;" title="减少缩进">
          	  <span class="ke-common-icon ke-common-icon-url ke-icon-outdent"></span></a></td>
          	  <td><a class="ke-icon" href="javascript:;" title="下标">
          	  <span class="ke-common-icon ke-common-icon-url ke-icon-subscript"></span></a></td>
          	  <td><a class="ke-icon" href="javascript:;" title="上标">
          	  <span class="ke-common-icon ke-common-icon-url ke-icon-superscript"></span></a></td>
          	  <td><div class="ke-toolbar-separator"></div></td>
          	  <td><a class="ke-icon" href="javascript:;" title="全选">
          	  <span class="ke-common-icon ke-common-icon-url ke-icon-selectall"></span></a></td></tr>
          	  <tr><td></td></tr></tbody></table>
          	  <table cellpadding="0" cellspacing="0" border="0" class="ke-toolbar-table">
          	  <tbody><tr><td><a class="ke-icon" href="javascript:;" title="标题">
          	  <span class="ke-common-icon ke-common-icon-url ke-icon-title"></span></a></td>
          	  <td><a class="ke-icon" href="javascript:;" title="字体">
          	  <span class="ke-common-icon ke-common-icon-url ke-icon-fontname"></span></a></td>
          	  <td><a class="ke-icon" href="javascript:;" title="文字大小">
          	  <span class="ke-common-icon ke-common-icon-url ke-icon-fontsize"></span></a></td>
          	  <td><div class="ke-toolbar-separator"></div></td>
          	  <td><a class="ke-icon" href="javascript:;" title="文字颜色">
          	  <span class="ke-common-icon ke-common-icon-url ke-icon-textcolor"></span></a></td>
          	  <td><a class="ke-icon" href="javascript:;" title="文字背景">
          	  <span class="ke-common-icon ke-common-icon-url ke-icon-bgcolor"></span></a></td>
          	  <td><a class="ke-icon" href="javascript:;" title="粗体(Ctrl+B)">
          	  <span class="ke-common-icon ke-common-icon-url ke-icon-bold"></span></a></td>
          	  <td><a class="ke-icon" href="javascript:;" title="斜体(Ctrl+I)">
          	  <span class="ke-common-icon ke-common-icon-url ke-icon-italic"></span></a></td>
          	  <td><a class="ke-icon" href="javascript:;" title="下划线(Ctrl+U)">
          	  <span class="ke-common-icon ke-common-icon-url ke-icon-underline"></span></a></td>
          	  <td><a class="ke-icon" href="javascript:;" title="删除线">
          	  <span class="ke-common-icon ke-common-icon-url ke-icon-strikethrough"></span></a></td>
          	  <td><a class="ke-icon" href="javascript:;" title="删除格式">
          	  <span class="ke-common-icon ke-common-icon-url ke-icon-removeformat"></span></a></td>
          	  <td><div class="ke-toolbar-separator"></div></td>
          	  <td><a class="ke-icon" href="javascript:;" title="图片">
          	  <span class="ke-common-icon ke-common-icon-url ke-icon-image"></span></a></td>
          	  <td><a class="ke-icon" href="javascript:;" title="插入Flash">
          	  <span class="ke-common-icon ke-common-icon-url ke-icon-flash"></span></a></td>
          	  <td><a class="ke-icon" href="javascript:;" title="插入多媒体">
          	  <span class="ke-common-icon ke-common-icon-url ke-icon-media"></span></a></td>
          	  <td><a class="ke-icon" href="javascript:;" title="表格">
          	  <span class="ke-common-icon ke-common-icon-url ke-icon-advtable"></span></a></td>
          	  <td><a class="ke-icon" href="javascript:;" title="插入横线">
          	  <span class="ke-common-icon ke-common-icon-url ke-icon-hr"></span></a></td>
          	  <td><a class="ke-icon" href="javascript:;" title="插入表情">
          	  <span class="ke-common-icon ke-common-icon-url ke-icon-emoticons"></span></a></td>
          	  <td><a class="ke-icon" href="javascript:;" title="超级链接">
          	  <span class="ke-common-icon ke-common-icon-url ke-icon-link"></span></a></td>
          	  <td><a class="ke-icon" href="javascript:;" title="取消超级链接">
          	  <span class="ke-common-icon ke-common-icon-url ke-icon-unlink"></span></a></td>
          	  <td><div class="ke-toolbar-separator"></div></td>
          	  <td><a class="ke-icon" href="javascript:;" title="关于">
          	  <span class="ke-common-icon ke-common-icon-url ke-icon-about"></span></a></td></tr>
          	  <tr><td></td></tr></tbody></table></td></tr></tbody></table></td></tr>
          	  <tr><td class="ke-textarea-outer">
          	  <table cellpadding="0" cellspacing="0" border="0" class="ke-textarea-table">
          	  <tbody><tr><td>
          	  <iframe class="ke-iframe" frameborder="0" style="height: 241px;" src="./saved_resource.html">
          	  </iframe><textarea class="ke-textarea" style="display: none; height: 239px;"></textarea></td></tr></tbody></table></td></tr>
          	  <tr><td class="ke-bottom-outer"><table class="ke-bottom" cellpadding="0" cellspacing="0" border="0" style="height: 11px;">
          	  <tbody><tr><td class="ke-bottom-left">
          	  <span class="ke-bottom-left-img"></span></td><td class="ke-bottom-right"><span class="ke-bottom-right-img"></span></td></tr></tbody></table></td></tr></tbody>
          	  </table>
          	  <textarea id="content" name="content" style="width: 65%; height: 300px; visibility: hidden; display: none;">
          	  </textarea>
             -->
          </td>
      </tr>
        <tr>
          <td align="center">&nbsp;</td>
          <td colspan="9" align="left">
            <input name="button3" type="submit" class="anniu" id="button3" value="增  加" onclick="return check_input();">
            <input name="button" type="submit" class="anniu" id="button" value="重  置">
          </td>
        </tr>
    </tbody></table>
</form>
</div>
</body>
</html>