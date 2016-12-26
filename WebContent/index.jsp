<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet" %>
<%@page import="service.DBService" %>
<%@page import="bean.VideoInfo" %>
<!DOCTYPE html>
<!-- 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="format-detection" content="telephone=no">
<meta name="renderer" content="webkit">
<meta name="applicable-device" content="pc,mobile">

<link href="./css/default.css" rel="stylesheet">
<script src="./js/push.js" type="text/javascript">var sitePath='';</script>
<script src="./js/1.7.2.min.js" type="text/javascript"></script>
<script src="./js/superslide.js" type="text/javascript"></script>
<script src="./js/jq.js" type="text/javascript" charset="UTF-8"></script>
<script src="./js/common.js" type="text/javascript"></script>
<script src="./js/function.js" type="text/javascript"></script>
<script src="./js/jquery.lazyload.js" type="text/javascript"></script>

<script src="./js/rich.js" type="text/javascript"></script>


<!-- 

 -->
<script type="text/javascript">
if (window!=top)
top.location.href =window.location.href;
</script>
<title>小飞猪视频网</title>
</head>
<body>
<!----------------------------- header start -------------------------------->
<jsp:include page="./head.jsp"></jsp:include>
<!------------------------------ header end --------------------------------->
<!---------------------------- fullSlide start ------------------------------>
<div class="fullSlide">
<div class="bd">
<ul style="position: relative; width: 1349px; height: 410px;">
	<li
		style="position: absolute; width: 1349px; left: 0px; top: 0px; background-image: url(&quot;http://dy.pic.wlbgt.com/uploads/s/201610/2ab1886ffecbb81c.jpg&quot;); display: list-item;">
	<a href="http://www.xiguage.net/m/30447.html">
	<div class="fstext">
	<p class="wrap"><i class="focus_btn"></i><span class="fsname">如果蜗牛有爱情</span><span
		class="fsdes">剧情：女主许诩（王子文饰）和男主季白（王凯饰）是看似关系冷淡的师徒，却是生死相依的战友，更是相互钦慕的爱人。季白是深沉冷酷的资深神探，许诩是一位犯罪心理研究的天才新..</span>
	</p>
	</div>
	</a></li>

	<li
		style="position: absolute; width: 1349px; left: 0px; top: 0px; background-image: url(&quot;http://dy.pic.wlbgt.com/uploads/s/201607/d9053da98112bdba.jpg&quot;); display: none;">
	<a href="http://www.xiguage.net/m/29846.html">
	<div class="fstext">
	<p class="wrap"><i class="focus_btn"></i><span class="fsname">诛仙青云志</span><span
		class="fsdes">剧情：&nbsp;草庙村少年张小凡（李易峰饰）在经历灭村惨案后，被青云门收归门下。无意获得的异宝，使小凡在青云门比武大赛上崭露头角。后在接连的挑战中，小凡与鬼王之女..</span>
	</p>
	</div>
	</a></li>
</ul>
</div>
<div class="hd">
<ul>
	<li class="on">1</li>
	<li class="">2</li>
</ul>
</div>
<span class="prev" style="opacity: 0.5; display: none;"></span> <span
	class="next" style="opacity: 0.5; display: none;"></span></div>
<!------------------------------ fullSlide end --------------------------------->
<!------------------------------ content start --------------------------------->
<div id="content" class="wrap"><!------------------------------ ui-box1 start --------------------------------->
<div class="ui-box border-gray clearfix">
<div class="playfrom jsfrom tab1 clearfix"><span class="laiyuan">鹏飞哥有话说&nbsp;<i
	class="arrow"></i></span></div>
<div id="box-jqjieshao">
<%
String sql = "select notice from config;";
ResultSet rs = DBService.query(sql);
if(rs.next())
{
	out.println("<span style='color: #E53333;'>提示："+rs.getString("notice")+"</span>");
}
%>
</div>
</div>
<!---------------------------- -- ui-box1 end -------- ------------------------->
<!------------------------------ ui-box2 start --------------------------------->
<section class="ui-box clearfix indexcon">
<div class="hello-box">
<div class="module-head  border-gray">
<h2 class="module-title">今日热门</h2>
</div>

<div class="module-content">
<ul class="yun-list clearfix" id="yun-list">

