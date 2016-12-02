<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<div id="header" class="header-fixed">
<div id="headbar">
<div class="wrap fn-clear">
<div id="logo"><a class="logo-jpg" target="_self" href="./index.jsp"></a></div>
<ul id="headbar-right" class="aa">
	<div id="searchbar">
	<div class="ui-search">
	<form name="formsearch" id="formsearch"
		action="http://www.xiguage.net/search.php" method="post"
		target="_self"><input type="text" id="keyword"
		name="searchword" class="search-input" value="请在此处输入影片片名或演员名称。"
		onfocus="if(this.value==&#39;请在此处输入影片片名或演员名称。&#39;){this.value=&#39;&#39;;}"
		onblur="if(this.value==&#39;&#39;){this.value=&#39;请在此处输入影片片名或演员名称。&#39;;};">
	<input type="submit" id="searchbutton"
		class="search-button iconfont f-s-28 webkit-width" value="󰄬">
	</form>
	</div>
	</div>
	<li class="drop-down nav-item bb" id="nav-looked"><a
		class="nav-link drop-title"><i class="iconfont m-r-5 f-s-22">󰀒</i>播放记录</a>
	<div class="cc"><script type="text/javascript"
		src="./js/history.js"></script> <script type="text/javascript">
		$MH.limit = 10;
            $MH.WriteHistoryBox(180, 170, 'font');
            $MH.recordHistory({
              name: '{playpage:name}',
              link: '{playpage:url}',
              pic: '{playpage:pic}'})
            </script>
	<div id="HISTORY" style="width: 180px;">
	<div id="mh-box"
		style="border: 1px solid #afafaf; box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.2); border-top: 0; background: #f6f6f9; height1: 170px; overflow: hidden">
	<div style="height: 24px; line-height: 24px; clear: both;"
		id="mh-title">
	<div style="float: right; display: inline"><a
		href="javascript:void(0)" onclick="$MH.showHistory(2);"
		style="font-size: 12px; color: #333; text-decoration: none">清空</a><a
		href="javascript:void(0)" onclick="$MH.showHistory(1);"
		style="display: none; font-size: 12px; color: #333; text-decoration: none">隐藏</a></div>
	<strong
		style="padding-left: 5px; font-size: 12px; color: #999; font-weight: 400;">我的观看历史</strong></div>
	<div id="mh-ul">
	<ul style="margin: 0px; border: 0px; padding: 0;">
		<li
			style="text-align: center; line-height1: 145px; color: red; list-style: none">没有记录</li>
	</ul>
	<div style="clear: both"></div>
	</div>
	</div>
	</div>
	</div>
	</li>
</ul>
</div>
</div>
<div id="navbar">
<div class="navbar-width wrap fn-clear">
<div class="nav"><a href="http://www.xiguage.net/" title="首页"
	class="homebutton">首页</a>
<ul class="nav-r">

	<li class="jqnav"><i class="ico mnav"></i> <b>导航</b></li>
	<li class="jqms"><i class="ico ms"></i> <b>搜索</b></li>