<%
sql = "select * from videoInfo order by click desc limit 12;";
rs = DBService.query(sql);
while(rs.next())
{
VideoInfo vi = new VideoInfo();
try
{
vi.setName(rs.getString("name").trim());
vi.setSummary(rs.getString("summary").trim());
vi.setVideo(rs.getString("video").trim());
vi.setImage(rs.getString("image").trim());
vi.setCurnum(rs.getInt("curnum"));
vi.setAllnum(rs.getInt("allnum"));
%>

	<li class="yun yun-large  border-gray"><a class="yun-link"
		href='./showInfo.jsp?id=<%=rs.getInt("id") %>' title="<%=vi.getName() %>" >
	<div class="img"><img class="lazy"
		data-original="<%=vi.getImage() %>"
		src="<%=vi.getImage() %>"
		alt="<%=vi.getName() %>" style="display: block;"> <span class="bgb">
	<i class="bgbbg"></i>
	<p class="name"><%=(vi.getAllnum()==vi.getCurnum()?(vi.getAllnum()==1?"":"共"+vi.getAllnum()+"集 ")+"已完结":"更新至"+vi.getCurnum()+"集") %></p>
	<p class="other">剧情：<%=vi.getSummary().length()>60?vi.getSummary().substring(0,60)+"..":vi.getSummary() %></p>
	</span></div> 
	<div class="text">
	<p class="name"><%=vi.getName() %></p>
	<p class="actor">分类：<%=((vi.getTypeClass().equals("电影"))?(vi.getProperty().split("\\s+|，|,|\\|"))[0]:((vi.getTypeClass().equals("电视"))?vi.getArea():"-")) %></p>
	</div>
	</a></li>	
	
<%
}
catch(Exception e)
{
	e.printStackTrace();
	response.sendRedirect(request.getContextPath()+"/error.jsp?err="+request.getRequestURL());
	return;
}
}
%>

	<li class="yun yun-large  border-gray"><a class="yun-link"
		href="http://www.xiguage.net/m/30598.html" title="蓝色大海的传说">
	<div class="img"><img class="lazy"
		data-original="http://dy.pic.wlbgt.com/uploads/allimg/201611/8b9ef82761e64aea.jpg"
		src="./西瓜哥电影网-在线云点播,手机高清云影院,百度网盘电影_files/8b9ef82761e64aea.jpg"
		alt="蓝色大海的传说" style="display: block;"> <span class="bgb">
	<i class="bgbbg"></i>
	<p class="name">更新至2集</p>
	<p class="other">剧情：该剧讲述了地球上处于灭绝危机的最后一只人鱼遇到了都市的天才骗子后，在适应陆地生活的过程中发生的一系列故事。</p>
	</span></div>
	<div class="text">
	<p class="name">蓝色大海的传说</p>
	<p class="actor">分类：日韩剧</p>
	</div>
	</a></li>

	<li class="yun yun-large  border-gray"><a class="yun-link"
		href="http://www.xiguage.net/m/30573.html" title="锦绣未央">
	<div class="img"><img class="lazy"
		data-original="http://dy.pic.wlbgt.com/uploads/allimg/201611/123ed8fa493651a3.jpg"
		src="./西瓜哥电影网-在线云点播,手机高清云影院,百度网盘电影_files/123ed8fa493651a3.jpg"
		alt="锦绣未央" style="display: block;"> <span class="bgb"> <i
		class="bgbbg"></i>
	<p class="name">更新至13集</p>
	<p class="other">剧情：南北朝期间，群雄逐鹿，烽烟四起，战事纷争不断。出身北凉王族的少女心儿，本是天真善良的无忧公主，过着万人宠爱、恣意随性的..</p>
	</span></div>
	<div class="text">
	<p class="name">锦绣未央</p>
	<p class="actor">分类：大陆剧</p>
	</div>
	</a></li>

	<li class="yun yun-large  border-gray"><a class="yun-link"
		href="http://www.xiguage.net/m/30461.html" title="法医秦明">
	<div class="img"><img class="lazy"
		data-original="http://dy.pic.wlbgt.com/uploads/allimg/201610/92be7fed6c53b900.jpg"
		src="./西瓜哥电影网-在线云点播,手机高清云影院,百度网盘电影_files/92be7fed6c53b900.jpg"
		alt="法医秦明" style="display: block;"> <span class="bgb"> <i
		class="bgbbg"></i>
	<p class="name">更新至16集</p>
	<p class="other">剧情：该剧改编自秦明文学作品《第十一根手指》，故事以法医秦明的视角展开，讲述了其与法医助理大宝、刑警队大队长林涛组成的黄金组..</p>
	</span></div>
	<div class="text">
	<p class="name">法医秦明</p>
	<p class="actor">分类：大陆剧</p>
	</div>
	</a></li>

	<li class="yun yun-large  border-gray"><a class="yun-link"
		href="http://www.xiguage.net/m/30447.html" title="如果蜗牛有爱情">
	<div class="img"><img class="lazy"
		data-original="http://dy.pic.wlbgt.com/uploads/allimg/201610/a8c0009f6080beeb.jpg"
		src="./西瓜哥电影网-在线云点播,手机高清云影院,百度网盘电影_files/a8c0009f6080beeb.jpg"
		alt="如果蜗牛有爱情" style="display: block;"> <span class="bgb">
	<i class="bgbbg"></i>
	<p class="name">更新至15集</p>
	<p class="other">剧情：女主许诩（王子文饰）和男主季白（王凯饰）是看似关系冷淡的师徒，却是生死相依的战友，更是相互钦慕的爱人。季白是深沉冷酷的..</p>
	</span></div>
	<div class="text">
	<p class="name">如果蜗牛有爱情</p>
	<p class="actor">分类：大陆剧</p>
	</div>
	</a></li>

	<li class="yun yun-large  border-gray"><a class="yun-link"
		href="http://www.xiguage.net/m/30311.html" title="兰陵王妃">
	<div class="img"><img class="lazy"
		data-original="http://dy.pic.wlbgt.com/uploads/allimg/201609/c53aae7f86073d5b.png"
		src="./西瓜哥电影网-在线云点播,手机高清云影院,百度网盘电影_files/c53aae7f86073d5b.png"
		alt="兰陵王妃" style="display: block;"> <span class="bgb"> <i
		class="bgbbg"></i>
	<p class="name">更新至31集</p>
	<p class="other">剧情：该剧讲述了混战的中国北朝，为得到拥有一统天下秘密的青鸾镜，国与国之间，宫廷内部，乃至江湖都掀起了腥风血雨。孤女元清锁也..</p>
	</span></div>
	<div class="text">
	<p class="name">兰陵王妃</p>
	<p class="actor">分类：大陆剧</p>
	</div>
	</a></li>

	<li class="yun yun-large  border-gray"><a class="yun-link"
		href="http://www.xiguage.net/m/30585.html" title="美人为馅2">
	<div class="img"><img class="lazy"
		data-original="http://dy.pic.wlbgt.com/uploads/allimg/201611/1b5a6e4c7ae8e9de.jpg"
		src="./西瓜哥电影网-在线云点播,手机高清云影院,百度网盘电影_files/1b5a6e4c7ae8e9de.jpg"
		alt="美人为馅2" style="display: block;"> <span class="bgb"> <i
		class="bgbbg"></i>
	<p class="name">完结</p>
	<p class="other">剧情：该剧讲述了警花白锦曦与昔日男友韩沉相隔数年再度相遇，深陷惊天阴谋的两人在无数危影迷踪中破获各种悬案，并最终走到一起的高..</p>
	</span></div>
	<div class="text">
	<p class="name">美人为馅2</p>
	<p class="actor">分类：大陆剧</p>
	</div>
	</a></li>

	<li class="yun yun-large  border-gray"><a class="yun-link"
		href="http://www.xiguage.net/m/29846.html" title="诛仙青云志">
	<div class="img"><img class="lazy"
		data-original="http://dy.pic.wlbgt.com/uploads/allimg/201607/7066736a67053d75.jpg"
		src="./西瓜哥电影网-在线云点播,手机高清云影院,百度网盘电影_files/7066736a67053d75.jpg"
		alt="诛仙青云志" style="display: block;"> <span class="bgb"> <i
		class="bgbbg"></i>
	<p class="name">完结</p>
	<p class="other">剧情：&nbsp;草庙村少年张小凡（李易峰饰）在经历灭村惨案后，被青云门收归门下。无意获得的异宝，使小凡在青云门比武大赛上崭..</p>
	</span></div>
	<div class="text">
	<p class="name">诛仙青云志</p>
	<p class="actor">分类：大陆剧</p>
	</div>
	</a></li>

	<li class="yun yun-large  border-gray"><a class="yun-link"
		href="http://www.xiguage.net/m/30545.html" title="灵魂摆渡3">
	<div class="img"><img class="lazy"
		data-original="http://dy.pic.wlbgt.com/uploads/allimg/201611/7112e0494b828c38.jpg"
		src="./西瓜哥电影网-在线云点播,手机高清云影院,百度网盘电影_files/7112e0494b828c38.jpg"
		alt="灵魂摆渡3" style="display: block;"> <span class="bgb"> <i
		class="bgbbg"></i>
	<p class="name">完结</p>
	<p class="other">剧情：该剧讲述男主人公夏冬青有一双能看见灵魂的眼睛,他在一家24小时便利店做夜班营业员,而这家店其实是一家灵魂驿站。</p>
	</span></div>
	<div class="text">
	<p class="name">灵魂摆渡3</p>
	<p class="actor">分类：大陆剧</p>
	</div>
	</a></li>

	<li class="yun yun-large  border-gray"><a class="yun-link"
		href="http://www.xiguage.net/m/30082.html" title="步步惊心:丽">
	<div class="img"><img class="lazy"
		data-original="http://dy.pic.wlbgt.com/uploads/allimg/201608/81315d91a0fe2f57.jpg"
		src="./西瓜哥电影网-在线云点播,手机高清云影院,百度网盘电影_files/81315d91a0fe2f57.jpg"
		alt="步步惊心:丽" style="display: block;"> <span class="bgb">
	<i class="bgbbg"></i>
	<p class="name">更新至20集</p>
	<p class="other">剧情：该剧讲述的是高丽太祖王建的四王子王昭历经磨炼成为高丽第四代君主光宗的故事。四王子王昭一直把自己封闭在冷酷的面具之下，被..</p>
	</span></div>
	<div class="text">
	<p class="name">步步惊心:丽</p>
	<p class="actor">分类：日韩剧</p>
	</div>
	</a></li>

	<li class="yun yun-large  border-gray"><a class="yun-link"
		href="http://www.xiguage.net/m/30522.html" title="七月与安生">
	<div class="img"><img class="lazy"
		data-original="http://dy.pic.wlbgt.com/uploads/allimg/201610/fe0b8aa6d4ecf143.jpg"
		src="./西瓜哥电影网-在线云点播,手机高清云影院,百度网盘电影_files/fe0b8aa6d4ecf143.jpg"
		alt="七月与安生" style="display: block;"> <span class="bgb"> <i
		class="bgbbg"></i>
	<p class="name">HD</p>
	<p class="other">剧情：一本名为《七月与安生》的网上小说火红面世，令在上海当上班族的李安生生活骤起波澜。她和好友林七月与初恋情人苏家明的少年往..</p>
	</span></div>
	<div class="text">
	<p class="name">七月与安生</p>
	<p class="actor">分类：爱情片</p>
	</div>
	</a></li>

	<li class="yun yun-large  border-gray"><a class="yun-link"
		href="http://www.xiguage.net/m/30517.html" title="反贪风暴2">
	<div class="img"><img class="lazy"
		data-original="http://dy.pic.wlbgt.com/uploads/allimg/201610/a3ef27fc9a3cff2d.jpg"
		src="./西瓜哥电影网-在线云点播,手机高清云影院,百度网盘电影_files/a3ef27fc9a3cff2d.jpg"
		alt="反贪风暴2" style="display: block;"> <span class="bgb"> <i
		class="bgbbg"></i>
	<p class="name">BD</p>
	<p class="other">剧情：马会的球赛博彩操盘手被独行杀手（周渝民 饰）杀害，目击证人竟是廉署首席调查主任陆志廉（古天乐
	饰），因为他正与另一调查..</p>
	</span></div>
	<div class="text">
	<p class="name">反贪风暴2</p>
	<p class="actor">分类：剧情片</p>
	</div>
	</a></li>
</ul>
</div>
</div>
</section> <!---------------------------- -- ui-box2 end -------- ------------------------->
<!------------------------------ ui-box3 start --------------------------------->
<section class="ui-box clearfix indexcon">
<div class="hello-box">
<div class="module-head  border-gray">
<h2 class="module-title"><i class="iconfont m-r-7 f-s-25 m-t-2">󰉾</i>热门电影推荐</h2>

<ul class="s-title_f12">
<%
sql = "select * from concreteclass where pid!=id and pid=(select id  from concreteclass where name='分类') ;";
rs = DBService.query(sql);
while(rs.next())
{	
try
{	
%>
<li><a href=<%="./search.jsp?id="+rs.getString("id") %> target="_blank"><%=rs.getString("name") %></a></li>	
<%
}
catch(Exception e)
{
	e.printStackTrace();
	response.sendRedirect(request.getContextPath()+"/error.jsp?err="+request.getRequestURL());
	return;
}

}
%>
</ul>

<a class="more" href="./search?typeClass=电影>" target="_blank"
	title="更多">更多</a></div>
<div class="module-content">
<ul class="yun-list clearfix" id="yun-list">

<%
sql = "select * from videoInfo where typeClass=(select id from typeclass where name='电影' ) order by click desc limit 12;";
rs = DBService.query(sql);
while(rs.next())
{
VideoInfo vi = new VideoInfo();
try
{
vi.setName(rs.getString("name").trim());
vi.setSummary(rs.getString("summary").trim());
vi.setVideo(rs.getString("video").trim());
vi.setImage(rs.getString("image").trim());
vi.setCurnum(rs.getInt("curnum"));
vi.setAllnum(rs.getInt("allnum"));
%>
	
	<li class="yun yun-large  border-gray"><a class="yun-link"
		href='./showInfo.jsp?id=<%=rs.getInt("id") %>' title="<%=vi.getName() %>">
	<div class="img"><img class="lazy"
		data-original="<%=vi.getImage() %>"
		src="<%=vi.getImage() %>" alt="<%=vi.getName() %>">

	<span class="bgb"> <i class="bgbbg"></i>
	<p class="name">HD</p>
	<p class="other">剧情：<%=vi.getSummary().length()>60?vi.getSummary().substring(0,60)+"..":vi.getSummary() %></p>
	</span></div>
	<div class="text">
	<p class="name"><%=vi.getName() %></p>
	<p class="actor">分类：<%=((vi.getTypeClass().equals("电影"))?(vi.getProperty().split("\\s+|，|,|\\|"))[0]:((vi.getTypeClass().equals("电视"))?vi.getArea():"-")) %></p>
	</div>
	</a></li>	
	
<%
}
catch(Exception e)
{
	e.printStackTrace();
	response.sendRedirect(request.getContextPath()+"/error.jsp?err="+request.getRequestURL());
	return;
}
}
%>


	<li class="yun yun-large  border-gray"><a class="yun-link"
		href="http://www.xiguage.net/m/30597.html" title="盛先生的花儿">
	<div class="img"><img class="lazy"
		data-original="http://dy.pic.wlbgt.com/uploads/allimg/201611/5e5939251f4ecea8.jpg"
		src="./西瓜哥电影网-在线云点播,手机高清云影院,百度网盘电影_files/noimage.gif" alt="盛先生的花儿">

	<span class="bgb"> <i class="bgbbg"></i>
	<p class="name">HD</p>
	<p class="other">剧情：该片根据美籍华人作家哈金的短篇小说《养老计划》改编，讲述了家人为患有老年痴呆症的老人找来一位保姆照料他的起居，但老人时..</p>
	</span></div>
	<div class="text">
	<p class="name">盛先生的花儿</p>
	<p class="actor">分类：爱情片</p>
	</div>
	</a></li>

	<li class="yun yun-large  border-gray"><a class="yun-link"
		href="http://www.xiguage.net/m/30210.html" title="釜山行">
	<div class="img"><img class="lazy"
		data-original="http://dy.pic.wlbgt.com/uploads/allimg/160911/2ab5d9bf00d0d751.png"
		src="./西瓜哥电影网-在线云点播,手机高清云影院,百度网盘电影_files/noimage.gif" alt="釜山行">

	<span class="bgb"> <i class="bgbbg"></i>
	<p class="name">高清</p>
	<p class="other">剧情：影片讲述从首尔开往釜山的列车上发生的僵尸病毒扩散事件，一场蔓延全国的灾难即将爆发。</p>
	</span></div>
	<div class="text">
	<p class="name">釜山行</p>
	<p class="actor">分类：恐怖片</p>
	</div>
	</a></li>

	<li class="yun yun-large  border-gray"><a class="yun-link"
		href="http://www.xiguage.net/m/30593.html" title="六弄咖啡馆">
	<div class="img"><img class="lazy"
		data-original="http://dy.pic.wlbgt.com/uploads/allimg/201611/46e072c01b7ef7e3.jpg"
		src="./西瓜哥电影网-在线云点播,手机高清云影院,百度网盘电影_files/noimage.gif" alt="六弄咖啡馆">

	<span class="bgb"> <i class="bgbbg"></i>
	<p class="name">HD</p>
	<p class="other">剧情：电影《六弄咖啡馆》改编自藤井树（吴子云）的同名畅销小说，同时导演和编剧也是由原著作者出任，刘杰担任影片监制。主要讲述男..</p>
	</span></div>
	<div class="text">
	<p class="name">六弄咖啡馆</p>
	<p class="actor">分类：爱情片</p>
	</div>
	</a></li>

	<li class="yun yun-large  border-gray"><a class="yun-link"
		href="http://www.xiguage.net/m/30274.html" title="隧道">
	<div class="img"><img class="lazy"
		data-original="http://dy.pic.wlbgt.com/uploads/allimg/160919/74bbd6228aa06c97.jpg"
		src="./西瓜哥电影网-在线云点播,手机高清云影院,百度网盘电影_files/noimage.gif" alt="隧道">

	<span class="bgb"> <i class="bgbbg"></i>
	<p class="name">HD</p>
	<p class="other">剧情：曾凭借《走到底》入围戛纳国际电影节的韩国导演金成勋联手《恐怖直播》主演河正宇，打造了又一出直面韩国社会黑暗面的重拳。河..</p>
	</span></div>
	<div class="text">
	<p class="name">隧道</p>
	<p class="actor">分类：剧情片</p>
	</div>
	</a></li>

	<li class="yun yun-large  border-gray"><a class="yun-link"
		href="http://www.xiguage.net/m/30590.html" title="长江图">
	<div class="img"><img class="lazy"
		data-original="http://dy.pic.wlbgt.com/uploads/allimg/201611/b16c5a145c0234d3.jpg"
		src="./西瓜哥电影网-在线云点播,手机高清云影院,百度网盘电影_files/noimage.gif" alt="长江图">

	<span class="bgb"> <i class="bgbbg"></i>
	<p class="name">BD</p>
	<p class="other">剧情：当代，中国长江沿岸。 船长高淳（秦昊
	饰）在驾驶货船沿长江送货的途中，不断上岸寻找艳遇。但他逐渐发现，这些在不同的码头..</p>
	</span></div>
	<div class="text">
	<p class="name">长江图</p>
	<p class="actor">分类：爱情片</p>
	</div>
	</a></li>

	<li class="yun yun-large  border-gray"><a class="yun-link"
		href="http://www.xiguage.net/m/29760.html" title="惊天魔盗团2">
	<div class="img"><img class="lazy"
		data-original="http://dy.pic.wlbgt.com/uploads/allimg/201607/ddfa00300d2b1b82.jpg"
		src="./西瓜哥电影网-在线云点播,手机高清云影院,百度网盘电影_files/noimage.gif" alt="惊天魔盗团2">

	<span class="bgb"> <i class="bgbbg"></i>
	<p class="name">高清</p>
	<p class="other">剧情：在《惊天魔盗团》中，天启四骑士用幻术骗过FBI并赢得公众的崇拜。一年后，他们在续集《惊天魔盗团2》中卷土重来，却迎来了..</p>
	</span></div>
	<div class="text">
	<p class="name">惊天魔盗团2</p>
	<p class="actor">分类：动作片</p>
	</div>
	</a></li>

	<li class="yun yun-large  border-gray"><a class="yun-link"
		href="http://www.xiguage.net/m/30565.html" title="老九门番外之虎骨梅花">
	<div class="img"><img class="lazy"
		data-original="http://dy.pic.wlbgt.com/uploads/allimg/201611/29beb5dcaa63f84f.jpg"
		src="./西瓜哥电影网-在线云点播,手机高清云影院,百度网盘电影_files/noimage.gif" alt="老九门番外之虎骨梅花">

	<span class="bgb"> <i class="bgbbg"></i>
	<p class="name">HD</p>
	<p class="other">剧情：按九门解家家规，解家人六十岁生辰那日便是金盆洗手之时。解家老仆庖丁叔六十大寿当天死于非命且死状惨烈。解九爷与受佛爷所托..</p>
	</span></div>
	<div class="text">
	<p class="name">老九门番外之虎骨梅花</p>
	<p class="actor">分类：动作片</p>
	</div>
	</a></li>

	<li class="yun yun-large  border-gray"><a class="yun-link"
		href="http://www.xiguage.net/m/29817.html" title="巴霍巴利王:开端">
	<div class="img"><img class="lazy"
		data-original="http://dy.pic.wlbgt.com/uploads/allimg/160729/0f92bf822cd10fd8.jpg"
		src="./西瓜哥电影网-在线云点播,手机高清云影院,百度网盘电影_files/noimage.gif" alt="巴霍巴利王:开端">

	<span class="bgb"> <i class="bgbbg"></i>
	<p class="name">BD</p>
	<p class="other">剧情：该片号称是印度最贵的电影，制作耗资17亿5千万卢比（约1亿6975万人民币），讲述了巴霍巴利（帕拉巴斯
	Prabhas..</p>
	</span></div>
	<div class="text">
	<p class="name">巴霍巴利王:开端</p>
	<p class="actor">分类：动作片</p>
	</div>
	</a></li>

	<li class="yun yun-large  border-gray"><a class="yun-link"
		href="http://www.xiguage.net/m/30582.html" title="自杀森林">
	<div class="img"><img class="lazy"
		data-original="http://dy.pic.wlbgt.com/uploads/allimg/201611/64308a8f3ef11b89.jpg"
		src="./西瓜哥电影网-在线云点播,手机高清云影院,百度网盘电影_files/noimage.gif" alt="自杀森林">

	<span class="bgb"> <i class="bgbbg"></i>
	<p class="name">BD</p>
	<p class="other">剧情：故事背景是日本著名的自杀森林青木原树海，歪嘴女多默尔演的主角从美国来到森林寻找自己的妹妹。</p>
	</span></div>
	<div class="text">
	<p class="name">自杀森林</p>
	<p class="actor">分类：恐怖片</p>
	</div>
	</a></li>

	<li class="yun yun-large  border-gray"><a class="yun-link"
		href="http://www.xiguage.net/m/30581.html" title="魔法保姆">
	<div class="img"><img class="lazy"
		data-original="http://dy.pic.wlbgt.com/uploads/allimg/201611/38f15d7e8c40041e.jpg"
		src="./西瓜哥电影网-在线云点播,手机高清云影院,百度网盘电影_files/noimage.gif" alt="魔法保姆">

	<span class="bgb"> <i class="bgbbg"></i>
	<p class="name">BD</p>
	<p class="other">剧情：西蒙、朵拉、埃里克、莉莉、克里斯蒂安娜、塞巴斯蒂安和婴儿埃吉不仅是布朗家的心肝宝贝，还是世界上最无敌的超级顽童7人组，..</p>
	</span></div>
	<div class="text">
	<p class="name">魔法保姆</p>
	<p class="actor">分类：科幻片</p>
	</div>
	</a></li>

	<li class="yun yun-large  border-gray"><a class="yun-link"
		href="http://www.xiguage.net/m/29474.html" title="爱丽丝梦游仙境2">
	<div class="img"><img class="lazy"
		data-original="http://dy.pic.wlbgt.com/uploads/allimg/160602/5d294d19afb77c4e.jpg"
		src="./西瓜哥电影网-在线云点播,手机高清云影院,百度网盘电影_files/noimage.gif" alt="爱丽丝梦游仙境2">

	<span class="bgb"> <i class="bgbbg"></i>
	<p class="name">超清修复</p>
	<p class="other">剧情：爱丽丝（米娅·华希科沃斯卡 Mia Wasikowska 饰）为了拯救挚友疯帽子（约翰尼·德普
	Johnny Depp..</p>
	</span></div>
	<div class="text">
	<p class="name">爱丽丝梦游仙境2</p>
	<p class="actor">分类：科幻片</p>
	</div>
	</a></li>

	<li class="yun yun-large  border-gray"><a class="yun-link"
		href="http://www.xiguage.net/m/29898.html" title="爱宠大机密">
	<div class="img"><img class="lazy"
		data-original="http://dy.pic.wlbgt.com/uploads/allimg/160809/32f4e4722da58ceb.jpg"
		src="./西瓜哥电影网-在线云点播,手机高清云影院,百度网盘电影_files/noimage.gif" alt="爱宠大机密">

	<span class="bgb"> <i class="bgbbg"></i>
	<p class="name">高清 声音修复</p>
	<p class="other">剧情：讲述了在纽约一幢热闹的公寓大楼里，有一群宠物，每天主人出门后、回家前这里就变成了它们的乐园：有的和其他宠物一起出去玩；..</p>
	</span></div>
	<div class="text">
	<p class="name">爱宠大机密</p>
	<p class="actor">分类：喜剧片</p>
	</div>
	</a></li>

	<li class="yun yun-large  border-gray"><a class="yun-link"
		href="http://www.xiguage.net/m/30370.html" title="机械师2：复活">
	<div class="img"><img class="lazy"
		data-original="http://dy.pic.wlbgt.com/uploads/allimg/161002/27124b574c64cd51.jpg"
		src="./西瓜哥电影网-在线云点播,手机高清云影院,百度网盘电影_files/noimage.gif" alt="机械师2：复活">

	<span class="bgb"> <i class="bgbbg"></i>
	<p class="name">HD</p>
	<p class="other">剧情：拍摄于2011年的《机械师》是杰森·斯坦森的代表作，该片翻拍自1972年的同名电影，备受动作片影迷的喜爱。目前，《机械..</p>
	</span></div>
	<div class="text">
	<p class="name">机械师2：复活</p>
	<p class="actor">分类：动作片</p>
	</div>
	</a></li>

	<li class="yun yun-large  border-gray"><a class="yun-link"
		href="http://www.xiguage.net/m/29701.html" title="乌龙特工">
	<div class="img"><img class="lazy"
		data-original="http://dy.pic.wlbgt.com/uploads/allimg/160716/ff5db79917779858.jpg"
		src="./西瓜哥电影网-在线云点播,手机高清云影院,百度网盘电影_files/noimage.gif" alt="乌龙特工">

	<span class="bgb"> <i class="bgbbg"></i>
	<p class="name">HD</p>
	<p class="other">剧情：会计师卡尔文（凯文·哈特 Kevin Hart
	饰）在高中时代曾是学校的体育明星，他热心张罗高中同学聚会，于是在Fac..</p>
	</span></div>
	<div class="text">
	<p class="name">乌龙特工</p>
	<p class="actor">分类：喜剧片</p>
	</div>
	</a></li>

	<li class="yun yun-large  border-gray"><a class="yun-link"
		href="http://www.xiguage.net/m/30563.html" title="三不管">
	<div class="img"><img class="lazy"
		data-original="http://dy.pic.wlbgt.com/uploads/allimg/201611/6acb689fb0e41ae8.jpg"
		src="./西瓜哥电影网-在线云点播,手机高清云影院,百度网盘电影_files/noimage.gif" alt="三不管">

	<span class="bgb"> <i class="bgbbg"></i>
	<p class="name">高清</p>
	<p class="other">剧情：在城市尽头的破落寨城里聚居着的都是走投无路, 或拥有见不得光的过去的人. 他们干着「黄, 赌,
	毒」等不法勾当. 这里..</p>
	</span></div>
	<div class="text">
	<p class="name">三不管</p>
	<p class="actor">分类：剧情片</p>
	</div>
	</a></li>

	<li class="yun yun-large  border-gray"><a class="yun-link"
		href="http://www.xiguage.net/m/30577.html" title="公路怪物">
	<div class="img"><img class="lazy"
		data-original="http://dy.pic.wlbgt.com/uploads/allimg/201611/9cbb493cf2b6f8b5.png"
		src="./西瓜哥电影网-在线云点播,手机高清云影院,百度网盘电影_files/noimage.gif" alt="公路怪物">

	<span class="bgb"> <i class="bgbbg"></i>
	<p class="name">高清</p>
	<p class="other">剧情：佐伊·卡赞将加盟导演布莱恩·伯蒂诺的最新恐怖片[THERE ARE
	MONSTERS]，卡赞在片中会突破以往形象饰演一..</p>
	</span></div>
	<div class="text">
	<p class="name">公路怪物</p>
	<p class="actor">分类：恐怖片</p>
	</div>
	</a></li>

	<li class="yun yun-large  border-gray"><a class="yun-link"
		href="http://www.xiguage.net/m/30403.html" title="湄公河行动">
	<div class="img"><img class="lazy"
		data-original="http://dy.pic.wlbgt.com/uploads/allimg/161006/d12fc4ef135a7194.jpg"
		src="./西瓜哥电影网-在线云点播,手机高清云影院,百度网盘电影_files/noimage.gif" alt="湄公河行动">

	<span class="bgb"> <i class="bgbbg"></i>
	<p class="name">TC修复</p>
	<p class="other">剧情：2011年10月5日，两艘中国商船在湄公河金三角水域遭遇袭击，13名中国船员全部遇难，泰国警方从船上搜出90万颗冰毒。..</p>
	</span></div>
	<div class="text">
	<p class="name">湄公河行动</p>
	<p class="actor">分类：动作片</p>
	</div>
	</a></li>

	<li class="yun yun-large  border-gray"><a class="yun-link"
		href="http://www.xiguage.net/m/28716.html" title="蝙蝠侠大战超人：正义黎明">
	<div class="img"><img class="lazy"
		data-original="http://dy.pic.wlbgt.com/uploads/allimg/160331/6687c91dfe850748.jpg"
		src="./西瓜哥电影网-在线云点播,手机高清云影院,百度网盘电影_files/noimage.gif"
		alt="蝙蝠侠大战超人：正义黎明"> <span class="bgb"> <i class="bgbbg"></i>
	<p class="name">超清修复</p>
	<p class="other">剧情：&nbsp;
	《蝙蝠侠大战超人：正义黎明》是由美国华纳兄弟影业公司出品，DC扩展宇宙的第二部电影，中国电影集团公司进口..</p>
	</span></div>
	<div class="text">
	<p class="name">蝙蝠侠大战超人：正义黎明</p>
	<p class="actor">分类：科幻片</p>
	</div>
	</a></li>

	<li class="yun yun-large  border-gray"><a class="yun-link"
		href="http://www.xiguage.net/m/30528.html" title="光杆司令">
	<div class="img"><img class="lazy"
		data-original="http://dy.pic.wlbgt.com/uploads/allimg/201610/f83a22b160dff743.jpg"
		src="./西瓜哥电影网-在线云点播,手机高清云影院,百度网盘电影_files/noimage.gif" alt="光杆司令">

	<span class="bgb"> <i class="bgbbg"></i>
	<p class="name">BD</p>
	<p class="other">剧情：据国外媒体报道，国人非常熟悉的尼古拉斯·凯奇(Nicolas
	Cage)曾演过很多脾气古怪的角色，他在新片《一个人的军..</p>
	</span></div>
	<div class="text">
	<p class="name">光杆司令</p>
	<p class="actor">分类：喜剧片</p>
	</div>
	</a></li>

	<li class="yun yun-large  border-gray"><a class="yun-link"
		href="http://www.xiguage.net/m/30564.html" title="孕期完全指导">
	<div class="img"><img class="lazy"
		data-original="http://dy.pic.wlbgt.com/uploads/allimg/201611/e16f55916583889f.jpg"
		src="./西瓜哥电影网-在线云点播,手机高清云影院,百度网盘电影_files/noimage.gif" alt="孕期完全指导">

	<span class="bgb"> <i class="bgbbg"></i>
	<p class="name">高清</p>
	<p class="other">剧情：该片改编自作家Heidi
	Murkoff的同名小说，讲述了5个家庭在面对怀孕和孩子的问题上，产生意见分歧的故事。</p>
	</span></div>
	<div class="text">
	<p class="name">孕期完全指导</p>
	<p class="actor">分类：喜剧片</p>
	</div>
	</a></li>

	<li class="yun yun-large  border-gray"><a class="yun-link"
		href="http://www.xiguage.net/m/30514.html" title="黑处有什么">
	<div class="img"><img class="lazy"
		data-original="http://dy.pic.wlbgt.com/uploads/allimg/201610/e5ccb3fc219aa063.jpg"
		src="./西瓜哥电影网-在线云点播,手机高清云影院,百度网盘电影_files/noimage.gif" alt="黑处有什么">

	<span class="bgb"> <i class="bgbbg"></i>
	<p class="name">HD修复</p>
	<p class="other">剧情：1991年春夏之交，中原飞机厂家属区内，一起强奸杀人案打破了往日的平静……初二中等生曲靖和老留级生张雪的爸爸同为负责这..</p>
	</span></div>
	<div class="text">
	<p class="name">黑处有什么</p>
	<p class="actor">分类：恐怖片</p>
	</div>
	</a></li>

	<li class="yun yun-large  border-gray"><a class="yun-link"
		href="http://www.xiguage.net/m/30535.html" title="七号病人">
	<div class="img"><img class="lazy"
		data-original="http://dy.pic.wlbgt.com/uploads/allimg/201610/87ac8f85c9c96f74.jpg"
		src="./西瓜哥电影网-在线云点播,手机高清云影院,百度网盘电影_files/noimage.gif" alt="七号病人">

	<span class="bgb"> <i class="bgbbg"></i>
	<p class="name">BD</p>
	<p class="other">剧情：The film centers on Dr. Marcus, a renowned
	psychiatrist who..</p>
	</span></div>
	<div class="text">
	<p class="name">七号病人</p>
	<p class="actor">分类：恐怖片</p>
	</div>
	</a></li>

	<li class="yun yun-large  border-gray"><a class="yun-link"
		href="http://www.xiguage.net/m/30371.html" title="潜伏者">
	<div class="img"><img class="lazy"
		data-original="http://dy.pic.wlbgt.com/uploads/allimg/201610/520a80167b6c9fe6.jpg"
		src="./西瓜哥电影网-在线云点播,手机高清云影院,百度网盘电影_files/noimage.gif" alt="潜伏者">

	<span class="bgb"> <i class="bgbbg"></i>
	<p class="name">BD</p>
	<p class="other">剧情：据美国《综艺》杂志报道，布莱恩·科兰斯顿将出演一部犯罪新片《潜伏者》，在片中再现一名传奇联盟探员的卧底经历。该片由《林..</p>
	</span></div>
	<div class="text">
	<p class="name">潜伏者</p>
	<p class="actor">分类：剧情片</p>
	</div>
	</a></li>