</ul>
</div>
<ul id="nav-left" class="ui-nav-left mb-nav-left">
	<li class="nav-item" id="nav-home"><a class="nav-link"
		target="_self" href="http://www.xiguage.net/"><i
		class="iconfont m-r-5 f-s-18">󰅴</i>首页</a></li>
	<li class="nav-item" id="nav-1"><a class="nav-link" target="_self"
		href="http://www.xiguage.net/f/1.html">电影</a></li>
	<li class="nav-item" id="nav-2"><a class="nav-link" target="_self"
		href="http://www.xiguage.net/f/2.html">电视剧</a></li>
	<li class="nav-item" id="nav-5"><a class="nav-link" target="_self"
		href="http://www.xiguage.net/f/5.html">动作片</a></li>
	<li class="nav-item" id="nav-6"><a class="nav-link" target="_self"
		href="http://www.xiguage.net/f/6.html">喜剧片</a></li>
	<li class="nav-item" id="nav-7"><a class="nav-link" target="_self"
		href="http://www.xiguage.net/f/7.html">爱情片</a></li>
	<li class="nav-item" id="nav-8"><a class="nav-link" target="_self"
		href="http://www.xiguage.net/f/8.html">科幻片</a></li>
	<li class="nav-item" id="nav-9"><a class="nav-link" target="_self"
		href="http://www.xiguage.net/f/9.html">剧情片</a></li>
	<li class="nav-item" id="nav-10"><a class="nav-link"
		target="_self" href="http://www.xiguage.net/f/10.html">恐怖片</a></li>
	<li class="nav-item" id="nav-11"><a class="nav-link"
		target="_self" href="http://www.xiguage.net/f/11.html">战争片</a></li>
	<li class="nav-item" id="nav-12"><a class="nav-link"
		target="_self" href="http://www.xiguage.net/f/12.html">大陆剧</a></li>
	<li class="nav-item" id="nav-13"><a class="nav-link"
		target="_self" href="http://www.xiguage.net/f/13.html">港台剧</a></li>
	<li class="nav-item" id="nav-14"><a class="nav-link"
		target="_self" href="http://www.xiguage.net/f/14.html">日韩剧</a></li>
	<li class="nav-item" id="nav-15"><a class="nav-link"
		target="_self" href="http://www.xiguage.net/f/15.html">欧美剧</a></li>
	<li class="nav-item" id="nav-3"><a class="nav-link" target="_self"
		href="http://www.xiguage.net/f/3.html">综艺</a></li>
	<li class="nav-item" id="nav-4"><a class="nav-link" target="_self"
		href="http://www.xiguage.net/f/4.html">动漫</a></li>
	<li class="nav-item "><a class="nav-link" target="_self"
		href="http://www.xiguage.net/gbook.php">留言求片</a></li>
</ul>

<ul id="nav-left" class="ui-nav-left">
	<li class="nav-item" id="nav-home"><a class="nav-link"
		target="_self" href="http://www.xiguage.net/"><i
		class="iconfont m-r-5 f-s-18">󰅴</i>首页</a></li>
	<li class="nav-item" id="nav-dianshiju"><a class="nav-link"
		target="_self" href="http://www.xiguage.net/f/1.html">电影</a></li>
	<li class="nav-item" id="nav-dianshiju"><a class="nav-link"
		target="_self" href="http://www.xiguage.net/f/12.html">大陆剧</a></li>
	<li class="nav-item" id="nav-dianshiju"><a class="nav-link"
		target="_self" href="http://www.xiguage.net/f/13.html">港台剧</a></li>
	<li class="nav-item" id="nav-dianshiju"><a class="nav-link"
		target="_self" href="http://www.xiguage.net/f/14.html">日韩剧</a></li>
	<li class="nav-item" id="nav-dianshiju"><a class="nav-link"
		target="_self" href="http://www.xiguage.net/f/15.html">欧美剧</a></li>
	<li class="nav-item" id="nav-dianshiju"><a class="nav-link"
		target="_self" href="http://www.xiguage.net/f/23.html">海外剧</a></li>
	<li class="nav-item" id="nav-dianshiju"><a class="nav-link"
		target="_self" href="http://www.xiguage.net/f/3.html">综艺</a></li>
	<li class="nav-item" id="nav-dianshiju"><a class="nav-link"
		target="_self" href="http://www.xiguage.net/f/4.html">动漫</a></li>
	<li class="nav-item" id="nav-dianshiju"><a class="nav-link"
		target="_self" href="http://www.xiguage.net/gbook.php">留言求片</a></li>
</ul>
<ul id="nav-right" class="ui-nav-right aa">
</ul>

<!-- 
<div id="mbsearchbar">
<div class="ui-search">
<form name="formsearch" id="formsearch"
	action="http://www.xiguage.net/search.php" method="post" target="_self">
<input type="text" id="keyword" name="searchword" class="input"
	onblur="if(this.value==&#39;&#39;){ this.value=&#39;请输入影片或演员名&#39;;this.style.color=&#39;#cfcdcd&#39;;}"
	onfocus="if(this.value==&#39;请输入影片或演员名&#39;){this.value=&#39;&#39;;this.style.color=&#39;&#39;;}"
	value="请输入影片或演员名" style="color: rgb(207, 205, 205);"> <input
	type="submit" id="searchbutton" name="submit" class="imgbt" value="">
</form>
</div>
<div class="searchgb"><i>关闭</i></div>
</div>
--></div>
</div>
</div>
</body>
</html>