</ul>
</div>
</div>
</section> <!---------------------------- -- ui-box3 end -------- ------------------------->
<!------------------------------ ui-box4 start --------------------------------->
<section class="ui-box clearfix indexcon">
<div class="hello-box">
<div class="module-head  border-gray">
<h2 class="module-title"><i class="iconfont m-r-7 f-s-25 m-t-2">󰂑</i>热门电视剧推荐</h2>

<ul class="s-title_f12">
<%
sql = "select name from concreteclass where pid!=id and pid=(select id  from concreteclass where name='地区') ;";
rs = DBService.query(sql);
while(rs.next())
{	
try
{	
%>
<li><a href=<%="./search.jsp?地区="+rs.getString("name") %> target="_blank"><%=rs.getString("name") %></a></li>	
<%
}
catch(Exception e)
{
	e.printStackTrace();
	response.sendRedirect(request.getContextPath()+"/error.jsp?err="+request.getRequestURL());
	return;
}

}
%>
</ul>

<a class="more" href="http://www.xiguage.net/f/2.html" target="_blank"
	title="更多">更多</a></div>
<div class="module-content">
<ul class="yun-list clearfix" id="yun-list">

<%
sql = "select * from videoInfo where typeClass=(select id from typeclass where name='电视') order by click desc limit 12;";
rs = DBService.query(sql);
while(rs.next())
{
VideoInfo vi = new VideoInfo();
try
{
vi.setName(rs.getString("name"));
vi.setSummary(rs.getString("summary"));
vi.setVideo(rs.getString("video"));
vi.setImage(rs.getString("image"));
vi.setCurnum(rs.getInt("curnum"));
vi.setAllnum(rs.getInt("allnum"));
%>
	
	<li class="yun yun-large  border-gray"><a class="yun-link"
		href='./showInfo.jsp?id=<%=rs.getInt("id") %>' title="<%=vi.getName() %>">
	<div class="img"><img class="lazy"
		data-original="<%=vi.getImage() %>"
		src="<%=vi.getImage() %>" alt="<%=vi.getName() %>">

	<span class="bgb"> <i class="bgbbg"></i>
	<p class="name"><%=(vi.getAllnum()==vi.getCurnum()?(vi.getAllnum()==1?"":"共"+vi.getAllnum()+"集 ")+"已完结":"更新至"+vi.getCurnum()+"集") %></p>
	<p class="other">剧情：<%=vi.getSummary().length()>60?vi.getSummary().substring(0,60)+"..":vi.getSummary() %></p>
	</span></div>
	<div class="text">
	<p class="name"><%=vi.getName() %></p>
	<p class="actor">分类：<%=((vi.getTypeClass().equals("电影"))?(vi.getProperty().split("\\s+|，|,|\\|"))[0]:((vi.getTypeClass().equals("电视"))?vi.getArea():"-")) %></p>
	</div>
	</a></li>
	
<%
}
catch(Exception e)
{
	e.printStackTrace();
	response.sendRedirect(request.getContextPath()+"/error.jsp?err="+request.getRequestURL());
	return;
}
}
%>

	<li class="yun yun-large  border-gray"><a class="yun-link"
		href="http://www.xiguage.net/m/30601.html" title="哦，我的金雨">
	<div class="img"><img class="lazy"
		data-original="http://dy.pic.wlbgt.com/uploads/allimg/201611/9d06fdf6e594e0cd.jpg"
		src="./西瓜哥电影网-在线云点播,手机高清云影院,百度网盘电影_files/noimage.gif" alt="哦，我的金雨">

	<span class="bgb"> <i class="bgbbg"></i>
	<p class="name">更新至2集</p>
	<p class="other">剧情：讲述一个爸爸在照顾患有小儿痴呆症，记忆丧失的8岁女儿的过程中领悟到人生价值的故事。</p>
	</span></div>
	<div class="text">
	<p class="name">哦，我的金雨</p>
	<p class="actor">分类：日韩剧</p>
	</div>
	</a></li>

	<li class="yun yun-large  border-gray"><a class="yun-link"
		href="http://www.xiguage.net/m/30560.html" title="咱们相爱吧 未删减">
	<div class="img"><img class="lazy"
		data-original="http://dy.pic.wlbgt.com/uploads/allimg/201611/2ef64b3f7feea79f.jpg"
		src="./西瓜哥电影网-在线云点播,手机高清云影院,百度网盘电影_files/noimage.gif" alt="咱们相爱吧 未删减">

	<span class="bgb"> <i class="bgbbg"></i>
	<p class="name">更新至20集</p>
	<p class="other">剧情：天生一根筋的女建筑师林恩爱，因为坚持原则，在事业和婚姻中走得跌跌撞撞，失业失婚后，上照顾母亲，下抚养多病的儿子，生活艰..</p>
	</span></div>
	<div class="text">
	<p class="name">咱们相爱吧 未删减</p>
	<p class="actor">分类：大陆剧</p>
	</div>
	</a></li>

	<li class="yun yun-large  border-gray"><a class="yun-link"
		href="http://www.xiguage.net/m/30406.html" title="绿箭侠第5季">
	<div class="img"><img class="lazy"
		data-original="http://dy.pic.wlbgt.com/uploads/allimg/201610/7efb57595cddfb1d.jpg"
		src="./西瓜哥电影网-在线云点播,手机高清云影院,百度网盘电影_files/noimage.gif" alt="绿箭侠第5季">

	<span class="bgb"> <i class="bgbbg"></i>
	<p class="name">更新至7集</p>
	<p class="other">剧情：该剧改编自“DC漫画”中的经典故事，讲述了亿万阔少奥利弗·奎恩遭遇海难，困于小岛五年后被渔民救起，重返故乡斯塔灵市，奥..</p>
	</span></div>
	<div class="text">
	<p class="name">绿箭侠第5季</p>
	<p class="actor">分类：欧美剧</p>
	</div>
	</a></li>

	<li class="yun yun-large  border-gray"><a class="yun-link"
		href="http://www.xiguage.net/m/30392.html" title="闪电侠第三季">
	<div class="img"><img class="lazy"
		data-original="http://dy.pic.wlbgt.com/uploads/allimg/161005/3ef02860044f3a66.png"
		src="./西瓜哥电影网-在线云点播,手机高清云影院,百度网盘电影_files/noimage.gif" alt="闪电侠第三季">

	<span class="bgb"> <i class="bgbbg"></i>
	<p class="name">更新至7集</p>
	<p class="other">剧情：闪电侠讲述了主人公被闪电击中后获得了超能力并维护正义的故事Barry
	Allen在11岁的时候，他的母亲死于一次离奇的..</p>
	</span></div>
	<div class="text">
	<p class="name">闪电侠第三季</p>
	<p class="actor">分类：欧美剧</p>
	</div>
	</a></li>

	<li class="yun yun-large  border-gray"><a class="yun-link"
		href="http://www.xiguage.net/m/30238.html" title="美国恐怖故事第六季">
	<div class="img"><img class="lazy"
		data-original="http://dy.pic.wlbgt.com/uploads/allimg/160915/6eacb6321fd46da8.jpg"
		src="./西瓜哥电影网-在线云点播,手机高清云影院,百度网盘电影_files/noimage.gif" alt="美国恐怖故事第六季">

	<span class="bgb"> <i class="bgbbg"></i>
	<p class="name">完结</p>
	<p class="other">剧情：《美国恐怖故事》第六季。</p>
	</span></div>
	<div class="text">
	<p class="name">美国恐怖故事第六季</p>
	<p class="actor">分类：欧美剧</p>
	</div>
	</a></li>

	<li class="yun yun-large  border-gray"><a class="yun-link"
		href="http://www.xiguage.net/m/30570.html" title="心里的声音">
	<div class="img"><img class="lazy"
		data-original="http://dy.pic.wlbgt.com/uploads/allimg/201611/ca575ab70f05b368.jpg"
		src="./西瓜哥电影网-在线云点播,手机高清云影院,百度网盘电影_files/noimage.gif" alt="心里的声音">

	<span class="bgb"> <i class="bgbbg"></i>
	<p class="name">更新至6集</p>
	<p class="other">剧情：《心里的声音》讲述了男主角赵石“一事无成”，孤独的坚持着自己画漫画的梦想，他笔下的人物脱离了一般漫画中梦幻优美的固有形..</p>
	</span></div>
	<div class="text">
	<p class="name">心里的声音</p>
	<p class="actor">分类：日韩剧</p>
	</div>
	</a></li>

	<li class="yun yun-large  border-gray"><a class="yun-link"
		href="http://www.xiguage.net/m/30387.html" title="拖旅行箱的女人">
	<div class="img"><img class="lazy"
		data-original="http://dy.pic.wlbgt.com/uploads/allimg/201610/4dcdd9d6f3824191.png"
		src="./西瓜哥电影网-在线云点播,手机高清云影院,百度网盘电影_files/noimage.gif" alt="拖旅行箱的女人">

	<span class="bgb"> <i class="bgbbg"></i>
	<p class="name">完结</p>
	<p class="other">剧情：《拖旅行箱的女人》是韩国MBC月火剧，预计将于2016年9月19日播出。《拖旅行箱的女人》由曾执导《golden
	ti..</p>
	</span></div>
	<div class="text">
	<p class="name">拖旅行箱的女人</p>
	<p class="actor">分类：日韩剧</p>
	</div>
	</a></li>

	<li class="yun yun-large  border-gray"><a class="yun-link"
		href="http://www.xiguage.net/m/30442.html" title="超女第二季">
	<div class="img"><img class="lazy"
		data-original="http://dy.pic.wlbgt.com/uploads/allimg/161011/dd3d022c9c556dea.jpg"
		src="./西瓜哥电影网-在线云点播,手机高清云影院,百度网盘电影_files/noimage.gif" alt="超女第二季">

	<span class="bgb"> <i class="bgbbg"></i>
	<p class="name">更新至6集</p>
	<p class="other">剧情：</p>
	</span></div>
	<div class="text">
	<p class="name">超女第二季</p>
	<p class="actor">分类：欧美剧</p>
	</div>
	</a></li>

	<li class="yun yun-large  border-gray"><a class="yun-link"
		href="http://www.xiguage.net/m/30501.html" title="整垮前女友">
	<div class="img"><img class="lazy"
		data-original="http://dy.pic.wlbgt.com/uploads/allimg/201610/d8149e6779c8fa85.jpg"
		src="./西瓜哥电影网-在线云点播,手机高清云影院,百度网盘电影_files/noimage.gif" alt="整垮前女友">

	<span class="bgb"> <i class="bgbbg"></i>
	<p class="name">完结</p>
	<p class="other">剧情：金麒麟来自媒婆世家。原本媒婆这一行的规矩是传女不传男,但到了金麒麟这一辈,因为计划生育的政策,孝顺的金麒麟在姥姥的生死..</p>
	</span></div>
	<div class="text">
	<p class="name">整垮前女友</p>
	<p class="actor">分类：大陆剧</p>
	</div>
	</a></li>

	<li class="yun yun-large  border-gray"><a class="yun-link"
		href="http://www.xiguage.net/m/30449.html" title="欢喜密探">
	<div class="img"><img class="lazy"
		data-original="http://dy.pic.wlbgt.com/uploads/allimg/201610/f6ac2a5c2e7e8b2c.jpg"
		src="./西瓜哥电影网-在线云点播,手机高清云影院,百度网盘电影_files/noimage.gif" alt="欢喜密探">

	<span class="bgb"> <i class="bgbbg"></i>
	<p class="name">更新至34集</p>
	<p class="other">剧情：顺治年间，牛大宝一心想与心上人袁玉娥建立家庭，在追求过程中阴差阳错成为了京师总驿站皇华驿一员，而袁玉娥是洪帮的成员。为..</p>
	</span></div>
	<div class="text">
	<p class="name">欢喜密探</p>
	<p class="actor">分类：大陆剧</p>
	</div>
	</a></li>

	<li class="yun yun-large  border-gray"><a class="yun-link"
		href="http://www.xiguage.net/m/30596.html" title="妖出长安">
	<div class="img"><img class="lazy"
		data-original="http://dy.pic.wlbgt.com/uploads/allimg/201611/c6134e47d0e8f48c.jpg"
		src="./西瓜哥电影网-在线云点播,手机高清云影院,百度网盘电影_files/noimage.gif" alt="妖出长安">

	<span class="bgb"> <i class="bgbbg"></i>
	<p class="name">完结</p>
	<p class="other">剧情：安史之乱后，长安城社会动乱，人心浮动，离奇连环杀人案爆发。
	刀插两肋的回纥鹰卫、惨被割舌的学堂夫子、烧成焦炭的青楼女妓..</p>
	</span></div>
	<div class="text">
	<p class="name">妖出长安</p>
	<p class="actor">分类：大陆剧</p>
	</div>
	</a></li>

	<li class="yun yun-large  border-gray"><a class="yun-link"
		href="http://www.xiguage.net/m/30474.html" title="一起长大">
	<div class="img"><img class="lazy"
		data-original="http://dy.pic.wlbgt.com/uploads/allimg/201610/f13b5acf2d306324.jpg"
		src="./西瓜哥电影网-在线云点播,手机高清云影院,百度网盘电影_files/noimage.gif" alt="一起长大">

	<span class="bgb"> <i class="bgbbg"></i>
	<p class="name">完结</p>
	<p class="other">剧情：万辉投资公司总裁万天野与妻子丁曼在结婚纪念日突然离婚，丁曼远走美国。送走丁曼后万天野搭载了一对父子却遭遇车祸，万天野成..</p>
	</span></div>
	<div class="text">
	<p class="name">一起长大</p>
	<p class="actor">分类：大陆剧</p>
	</div>
	</a></li>

	<li class="yun yun-large  border-gray"><a class="yun-link"
		href="http://www.xiguage.net/m/30472.html" title="左眼诡事">
	<div class="img"><img class="lazy"
		data-original="http://dy.pic.wlbgt.com/uploads/allimg/201610/8bc009bd147e86d2.jpg"
		src="./西瓜哥电影网-在线云点播,手机高清云影院,百度网盘电影_files/noimage.gif" alt="左眼诡事">

	<span class="bgb"> <i class="bgbbg"></i>
	<p class="name">完结</p>
	<p class="other">剧情：《左眼诡事》改编自乌啼霜满天的知名网络悬疑灵异小说《我的左眼是阴阳眼》。故事发生在民国时期，讲述的是因一场偶发的意外，..</p>
	</span></div>
	<div class="text">
	<p class="name">左眼诡事</p>
	<p class="actor">分类：大陆剧</p>
	</div>
	</a></li>

	<li class="yun yun-large  border-gray"><a class="yun-link"
		href="http://www.xiguage.net/m/30300.html" title="THE K2">
	<div class="img"><img class="lazy"
		data-original="http://dy.pic.wlbgt.com/uploads/allimg/160924/ea7adaa950d23d65.jpg"
		src="./西瓜哥电影网-在线云点播,手机高清云影院,百度网盘电影_files/noimage.gif" alt="THE K2">

	<span class="bgb"> <i class="bgbbg"></i>
	<p class="name">完结</p>
	<p class="other">剧情：THE
	K2描绘的是的热烈的爱着国家与同僚却被他们抛弃的警卫员，与连爱情都能作为复仇工具使用的有力大选候选人隐藏着的女..</p>
	</span></div>
	<div class="text">
	<p class="name">THE K2</p>
	<p class="actor">分类：日韩剧</p>
	</div>
	</a></li>

	<li class="yun yun-large  border-gray"><a class="yun-link"
		href="http://www.xiguage.net/m/30587.html" title="最佳情侣">
	<div class="img"><img class="lazy"
		data-original="http://dy.pic.wlbgt.com/uploads/allimg/201611/f23b2ab322267af6.jpg"
		src="./西瓜哥电影网-在线云点播,手机高清云影院,百度网盘电影_files/noimage.gif" alt="最佳情侣">

	<span class="bgb"> <i class="bgbbg"></i>
	<p class="name">更新至6集</p>
	<p class="other">剧情：《最佳情侣》以韩国娱乐圈为背景，以当下最热门的明星假想婚恋节目为题材入手，讲述了两位出演假想结婚真人秀节目的明星各自带..</p>
	</span></div>
	<div class="text">
	<p class="name">最佳情侣</p>
	<p class="actor">分类：日韩剧</p>
	</div>
	</a></li>

	<li class="yun yun-large  border-gray"><a class="yun-link"
		href="http://www.xiguage.net/m/30559.html" title="行尸走肉第七季">
	<div class="img"><img class="lazy"
		data-original="http://dy.pic.wlbgt.com/uploads/allimg/201611/0498974f5503f07b.jpg"
		src="./西瓜哥电影网-在线云点播,手机高清云影院,百度网盘电影_files/noimage.gif" alt="行尸走肉第七季">

	<span class="bgb"> <i class="bgbbg"></i>
	<p class="name">更新至4集</p>
	<p class="other">剧情：行尸走肉是美国AMC电视台的丧尸电视剧，最近非常火爆，根据漫画改编
	《行尸走肉》讲述了警察瑞克在一次执法行动中因中弹负..</p>
	</span></div>
	<div class="text">
	<p class="name">行尸走肉第七季</p>
	<p class="actor">分类：欧美剧</p>
	</div>
	</a></li>

	<li class="yun yun-large  border-gray"><a class="yun-link"
		href="http://www.xiguage.net/m/30541.html" title="荼蘼">
	<div class="img"><img class="lazy"
		data-original="http://dy.pic.wlbgt.com/uploads/allimg/201611/d36e635b95584d5c.jpg"
		src="./西瓜哥电影网-在线云点播,手机高清云影院,百度网盘电影_files/noimage.gif" alt="荼蘼">

	<span class="bgb"> <i class="bgbbg"></i>
	<p class="name">完结</p>
	<p class="other">剧情：導演王小棣首部開拍作品「荼蘼」，找來楊丞琳擔任女主角，該劇是編劇徐譽庭最新作品，導演則是由王小棣親自上陣。這回首次合作..</p>
	</span></div>
	<div class="text">
	<p class="name">荼蘼</p>
	<p class="actor">分类：港台剧</p>
	</div>
	</a></li>

	<li class="yun yun-large  border-gray"><a class="yun-link"
		href="http://www.xiguage.net/m/30586.html" title="爸爸我来服侍您">
	<div class="img"><img class="lazy"
		data-original="http://dy.pic.wlbgt.com/uploads/allimg/201611/9a3f468447dd4b45.png"
		src="./西瓜哥电影网-在线云点播,手机高清云影院,百度网盘电影_files/noimage.gif" alt="爸爸我来服侍您">

	<span class="bgb"> <i class="bgbbg"></i>
	<p class="name">更新至2集</p>
	<p class="other">剧情：讲述四兄妹离家各过各的生活突然有一天同时回到家里发生的故事，这是一部为了唤醒现代子女意识到父母的珍贵，关于现时代操心劳..</p>
	</span></div>
	<div class="text">
	<p class="name">爸爸我来服侍您</p>
	<p class="actor">分类：日韩剧</p>
	</div>
	</a></li>

	<li class="yun yun-large  border-gray"><a class="yun-link"
		href="http://www.xiguage.net/m/30390.html" title="西部世界第一季">
	<div class="img"><img class="lazy"
		data-original="http://dy.pic.wlbgt.com/uploads/allimg/161005/b77b24cc1e1dfae6.jpg"
		src="./西瓜哥电影网-在线云点播,手机高清云影院,百度网盘电影_files/noimage.gif" alt="西部世界第一季">

	<span class="bgb"> <i class="bgbbg"></i>
	<p class="name">更新至7集</p>
	<p class="other">剧情：J.J. Abrams的Bad
	Robot公司将目光由广播网转向了有线网——HBO今天宣布购入该公司开发的新剧试映集《..</p>
	</span></div>
	<div class="text">
	<p class="name">西部世界第一季</p>
	<p class="actor">分类：欧美剧</p>
	</div>
	</a></li>

	<li class="yun yun-large  border-gray"><a class="yun-link"
		href="http://www.xiguage.net/m/30071.html" title="月桂西装店的绅士们">
	<div class="img"><img class="lazy"
		data-original="http://dy.pic.wlbgt.com/uploads/allimg/160828/1a1b4e24bda0035b.jpg"
		src="./西瓜哥电影网-在线云点播,手机高清云影院,百度网盘电影_files/noimage.gif" alt="月桂西装店的绅士们">

	<span class="bgb"> <i class="bgbbg"></i>
	<p class="name">更新至24集</p>
	<p class="other">剧情：该剧讲述了经营西装店的一家人之间发生的故事。</p>
	</span></div>
	<div class="text">
	<p class="name">月桂西装店的绅士们</p>
	<p class="actor">分类：日韩剧</p>
	</div>
	</a></li>

	<li class="yun yun-large  border-gray"><a class="yun-link"
		href="http://www.xiguage.net/m/30554.html" title="明星伙伴">
	<div class="img"><img class="lazy"
		data-original="http://dy.pic.wlbgt.com/uploads/allimg/201611/f1412f04d5ad38a5.jpg"
		src="./西瓜哥电影网-在线云点播,手机高清云影院,百度网盘电影_files/noimage.gif" alt="明星伙伴">

	<span class="bgb"> <i class="bgbbg"></i>
	<p class="name">更新至4集</p>
	<p class="other">剧情：韩国tvN2016年11月4日起播出的金土连续剧，由《需要浪漫3》张英宇导演指导。改编自美国电视剧《明星伙伴》，讲述年..</p>
	</span></div>
	<div class="text">
	<p class="name">明星伙伴</p>
	<p class="actor">分类：日韩剧</p>
	</div>
	</a></li>

	<li class="yun yun-large  border-gray"><a class="yun-link"
		href="http://www.xiguage.net/m/30306.html" title="罪恶黑名单第四季">
	<div class="img"><img class="lazy"
		data-original="http://dy.pic.wlbgt.com/uploads/allimg/160926/0ccee05177faf278.jpg"
		src="./西瓜哥电影网-在线云点播,手机高清云影院,百度网盘电影_files/noimage.gif" alt="罪恶黑名单第四季">

	<span class="bgb"> <i class="bgbbg"></i>
	<p class="name">更新至8集</p>
	<p class="other">剧情：号称“红魔”的雷蒙德（詹姆斯·斯派德 James Spader
	饰）一直以来都是联邦调查局通缉名单上的“常驻人员”，某..</p>
	</span></div>
	<div class="text">
	<p class="name">罪恶黑名单第四季</p>
	<p class="actor">分类：欧美剧</p>
	</div>
	</a></li>

	<li class="yun yun-large  border-gray"><a class="yun-link"
		href="http://www.xiguage.net/m/30070.html" title="我们甲顺">
	<div class="img"><img class="lazy"
		data-original="http://dy.pic.wlbgt.com/uploads/allimg/160828/7c1e34abeb2bedfc.jpg"
		src="./西瓜哥电影网-在线云点播,手机高清云影院,百度网盘电影_files/noimage.gif" alt="我们甲顺">

	<span class="bgb"> <i class="bgbbg"></i>
	<p class="name">更新至23集</p>
	<p class="other">剧情：饰演甲石的宋再临表示"甲石虽然毕业于首尔地区的研究所，但却成为了资深的鹭梁津公务员考生。因为害怕放弃而一直学习。虽然一..</p>
	</span></div>
	<div class="text">
	<p class="name">我们甲顺</p>
	<p class="actor">分类：日韩剧</p>
	</div>
	</a></li>

	<li class="yun yun-large  border-gray"><a class="yun-link"
		href="http://www.xiguage.net/m/30462.html" title="邪恶力量第十二季">
	<div class="img"><img class="lazy"
		data-original="http://dy.pic.wlbgt.com/uploads/allimg/201610/1ab7c31c449bff8e.jpg"
		src="./西瓜哥电影网-在线云点播,手机高清云影院,百度网盘电影_files/noimage.gif" alt="邪恶力量第十二季">

	<span class="bgb"> <i class="bgbbg"></i>
	<p class="name">更新至5集</p>
	<p class="other">剧情：</p>
	</span></div>
	<div class="text">
	<p class="name">邪恶力量第十二季</p>
	<p class="actor">分类：欧美剧</p>
	</div>
	</a></li>

</ul>

</div>
</div>
</section> 
<!---------------------------- -- ui-box4 end -------- ------------------------->
<!------------------------------ ui-box5 start --------------------------------->
<section class="ui-box clearfix margin-b10 border-gray" id="links-focus">
<h3><i class="iconfont f-s-16 m-r-5">󰅋</i>友情链接<span
	class="links-tz"></span></h3>
<ul class="links-txt-list clearfix">
	<li><a href="http://v.stuclub.cn/" target="_blank">翱翔视频网</a></li>
	<li><a href="http://www.xunleigou.com/" target="_blank">迅雷狗电影网</a></li>
	<li><a href="http://www.yunyy.cc/" target="_blank">手机影院</a></li>
	<li><a href="http://www.yunyy.cc/" target="_blank">手机电影网</a></li>
	<li><a href="http://www.xiguage.net/" target="_blank">西瓜影院</a></li>
	<li><a href="http://www.dafuli.cc/" target="_blank">大福利电影网</a></li>
	<li><a href="http://www.ttkyy.net/" target="_blank">天天看影院</a></li>

</ul>
</section> 
<!---------------------------- -- ui-box5 end -------- ------------------------->
</div>
<!------------------------------- content end ---------------------------------->
<!------------------------------- footer start --------------------------------->
<%-- <%@include file="./foot.html" %> --> --%> 
<%@include file="./foot.html" %>
<!-------------------------------- footer end ---------------------------------->
<!-- 
<div id="ft_right_bottom" style="position: fixed; bottom: 0px; z-index: 2147483647; overflow: hidden; right: 0px;"><div style="margin: 0px; padding: 0px; width: 300px; height: 250px;"><div style="position: absolute; z-index: 2; width: 26px; height: 12px; top: 237px; background: url(&quot;http://img.feitian001.com//html/click/adtag.png&quot;) no-repeat;"></div><div style="position: absolute; z-index: 3;"><a href="http://c.65mhxy.com/s/1/558/0.html?uid=211885&amp;ext=MGQoTiE3LDIzIC1AMTFaIFJvZGdfUWFzXidNamVmZExdbF4lTW1dYGRVXW5cIk9qZF5lUF52WSBSb11paFBgcQ%3D%3D" target="_blank" style="width: 300px; height: 250px; display: block; opacity: 0.1; background: url(&quot;http://img.feitian001.com//img/r/dot.gif&quot;);"><img src="./西瓜哥电影网-在线云点播,手机高清云影院,百度网盘电影_files/dot.gif" border="0" width="300" height="250" style="background-color: transparent;"></a></div><object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,24,0" width="300" height="250" align="middle"><param name="movie" value="http://c.65mhxy.com/b/1/558/gdd9fid.swf?uid=211885"><param name="quality" value="high"><param name="wmode" value="transparent"><embed pluginspage="http://www.macromedia.com/go/getflashplayer" width="300" height="250" align="middle" type="application/x-shockwave-flash" src="http://c.65mhxy.com/b/1/558/gdd9fid.swf?uid=211885" quality="high" wmode="transparent"></object></div><div id="ft_rich_close" kc="false" style="z-index: 1999527; top: 3px; left: 264px; width: 25px; height: 13px; position: absolute; display: block;"><img src="./西瓜哥电影网-在线云点播,手机高清云影院,百度网盘电影_files/close.gif" ck="ft_rich_close_hide" style="width: 25px; height: 13px; cursor: pointer;"></div><div style="z-index: 1999527; top: 234px; left: 240px; width: 60px; height: 16px; position: absolute;"><a href="http://www.feitian001.com/" target="_blank"><img src="./西瓜哥电影网-在线云点播,手机高清云影院,百度网盘电影_files/logo.gif" style="width: 60px; height: 16px; border-style: none;"></a>
-->
<script type="text/javascript">
$(".fullSlide").hover(function(){
    $(this).find(".prev,.next").stop(true, true).fadeTo("show", 0.5)
},
function(){
    $(this).find(".prev,.next").fadeOut()
});
$(".fullSlide").slide({
    titCell: ".hd ul",
    mainCell: ".bd ul",
    effect: "fold",
    autoPlay: true,
    autoPage: true,
    trigger: "click",
    startFun: function(i) {
        var curLi = jQuery(".fullSlide .bd li").eq(i);
        if ( !! curLi.attr("_src")) {
            curLi.css("background-image", curLi.attr("_src")).removeAttr("_src")
        }
    }
});
</script>
<!--
<script type="text/javascript">
//平台、设备和操作系统
 var system ={
 win : false,
 mac : false,
 xll : false
 };
 //检测平台
 var p = navigator.platform;
 system.win = p.indexOf("Win") == 0;
 system.mac = p.indexOf("Mac") == 0;
 system.x11 = (p == "X11") || (p.indexOf("Linux") == 0);
 //跳转语句
 if(system.win||system.mac||system.xll){

	 document.writeln('<script language="javascript" src="http://rjs.niuxgame77.com/r/f.php?uid=11885&pid=3941\"><\/script>');

	 }else{
 document.writeln('');
 }
</script>
-->
<!--  
<script>
(function(){
    var bp = document.createElement('script');
    bp.src = './js/push.js';
    var s = document.getElementsByTagName("script")[0];
    s.parentNode.insertBefore(bp, s);
})();
</script>
-->
</body>
</html>