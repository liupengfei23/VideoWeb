<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet" %>
<%@page import="service.DBService" %>
<%@page import="bean.VideoInfo" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="format-detection" content="telephone=no">
<meta name="renderer" content="webkit">
<meta name="applicable-device" content="pc,mobile">
<title>鹏飞哥视频网-高级搜索</title>

<link href="./css/default.css" rel="stylesheet">
<script src="./js/push.js"></script><script>var sitePath=''</script>
<script src="./js/1.7.2.min.js"></script>
<script src="./js/superslide.2.1.js"></script>
<script src="./js/jq.js"></script>
<script src="./js/common.js"></script>
<script src="./js/function.js"></script>
<script src="./js/jquery.lazyload.js"></script>
<script type="text/javascript">
if (window!=top)
top.location.href =window.location.href;
</script>
<script src="./js/rich.js" type="text/javascript"></script>
</head>
<body>
<%!int id = 0; int typeClass = 0; String searchword; String order; int pageNum=1; int pageCur=1;%>
<%
try{
request.setCharacterEncoding("UTF-8");
response.setContentType("text/html;charset=UTF-8");
order = ((request.getParameter("order")=="" || request.getParameter("order")==null)?"time":request.getParameter("order"));
searchword = new String(request.getParameter("searchword").getBytes("ISO-8859-1"),"utf-8");
//order = ((request.getParameter("order")=="" || request.getParameter("order")==null)?"time":request.getParameter("order"));
//order = ((request.getParameter("order")=="" || request.getParameter("order")==null)?"time":request.getParameter("order"));
//order = new String(order.getBytes("ISO-8859-1"),"utf-8");
id = Integer.parseInt((request.getParameter("id")==null||request.getParameter("id")=="")?"0":request.getParameter("id"));
typeClass = Integer.parseInt((request.getParameter("typeClass")==null||request.getParameter("typeClass")=="")?"0":request.getParameter("typeClass"));
pageCur = ((request.getParameter("page")==""||request.getParameter("page")==null)?1:(Integer.parseInt(request.getParameter("page"))));
}
catch(Exception e)
{
	e.printStackTrace();
}

%>

<!----------------------------- header start -------------------------------->
<jsp:include page="./head.jsp"></jsp:include>
<!------------------------------ header end --------------------------------->
<!----------------------------- subnav start -------------------------------->
<div id="subnav" class="margin-b10">
<div class="wrap fn-clear">
<div class="subnav-tv fn-left"><strong class="tv">电视剧：</strong>
<%
String sql = "select name,id from concreteclass where id!=pid and pid=(select id from concreteclass where name='地区');";
ResultSet rs;
rs = DBService.query(sql);
while(rs.next())
{
%>
<a href='./search.jsp?typeClass=<%=DBService.queryObject("select id from typeclass where name='电视';") %>&id=<%=rs.getInt("id") %>&searchword=""'>
<%=rs.getString("name") %></a><em>|</em>
<%} %>
</div>
<div class="subnav-movie fn-right"><strong class="movie">电影：</strong>
<%
sql = "select name,id from concreteclass where id!=pid and pid=(select id from concreteclass where name='分类');";
rs = DBService.query(sql);
while(rs.next())
{
%>
<a href='./search.jsp?typeClass=<%=DBService.queryObject("select id from typeclass where name='电影';") %>&id=<%=rs.getInt("id") %>&searchword=""'><%=rs.getString("name") %></a><em>|</em>
<%} %>
</div>
</div>
</div>
<!------------------------------ subnav end --------------------------------->
<!---------------------------- content start -------------------------------->
<div id="content" class="wrap clearfix">
<div class="content-left clearfix">
<div class="ui-title">
<h3 class="tt-tab">影视筛选&nbsp;&nbsp;<span class="ml19">展开筛选</span></h3>
</div>
<div class=" ui-cnt filter-focusdl mbfilter border-gray">
<div class="filter-list fn-clear">
<h5><i class="iconfont m-r-3 f-s-16">󰉿</i>按地区：</h5>
<ul>
<%
sql = "select * from concreteclass where pid = (select id from concreteClass where name='地区');";
rs = DBService.query(sql);
while(rs.next())
{
	if(rs.getString("name").equals("地区"))
	{
	%>
<li>
<a href='./search.jsp?id=<%=rs.getInt("id") %>&typeCLass=0&searchword=' <%=(id==0||id==rs.getInt("id")?"class='on'":"") %> >全部</a>
</li>
	<%
	}
	else
	{
		%>
<li>
<a href='./search.jsp?id=<%=rs.getInt("id") %>&typeCLass=0&searchword=' <%=(id==rs.getInt("id")?"class='on'":"") %>><%=rs.getString("name") %>
</a>
</li>
		<%
	}
}
%>

</ul>
</div>
<div class="filter-list fn-clear">
<h5><i class="iconfont m-r-3 f-s-16">󰁣</i>按年代：</h5>
<ul>

<%
sql = "select * from concreteclass where pid = (select id from concreteclass where name='年代');";
rs = DBService.query(sql);
while(rs.next())
{
	if(rs.getString("name").equals("年代"))
	{
	%>
<li>
<a href='./search.jsp?id=<%=rs.getInt("id") %>&typeCLass=0&searchword=' <%=(id==0||id==rs.getInt("id")?"class='on'":"") %> >全部</a>
</li>
	<%
	}
	else
	{
		%>
<li>
<a href='./search.jsp?id=<%=rs.getInt("id") %>&typeCLass=0&searchword=' <%=(id==rs.getInt("id")?"class='on'":"") %>><%=rs.getString("name") %>
</a>
</li>
		<%
	}
}
%>

</ul>
</div>
<div class="filter-list fn-clear">
<h5><i class="iconfont m-r-3 f-s-14">󰅙</i>按语言：</h5>
<ul>

<%
sql = "select * from concreteclass where pid = (select id from concreteclass where name='语言');";
rs = DBService.query(sql);
while(rs.next())
{
	if(rs.getString("name").equals("语言"))
	{
	%>
<li>
<a href='./search.jsp?id=<%=rs.getInt("id") %>&typeCLass=0&searchword=' <%=(id==0||id==rs.getInt("id")?"class='on'":"") %> >全部</a>
</li>
	<%
	}
	else
	{
		%>
<li>
<a href='./search.jsp?id=<%=rs.getInt("id") %>&typeCLass=0&searchword=' <%=(id==rs.getInt("id")?"class='on'":"") %>><%=rs.getString("name") %>
</a>
</li>
		<%
	}
}
%>


</ul>
</div>

<div class="ui-bar fn-clear">
<ul class="view-mode">
<li id="view-list"><a class="current"><i class="iconfont m-r-3 f-s-14">󰅙</i>选择排序方式time</a></li>
</ul>
<div class="view-filter">
<%
if(order.equals("click"))
{
%>
<a id="time" href="./search.jsp?typeClass=<%=typeClass %>&id=<%=id %>&searchword=<%=searchword %>&order=time" class="order " target="_self"><span>按时间</span></a>
<a id="hits" href="./search.jsp?typeClass=<%=typeClass %>&id=<%=id %>&searchword=<%=searchword %>&order=click" class="order current" target="_self"><span>按人气</span></a>
<a id="pingfen" href="./search.jsp?typeClass=<%=typeClass %>&id=<%=id %>&searchword=<%=searchword %>&order=click" class="order " target="_self"><span>按评分</span></a>
<%
}
else if(order.equals("click"))
{
%>
<a id="time" href="./search.jsp?typeClass=<%=typeClass %>&id=<%=id %>&searchword=<%=searchword %>&order=time" class="order" target="_self"><span>按时间</span></a>
<a id="hits" href="./search.jsp?typeClass=<%=typeClass %>&id=<%=id %>&searchword=<%=searchword %>&order=click" class="order" target="_self"><span>按人气</span></a>
<a id="pingfen" href="./search.jsp?typeClass=<%=typeClass %>&id=<%=id %>&searchword=<%=searchword %>&order=click" class="order current" target="_self"><span>按评分</span></a>
<%
}
else
{
%>
<a id="time" href="./search.jsp?typeClass=<%=typeClass %>&id=<%=id %>&searchword=<%=searchword %>&order=time" class="order current" target="_self"><span>按时间</span></a>
<a id="hits" href="./search.jsp?typeClass=<%=typeClass %>&id=<%=id %>&searchword=<%=searchword %>&order=click" class="order " target="_self"><span>按人气</span></a>
<a id="pingfen" href="./search.jsp?typeClass=<%=typeClass %>&id=<%=id %>&searchword=<%=searchword %>&order=click" class="order " target="_self"><span>按评分</span></a>
<%
}
%>
</div>
<div class="ui-pages  fn-right" id="short-page"></div>
</div>
</div>
<section class="ui-box clearfix channellist-box">
<div class="hello-box">
<div class="module-content">
<ul class="yun-list clearfix" id="yun-list">
<%=order %>
<%
if((searchword==null||searchword=="") && id!=0 && typeClass!=0)
{
	pageNum = Integer.parseInt(DBService.queryObject("select count(*) from videoInfo where id="+id+" and typeClass = "+typeClass+" order by "+order+";" ).toString());
	sql = "select * from videoInfo where id="+id+" and typeClass = "+typeClass+" order by "+order+" limit "+ (pageCur-1)*12 + ",12;";
	
}
else if((searchword==null||searchword=="") && id!=0)
{
	pageNum = Integer.parseInt(DBService.queryObject("select count(*) from videoInfo where id="+id+" order by "+order+";" ).toString());
	sql = "select * from videoInfo where id="+id+" order by "+order+" limit "+ (pageCur-1)*12 + ",12;";
}
else if(searchword!=null && searchword!="")
{
	pageNum = Integer.parseInt(DBService.queryObject("select count(*) from videoInfo where name like'%"+searchword+"%' or actors like '%"+searchword+"%' or daoyan like '%"+searchword+"%' or summary like '%"+searchword+"%' order by "+order+";" ).toString());
	sql = "select * from videoInfo where name like '%"+searchword+"%' or actors like '%"+searchword+"%' or daoyan like '%"+searchword+"%' or summary like '%"+searchword+"%' order by "+order+" limit "+ (pageCur-1)*12 + ",12;";
}
else
{
	pageNum = Integer.parseInt(DBService.queryObject("select count(*) from videoInfo order by "+order+";" ).toString());
	sql = "select * from videoInfo order by "+order+" limit "+ (pageCur-1)*12 + ",12;";
}

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
		vi.setActors(((rs.getString("actors") ==""||rs.getString("actors")==null)?"":rs.getString("actors")).trim());

%>	
	<li class="yun yun-large  border-gray">
	<a class="yun-link" href='./showInfo?id=<%=rs.getInt("id") %>' title="<%=vi.getName() %>">
	<div class="img">
	<img class="lazy" data-original="<%=vi.getImage() %>" src="<%=vi.getImage() %>" alt="<%=vi.getName() %>" style="display: block;">
	<span class="bgb">
	<i class="bgbbg"></i>
	<p class="name">HDTC</p>
	<p class="other">剧情：<%=vi.getSummary().length()>60?vi.getSummary().substring(0,60)+"..":vi.getSummary() %></p>
	</span>
	</div>
	<div class="text">
	<p class="name"><%=vi.getName() %></p>
	<p class="actor">主演：<%=vi.getActors() %></p>
	</div>
	</a>
	</li>
	
<%
}
catch(Exception e)
{
	e.printStackTrace();
}
}
%>

<li class="yun yun-large  border-gray">
<a class="yun-link" href="http://www.xiguage.net/m/30403.html" title="湄公河行动">
<div class="img">
<img class="lazy" data-original="http://dy.pic.wlbgt.com/uploads/allimg/161006/d12fc4ef135a7194.jpg" src="./西瓜哥电影网-高级搜索_files/d12fc4ef135a7194.jpg" alt="湄公河行动" style="display: block;">
<span class="bgb">
<i class="bgbbg"></i>
<p class="name">HDTC 11.18修复</p>
<p class="other">剧情：2011年10月5日，两艘中国商船在湄公河金三角水域遭遇袭击，13名中国船员全部遇难，泰国警方从船上搜出90万颗冰毒。..</p>
</span>
</div>
<div class="text">
<p class="name">湄公河行动</p><p class="actor">主演：</p>
</div>
</a>
</li>

<li class="yun yun-large  border-gray">
<a class="yun-link" href="http://www.xiguage.net/m/30597.html" title="盛先生的花儿">
<div class="img">
<img class="lazy" data-original="http://dy.pic.wlbgt.com/uploads/allimg/201611/5e5939251f4ecea8.jpg" src="./西瓜哥电影网-高级搜索_files/5e5939251f4ecea8.jpg" alt="盛先生的花儿" style="display: block;">
<span class="bgb">
<i class="bgbbg"></i>
<p class="name">HD</p>
<p class="other">剧情：该片根据美籍华人作家哈金的短篇小说《养老计划》改编，讲述了家人为患有老年痴呆症的老人找来一位保姆照料他的起居，但老人时..</p>
</span>
</div>
<div class="text">
<p class="name">盛先生的花儿</p><p class="actor">主演：颜丙燕 王德顺 艾丽娅</p>
</div>
</a>
</li>
<li class="yun yun-large  border-gray">
<a class="yun-link" href="http://www.xiguage.net/m/30322.html" title="外八门之雪域魔窟">
<div class="img">
<img class="lazy" data-original="http://dy.pic.wlbgt.com/uploads/allimg/201609/9b724262381d68e8.jpg" src="./西瓜哥电影网-高级搜索_files/9b724262381d68e8.jpg" alt="外八门之雪域魔窟" style="display: block;">
<span class="bgb">
<i class="bgbbg"></i>
<p class="name">高清</p>
<p class="other">剧情：一种身体莫名自燃的怪病，一个驾牧马人的大叔，另愁苦悲燥的叶子突然间成为了“盗墓猎人”，而原本文静乖巧的她竟是古老的叶赫..</p>
</span>
</div>
<div class="text">
<p class="name">外八门之雪域魔窟</p><p class="actor">主演：赵飞 白那日苏 吴晴</p>
</div>
</a>
</li>
<li class="yun yun-large  border-gray">
<a class="yun-link" href="http://www.xiguage.net/m/30593.html" title="六弄咖啡馆">
<div class="img">
<img class="lazy" data-original="http://dy.pic.wlbgt.com/uploads/allimg/201611/46e072c01b7ef7e3.jpg" src="./西瓜哥电影网-高级搜索_files/46e072c01b7ef7e3.jpg" alt="六弄咖啡馆" style="display: block;">
<span class="bgb">
<i class="bgbbg"></i>
<p class="name">HD</p>
<p class="other">剧情：电影《六弄咖啡馆》改编自藤井树（吴子云）的同名畅销小说，同时导演和编剧也是由原著作者出任，刘杰担任影片监制。主要讲述男..</p>
</span>
</div>
<div class="text">
<p class="name">六弄咖啡馆</p><p class="actor">主演：董子健 颜卓灵 林柏宏 欧阳妮妮</p>
</div>
</a>
</li>
<li class="yun yun-large  border-gray">
<a class="yun-link" href="http://www.xiguage.net/m/30590.html" title="长江图">
<div class="img">
<img class="lazy" data-original="http://dy.pic.wlbgt.com/uploads/allimg/201611/b16c5a145c0234d3.jpg" src="./西瓜哥电影网-高级搜索_files/b16c5a145c0234d3.jpg" alt="长江图" style="display: block;">
<span class="bgb">
<i class="bgbbg"></i>
<p class="name">BD</p>
<p class="other">剧情：当代，中国长江沿岸。 船长高淳（秦昊 饰）在驾驶货船沿长江送货的途中，不断上岸寻找艳遇。但他逐渐发现，这些在不同的码头..</p>
</span>
</div>
<div class="text">
<p class="name">长江图</p><p class="actor">主演：秦昊 辛芷蕾 邬立朋 江化霖</p>
</div>
</a>
</li>
<li class="yun yun-large  border-gray">
<a class="yun-link" href="http://www.xiguage.net/m/30589.html" title="奇葩追梦">
<div class="img">
<img class="lazy" data-original="http://dy.pic.wlbgt.com/uploads/allimg/201611/28269179e7f446c2.jpg" src="./西瓜哥电影网-高级搜索_files/28269179e7f446c2.jpg" alt="奇葩追梦" style="display: block;">
<span class="bgb">
<i class="bgbbg"></i>
<p class="name">HD</p>
<p class="other">剧情：影片讲述了四个青年男女在找工作的过程中，因为一连串误会而引发的爆笑故事。大黑和二楞到城里找工作，遇上了正在寻找临时演员..</p>
</span>
</div>
<div class="text">
<p class="name">奇葩追梦</p><p class="actor">主演：黄圣依 王婉中 常远 艾伦</p>
</div>
</a>
</li>
<li class="yun yun-large  border-gray">
<a class="yun-link" href="http://www.xiguage.net/m/30565.html" title="老九门番外之虎骨梅花">
<div class="img">
<img class="lazy" data-original="http://dy.pic.wlbgt.com/uploads/allimg/201611/29beb5dcaa63f84f.jpg" src="./西瓜哥电影网-高级搜索_files/29beb5dcaa63f84f.jpg" alt="老九门番外之虎骨梅花" style="display: block;">
<span class="bgb">
<i class="bgbbg"></i>
<p class="name">HD</p>
<p class="other">剧情：按九门解家家规，解家人六十岁生辰那日便是金盆洗手之时。解家老仆庖丁叔六十大寿当天死于非命且死状惨烈。解九爷与受佛爷所托..</p>
</span>
</div>
<div class="text">
<p class="name">老九门番外之虎骨梅花</p><p class="actor">主演：张铭恩 杨紫茳</p>
</div>
</a>
</li>
<li class="yun yun-large  border-gray">
<a class="yun-link" href="http://www.xiguage.net/m/30154.html" title="惊天大逆转">
<div class="img">
<img class="lazy" data-original="http://dy.pic.wlbgt.com/uploads/allimg/160905/b98e677d402706d2.jpg" src="./西瓜哥电影网-高级搜索_files/b98e677d402706d2.jpg" alt="惊天大逆转" style="display: block;">
<span class="bgb">
<i class="bgbbg"></i>
<p class="name">HD</p>
<p class="other">剧情：海归华人郭志华（钟汉良 饰）在韩国结识了正在首尔进行学术交流的心理医生杨曦（郎月婷 饰），便委托她为烧伤毁容的哥哥郭志..</p>
</span>
</div>
<div class="text">
<p class="name">惊天大逆转</p><p class="actor">主演：钟汉良 李政宰 郎月婷 李彩英</p>
</div>
</a>
</li>
<li class="yun yun-large  border-gray">
<a class="yun-link" href="http://www.xiguage.net/m/30514.html" title="黑处有什么">
<div class="img">
<img class="lazy" data-original="http://dy.pic.wlbgt.com/uploads/allimg/201610/e5ccb3fc219aa063.jpg" src="./西瓜哥电影网-高级搜索_files/e5ccb3fc219aa063.jpg" alt="黑处有什么" style="display: block;">
<span class="bgb">
<i class="bgbbg"></i>
<p class="name">HD修复</p>
<p class="other">剧情：1991年春夏之交，中原飞机厂家属区内，一起强奸杀人案打破了往日的平静……初二中等生曲靖和老留级生张雪的爸爸同为负责这..</p>
</span>
</div>
<div class="text">
<p class="name">黑处有什么</p><p class="actor">主演：苏晓彤 郭笑 陆琦蔚 刘丹</p>
</div>
</a>
</li>
<li class="yun yun-large  border-gray">
<a class="yun-link" href="http://www.xiguage.net/m/30394.html" title="爵迹">
<div class="img">
<img class="lazy" data-original="http://dy.pic.wlbgt.com/uploads/allimg/201610/ce09397d3ca46240.jpg" src="./西瓜哥电影网-高级搜索_files/ce09397d3ca46240.jpg" alt="爵迹" style="display: block;">
<span class="bgb">
<i class="bgbbg"></i>
<p class="name">HD</p>
<p class="other">剧情：传说中的神话奥汀大陆分为水、风、火、地四个国家，每个国家都有精通魂术的人，其中最厉害的七个被称为王爵。水国普通男孩麒零..</p>
</span>
</div>
<div class="text">
<p class="name">爵迹</p><p class="actor">主演：范冰冰 吴亦凡 陈学冬 陈伟霆 郭采洁</p>
</div>
</a>
</li>
<li class="yun yun-large  border-gray">
<a class="yun-link" href="http://www.xiguage.net/m/29446.html" title="睡在我上铺的兄弟(电影)">
<div class="img">
<img class="lazy" data-original="http://dy.pic.wlbgt.com/uploads/allimg/160527/3978dd63a4c10ecd.jpg" src="./西瓜哥电影网-高级搜索_files/3978dd63a4c10ecd.jpg" alt="睡在我上铺的兄弟(电影)" style="display: block;">
<span class="bgb">
<i class="bgbbg"></i>
<p class="name">HD</p>
<p class="other">剧情：沪都大学330宿舍的四位性格迥异的兄弟，在毕业之际各自遭遇了情感、学业、工作上的挫折。聪明贪玩、厚脸皮的大男孩林向宇（..</p>
</span>
</div>
<div class="text">
<p class="name">睡在我上铺的兄弟(电影)</p><p class="actor">主演：陈晓 秦岚 杜天皓 刘芮麟 李现</p>
</div>
</a>
</li>
<li class="yun yun-large  border-gray">
<a class="yun-link" href="http://www.xiguage.net/m/30557.html" title="我们的十年">
<div class="img">
<img class="lazy" data-original="http://dy.pic.wlbgt.com/uploads/allimg/201611/1514e01f632848c2.jpg" src="./西瓜哥电影网-高级搜索_files/1514e01f632848c2.jpg" alt="我们的十年" style="display: block;">
<span class="bgb">
<i class="bgbbg"></i>
<p class="name">HD</p>
<p class="other">剧情：该片讲述了一群八零后的青 年男女大学毕业后迈出自己人生的第 一步，做出了自己人生的第一选择， 从而在社会上打拼分后，面..</p>
</span>
</div>
<div class="text">
<p class="name">我们的十年</p><p class="actor">主演：赵丽颖 乔任梁 吴映洁 范逸臣 班嘉佳</p>
</div>
</a>
</li>
<li class="yun yun-large  border-gray">
<a class="yun-link" href="http://www.xiguage.net/m/30467.html" title="大话西游3">
<div class="img">
<img class="lazy" data-original="http://dy.pic.wlbgt.com/uploads/allimg/201610/4dec71fff1fcd3ff.jpg" src="./西瓜哥电影网-高级搜索_files/4dec71fff1fcd3ff.jpg" alt="大话西游3" style="display: block;">
<span class="bgb">
<i class="bgbbg"></i>
<p class="name">BD</p>
<p class="other">剧情：在《大话西游之大圣娶亲》中死在牛魔王叉下的紫霞仙子（唐嫣 饰），将会通过月光宝盒预先看到这一下场，为了避免惨剧发生，她..</p>
</span>
</div>
<div class="text">
<p class="name">大话西游3</p><p class="actor">主演：韩庚 唐嫣 吴京 莫文蔚 张超 张瑶 王一博 钟欣潼 谢楠 何炅 胡静 黄征 刘镇伟 曹承衍 周艺轩 元奎</p>
</div>
</a>
</li>
<li class="yun yun-large  border-gray">
<a class="yun-link" href="http://www.xiguage.net/m/30478.html" title="老九门番外之二月花开">
<div class="img">
<img class="lazy" data-original="http://dy.pic.wlbgt.com/uploads/allimg/201610/3ce4382117c4b25b.jpg" src="./西瓜哥电影网-高级搜索_files/3ce4382117c4b25b.jpg" alt="老九门番外之二月花开" style="display: block;">
<span class="bgb">
<i class="bgbbg"></i>
<p class="name">高清</p>
<p class="other">剧情：抗日战争时期，为了将隐藏在古墓中的文物转移出来，二月红将戏曲舞台搭在由日本兵守卫的古墓正上方。利用戏曲折子关系，在众目..</p>
</span>
</div>
<div class="text">
<p class="name">老九门番外之二月花开</p><p class="actor">主演：张艺兴</p>
</div>
</a>
</li>
<li class="yun yun-large  border-gray">
<a class="yun-link" href="http://www.xiguage.net/m/30430.html" title="王牌逗王牌">
<div class="img">
<img class="lazy" data-original="http://dy.pic.wlbgt.com/uploads/allimg/161009/ed50087c76bca051.png" src="./西瓜哥电影网-高级搜索_files/ed50087c76bca051.png" alt="王牌逗王牌" style="display: block;">
<span class="bgb">
<i class="bgbbg"></i>
<p class="name">HD修复</p>
<p class="other">剧情：囧探宝爷（刘德华 饰）与侠盗洛家豪（黄晓明 饰）强强联手，与世界恐怖组织抢夺“上帝种子”，所谓“上帝种子”是一种神奇的..</p>
</span>
</div>
<div class="text">
<p class="name">王牌逗王牌</p><p class="actor">主演：刘德华 黄晓明 王祖蓝 胡然 欧阳娜娜</p>
</div>
</a>
</li>
<li class="yun yun-large  border-gray">
<a class="yun-link" href="http://www.xiguage.net/m/30546.html" title="天下无贼">
<div class="img">
<img class="lazy" data-original="http://dy.pic.wlbgt.com/uploads/allimg/201611/97b0a5e1308b020f.jpg" src="./西瓜哥电影网-高级搜索_files/97b0a5e1308b020f.jpg" alt="天下无贼" style="display: block;">
<span class="bgb">
<i class="bgbbg"></i>
<p class="name">HD</p>
<p class="other">剧情：王薄（刘德华 饰）和王丽（刘若英 饰）本是一对最佳贼拍档，但因怀了王薄的孩子，王丽决定收手赎罪，两人产生分歧。在火车站..</p>
</span>
</div>
<div class="text">
<p class="name">天下无贼</p><p class="actor">主演：刘德华 刘若英 葛优 王宝强 李冰冰 张涵予</p>
</div>
</a>
</li>
<li class="yun yun-large  border-gray">
<a class="yun-link" href="http://www.xiguage.net/m/30527.html" title="功夫厨神">
<div class="img">
<img class="lazy" data-original="http://dy.pic.wlbgt.com/uploads/allimg/201610/5070f6b1ba7f1da7.jpg" src="./西瓜哥电影网-高级搜索_files/5070f6b1ba7f1da7.jpg" alt="功夫厨神" style="display: block;">
<span class="bgb">
<i class="bgbbg"></i>
<p class="name">HD</p>
<p class="other">剧情：寿宴上，村长黄秉义（洪金宝 饰）展示了精湛的厨艺，龙头刀法格外出众。帮厨阿良（洪天明 饰）受黄继祖（樊少皇 饰）指示，..</p>
</span>
</div>
<div class="text">
<p class="name">功夫厨神</p><p class="actor">主演：洪金宝 吴建豪 应采儿 樊少皇 加护亚依 洪天明</p>
</div>
</a>
</li>
<li class="yun yun-large  border-gray">
<a class="yun-link" href="http://www.xiguage.net/m/30522.html" title="七月与安生">
<div class="img">
<img class="lazy" data-original="http://dy.pic.wlbgt.com/uploads/allimg/201610/fe0b8aa6d4ecf143.jpg" src="./西瓜哥电影网-高级搜索_files/fe0b8aa6d4ecf143.jpg" alt="七月与安生" style="display: block;">
<span class="bgb">
<i class="bgbbg"></i>
<p class="name">HD</p>
<p class="other">剧情：一本名为《七月与安生》的网上小说火红面世，令在上海当上班族的李安生生活骤起波澜。她和好友林七月与初恋情人苏家明的少年往..</p>
</span>
</div>
<div class="text">
<p class="name">七月与安生</p><p class="actor">主演：周冬雨 马思纯 李程彬</p>
</div>
</a>
</li>
<li class="yun yun-large  border-gray">
<a class="yun-link" href="http://www.xiguage.net/m/30517.html" title="反贪风暴2">
<div class="img">
<img class="lazy" data-original="http://dy.pic.wlbgt.com/uploads/allimg/201610/a3ef27fc9a3cff2d.jpg" src="./西瓜哥电影网-高级搜索_files/a3ef27fc9a3cff2d.jpg" alt="反贪风暴2" style="display: block;">
<span class="bgb">
<i class="bgbbg"></i>
<p class="name">BD</p>
<p class="other">剧情：马会的球赛博彩操盘手被独行杀手（周渝民 饰）杀害，目击证人竟是廉署首席调查主任陆志廉（古天乐 饰），因为他正与另一调查..</p>
</span>
</div>
<div class="text">
<p class="name">反贪风暴2</p><p class="actor">主演：古天乐 张智霖 周渝民 蔡少芬 林保怡 卢海鹏 石修 曾志伟 陈静 曾国祥 盛君 张松枝 林家栋 姜皓文 蔡洁 欧锦棠</p>
</div>
</a>
</li>
<li class="yun yun-large  border-gray">
<a class="yun-link" href="http://www.xiguage.net/m/30518.html" title="触碰">
<div class="img">
<img class="lazy" data-original="http://dy.pic.wlbgt.com/uploads/allimg/201610/53b05d621da62b88.jpg" src="./西瓜哥电影网-高级搜索_files/53b05d621da62b88.jpg" alt="触碰" style="display: block;">
<span class="bgb">
<i class="bgbbg"></i>
<p class="name">HD</p>
<p class="other">剧情：路梓晴在21岁生日当天突然发病。她患有红斑性狼疮，俗称“蝴蝶斑”。住院期间没有想到男友也离开了她。生病的路梓晴受到了身..</p>
</span>
</div>
<div class="text">
<p class="name">触碰</p><p class="actor">主演：时卉 李佳儒 胡雅娟</p>
</div>
</a>
</li>
<li class="yun yun-large  border-gray">
<a class="yun-link" href="http://www.xiguage.net/m/30520.html" title="杀了我">
<div class="img">
<img class="lazy" data-original="http://dy.pic.wlbgt.com/uploads/allimg/201610/9139686593ace055.png" src="./西瓜哥电影网-高级搜索_files/9139686593ace055.png" alt="杀了我" style="display: block;">
<span class="bgb">
<i class="bgbbg"></i>
<p class="name">BD</p>
<p class="other">剧情：该片讲述了一位默默无闻的落魄作家司徒乾，他偶然间识破了杀手组织的“暗文”，找到了隐藏在人群中的杀手，他决定：出重金暗杀..</p>
</span>
</div>
<div class="text">
<p class="name">杀了我</p><p class="actor">主演：林子闳 孟耿如 张诗盈 夏靖庭 唐振刚</p>
</div>
</a>
</li>
<li class="yun yun-large  border-gray">
<a class="yun-link" href="http://www.xiguage.net/m/30487.html" title="我的战争">
<div class="img">
<img class="lazy" data-original="http://dy.pic.wlbgt.com/uploads/allimg/201610/d47d65fe82f62be7.png" src="./西瓜哥电影网-高级搜索_files/d47d65fe82f62be7.png" alt="我的战争" style="display: block;">
<span class="bgb">
<i class="bgbbg"></i>
<p class="name">BD</p>
<p class="other">剧情：抗美援朝4大战役时期，中国有这样一支英武勇猛的志愿军，他们为了保卫国家毅然决然远赴他乡，在并肩作战的日子里一起经历生死..</p>
</span>
</div>
<div class="text">
<p class="name">我的战争</p><p class="actor">主演：刘烨 王珞丹 杨祐宁 叶青</p>
</div>
</a>
</li>
<li class="yun yun-large  border-gray">
<a class="yun-link" href="http://www.xiguage.net/m/30504.html" title="血战铜锣湾2">
<div class="img">
<img class="lazy" data-original="http://dy.pic.wlbgt.com/uploads/allimg/201610/cd218c8c83351655.jpg" src="./西瓜哥电影网-高级搜索_files/cd218c8c83351655.jpg" alt="血战铜锣湾2" style="display: block;">
<span class="bgb">
<i class="bgbbg"></i>
<p class="name">BD高清</p>
<p class="other">剧情：故事讲述了东北三兄弟，受到古惑仔片影响，一心想要匡扶正义，加入江湖帮派。却误打误撞陷入了东星和洪兴之间的帮派之争，最终..</p>
</span>
</div>
<div class="text">
<p class="name">血战铜锣湾2</p><p class="actor">主演：许君聪 利哥 孙磊 金刚 朱永棠</p>
</div>
</a>
</li>
<li class="yun yun-large  border-gray">
<a class="yun-link" href="http://www.xiguage.net/m/30507.html" title="情敌蜜月">
<div class="img">
<img class="lazy" data-original="http://dy.pic.wlbgt.com/uploads/allimg/201610/39f840d337b95d25.jpg" src="./西瓜哥电影网-高级搜索_files/39f840d337b95d25.jpg" alt="情敌蜜月" style="display: block;">
<span class="bgb">
<i class="bgbbg"></i>
<p class="name">HD</p>
<p class="other">剧情：夏小雨（张雨绮 饰）是婚恋网站的高级配对顾问，一直怀着对婚姻的憧憬，她和男友许默（霍建华 饰）的婚姻匹配指数高达到98..</p>
</span>
</div>
<div class="text">
<p class="name">情敌蜜月</p><p class="actor">主演：张雨绮 权相宇 霍建华</p>
</div>
</a>
</li>
<li class="yun yun-large  border-gray">
<a class="yun-link" href="http://www.xiguage.net/m/28760.html" title="财神到">
<div class="img">
<img class="lazy" data-original="http://dy.pic.wlbgt.com/uploads/allimg/160405/eaf939331e5abae5.gif" src="./西瓜哥电影网-高级搜索_files/eaf939331e5abae5.gif" alt="财神到" style="display: block;">
<span class="bgb">
<i class="bgbbg"></i>
<p class="name">HD</p>
<p class="other">剧情：财神总管训导众财神，凡间近年多灾多难，正所谓“人间有难，天上有爱”，财神们除了送钱，还要把爱心散播凡间。因今年是非常时..</p>
</span>
</div>
<div class="text">
<p class="name">财神到</p><p class="actor">主演：谭咏麟 张震 杨千嬅 张雨绮 陶虹 巩新亮 林子聪 张榕容</p>
</div>
</a>
</li>
<li class="yun yun-large  border-gray">
<a class="yun-link" href="http://www.xiguage.net/m/30495.html" title="战墙">
<div class="img">
<img class="lazy" data-original="http://dy.pic.wlbgt.com/uploads/allimg/201610/f09bf24c3309f418.png" src="./西瓜哥电影网-高级搜索_files/f09bf24c3309f418.png" alt="战墙" style="display: block;">
<span class="bgb">
<i class="bgbbg"></i>
<p class="name">HD</p>
<p class="other">剧情：在电影《战墙》中，乔任梁饰演的"阿辉"是一个涂鸦高手，时尚另类却内心封闭，他与柯彤饰演的女友"阿静"一起组成的HJ涂鸦..</p>
</span>
</div>
<div class="text">
<p class="name">战墙</p><p class="actor">主演：乔任梁 叶子淇 赵英俊</p>
</div>
</a>
</li>
<li class="yun yun-large  border-gray">
<a class="yun-link" href="http://www.xiguage.net/m/30489.html" title="花样厨神">
<div class="img">
<img class="lazy" data-original="http://dy.pic.wlbgt.com/uploads/allimg/201610/919755d31468a891.jpg" src="./西瓜哥电影网-高级搜索_files/919755d31468a891.jpg" alt="花样厨神" style="display: block;">
<span class="bgb">
<i class="bgbbg"></i>
<p class="name">BD</p>
<p class="other">剧情：知名的电视制作人怡珊（杨紫琼 饰），继挖掘了国际厨神翰伟（黄经汉 饰）后，展开下一届新厨神的寻找工作，为此特别举办 “..</p>
</span>
</div>
<div class="text">
<p class="name">花样厨神</p><p class="actor">主演：刘宪华 杨紫琼 黄经汉 张铮 吴宇卫</p>
</div>
</a>
</li>
<li class="yun yun-large  border-gray">
<a class="yun-link" href="http://www.xiguage.net/m/30486.html" title="情况不妙">
<div class="img">
<img class="lazy" data-original="http://dy.pic.wlbgt.com/uploads/allimg/201610/3cad50bbecb89268.png" src="./西瓜哥电影网-高级搜索_files/3cad50bbecb89268.png" alt="情况不妙" style="display: block;">
<span class="bgb">
<i class="bgbbg"></i>
<p class="name">BD</p>
<p class="other">剧情：摩的司机牛大伟（李菁 饰）与怀孕的婷婷（马丽 饰）进城寻找婷婷的老公阿狗（林雪 饰），却阴差阳错卷进周阳（曹云金 饰）..</p>
</span>
</div>
<div class="text">
<p class="name">情况不妙</p><p class="actor">主演：李菁 曹云金 马丽 周韦彤 林雪</p>
</div>
</a>
</li>
<li class="yun yun-large  border-gray">
<a class="yun-link" href="http://www.xiguage.net/m/30479.html" title="德州纸牌屋">
<div class="img">
<img class="lazy" data-original="http://dy.pic.wlbgt.com/uploads/allimg/201610/3608e5bd1d02eb7c.jpg" src="./西瓜哥电影网-高级搜索_files/3608e5bd1d02eb7c.jpg" alt="德州纸牌屋" style="display: block;">
<span class="bgb">
<i class="bgbbg"></i>
<p class="name">高清</p>
<p class="other">剧情：《德州纸牌屋》是一部由老三影业、天映传媒、大唐星禾出品，奇树有鱼独家发行的影片，影片讲述了男主吕大秀（吕宇饰演）是一个..</p>
</span>
</div>
<div class="text">
<p class="name">德州纸牌屋</p><p class="actor">主演：吕宇 郑汶栩 陈展翔 林毅 郑照君 王墨尘 徐仕兴 虾仔</p>
</div>
</a>
</li>
<li class="yun yun-large  border-gray">
<a class="yun-link" href="http://www.xiguage.net/m/30419.html" title="无人区">
<div class="img">
<img class="lazy" data-original="http://dy.pic.wlbgt.com/uploads/allimg/161008/f4ff78366c76aeb7.jpg" src="./西瓜哥电影网-高级搜索_files/noimage.gif" alt="无人区">
<span class="bgb">
<i class="bgbbg"></i>
<p class="name">HD</p>
<p class="other">剧情：男主角开车去西部，在路上不断遇到形形色色的人，从而引发许多故事故事背后，人的动物属性和社会属性相互斗争等深层主题，都会..</p>
</span>
</div>
<div class="text">
<p class="name">无人区</p><p class="actor">主演：黄渤 王双宝 巴多</p>
</div>
</a>
</li>
<li class="yun yun-large  border-gray">
<a class="yun-link" href="http://www.xiguage.net/m/29051.html" title="十二公民">
<div class="img">
<img class="lazy" data-original="http://dy.pic.wlbgt.com/uploads/allimg/160422/432df2d295711f82.gif" src="./西瓜哥电影网-高级搜索_files/432df2d295711f82.gif" alt="十二公民" style="display: block;">
<span class="bgb">
<i class="bgbbg"></i>
<p class="name">高清</p>
<p class="other">剧情：暑期一所政法大学内，未通过英美法课程期末考试的学生迎来补考。他们组成模拟西方法庭，分别担任法官、律师、检察官等角色，审..</p>
</span>
</div>
<div class="text">
<p class="name">十二公民</p><p class="actor">主演：何冰 雷佳</p>
</div>
</a>
</li>
<li class="yun yun-large  border-gray">
<a class="yun-link" href="http://www.xiguage.net/m/30439.html" title="盲井">
<div class="img">
<img class="lazy" data-original="http://dy.pic.wlbgt.com/uploads/allimg/161011/86a96764b5ba6b2b.jpg" src="./西瓜哥电影网-高级搜索_files/86a96764b5ba6b2b.jpg" alt="盲井" style="display: block;">
<span class="bgb">
<i class="bgbbg"></i>
<p class="name">HD</p>
<p class="other">剧情：影片根据刘庆邦的小说《神木》改编，该小说曾荣获2002年老舍文学奖。影片讲述了一个发生在矿区的故事，两个生活在矿区的闲..</p>
</span>
</div>
<div class="text">
<p class="name">盲井</p><p class="actor">主演：王双宝 王宝强 李易祥 安静 赵军</p>
</div>
</a>
</li>
<li class="yun yun-large  border-gray">
<a class="yun-link" href="http://www.xiguage.net/m/30418.html" title="猎灵师之镇魂石（下）">
<div class="img">
<img class="lazy" data-original="http://dy.pic.wlbgt.com/uploads/allimg/201610/0ff4b70b89b39cee.jpg" src="./西瓜哥电影网-高级搜索_files/noimage.gif" alt="猎灵师之镇魂石（下）">
<span class="bgb">
<i class="bgbbg"></i>
<p class="name">高清</p>
<p class="other">剧情：苏扬在扎氏兄弟的帮助下恢复元气，并得知1414房间动土时曾经挖出一具被镇压在镇魂石下的百棺木，也从开墓人秦大鹏口中得知..</p>
</span>
</div>
<div class="text">
<p class="name">猎灵师之镇魂石（下）</p><p class="actor">主演：文卓 时诗 楼佳悦 王苗</p>
</div>
</a>
</li>
<li class="yun yun-large  border-gray">
<a class="yun-link" href="http://www.xiguage.net/m/30416.html" title="出马仙之驱邪特工队">
<div class="img">
<img class="lazy" data-original="http://dy.pic.wlbgt.com/uploads/allimg/201610/5bf3215dceae9799.jpg" src="./西瓜哥电影网-高级搜索_files/5bf3215dceae9799.jpg" alt="出马仙之驱邪特工队" style="display: block;">
<span class="bgb">
<i class="bgbbg"></i>
<p class="name">BD</p>
<p class="other">剧情：古风求助以出马弟子江涛为首的驱邪特工队，因为古风觉得女友周扬有些行为反常、精神恍惚，疑似撞邪。江涛表示这单生意不好解决..</p>
</span>
</div>
<div class="text">
<p class="name">出马仙之驱邪特工队</p><p class="actor">主演：谷丰 姜锡涛 崔晓静周扬</p>
</div>
</a>
</li>
<li class="yun yun-large  border-gray">
<a class="yun-link" href="http://www.xiguage.net/m/30415.html" title="宫锁沉香">
<div class="img">
<img class="lazy" data-original="http://dy.pic.wlbgt.com/uploads/allimg/161008/5f715547e6f71e55.jpg" src="./西瓜哥电影网-高级搜索_files/5f715547e6f71e55.jpg" alt="宫锁沉香" style="display: block;">
<span class="bgb">
<i class="bgbbg"></i>
<p class="name">HD</p>
<p class="other">剧情：满清康熙鼎盛之际，自十三岁入宫当宫女的兆佳·沉香（周冬雨 饰）与同在乾西四所当差的好朋友琉璃（赵丽颖 饰）度过七年春秋..</p>
</span>
</div>
<div class="text">
<p class="name">宫锁沉香</p><p class="actor">主演：周冬雨 陈晓 朱梓骁 赵丽颖 包贝尔 邬君梅</p>
</div>
</a>
</li>
<li class="yun yun-large  border-gray">
<a class="yun-link" href="http://www.xiguage.net/m/30411.html" title="爱在星空下">
<div class="img">
<img class="lazy" data-original="http://dy.pic.wlbgt.com/uploads/allimg/201610/f6c0c328856b08ce.jpg" src="./西瓜哥电影网-高级搜索_files/f6c0c328856b08ce.jpg" alt="爱在星空下" style="display: block;">
<span class="bgb">
<i class="bgbbg"></i>
<p class="name">高清</p>
<p class="other">剧情：子妍（江若琳饰）在车站打电话让室友阮软（叶新晨饰）来接，中途电话没电关机，阮软因事未能前往。子妍偶遇摩卡（陆昱霖饰）弹..</p>
</span>
</div>
<div class="text">
<p class="name">爱在星空下</p><p class="actor">主演：江若琳 陆昱霖 陈泽宇 叶新晨 向海岚 马德钟 钟凯 施羽 吴谨西</p>
</div>
</a>
</li>
</ul>
</div>
</div>
</section>
<div class="page clearfix">

<%
int start = pageCur<8?1:pageCur+8<pageNum?pageCur-4:pageNum-8;
if(start!=1)
{
	%>
	<a href='search.jsp?page=1&id=<%=id %>&typeClass=<%=typeClass %>&order=<%=order %>'>1..</a>
	<%
}
if(pageCur!=1)
{
	%>
	<a href='search.jsp?page=i&id=<%=id %>&typeClass=<%=typeClass %>&order=<%=order %>'>&lt;</a>
	<%
}
for(int i=start;i<=((start+8)<pageNum?(start+8):pageNum);i++)
{
	if(i==pageCur)out.println("<em>"+i+"</em>");
	else 
	{
	%>
	<a href='search.jsp?page=i&id=<%=id %>&typeClass=<%=typeClass %>&order=<%=order %>'><%=i %></a>
	<%
	}
}
if(pageCur!=pageNum)
{
	%>
	<a href='search.jsp?page=i&id=<%=id %>&typeClass=<%=typeClass %>&order=<%=order %>'>&gt;</a>
	<%
}
if(start+8<pageNum)
{
	%>
	<a href='search.jsp?page=<%=pageNum %>&id=<%=id %>&typeClass=<%=typeClass %>&order=<%=order %>'>..<%=pageNum %></a>
	<%
}
%>

</div>
</div>
</div>
<!----------------------------- content end --------------------------------->
<!----------------------------- footer start -------------------------------->
<%@include file="./foot.html" %>
<!------------------------------ footer end --------------------------------->
<script>
(function(){
    var bp = document.createElement('script');
    bp.src = '//push.zhanzhang.baidu.com/push.js';
    var s = document.getElementsByTagName("script")[0];
    s.parentNode.insertBefore(bp, s);
})();
</script>
<!--  
<div id="ft_right_bottom" style="position: fixed; bottom: 0px; z-index: 2147483647; overflow: hidden; right: 0px;"><div style="margin: 0px; padding: 0px; width: 300px; height: 250px;"><div style="position: absolute; z-index: 2; width: 26px; height: 12px; top: 237px; background: url(&quot;http://img.feitian001.com//html/click/adtag.png&quot;) no-repeat;"></div><div style="position: absolute; z-index: 3;"><a href="http://c.65mhxy.com/s/1/558/0.html?uid=211885&amp;ext=MTA7RyM9JU1PSkciMWFteFR1XSN7e3tVcSBPcF4iIXZ3TnF9T3NWeyEgd1BvelFwXXkienhYbHhVbVYjInp4VA%3D%3D" target="_blank" style="width: 300px; height: 250px; display: block; opacity: 0.1; background: url(&quot;http://img.feitian001.com//img/r/dot.gif&quot;);"><img src="./西瓜哥电影网-高级搜索_files/dot.gif" border="0" width="300" height="250" style="background-color: transparent;"></a></div><object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,24,0" width="300" height="250" align="middle"><param name="movie" value="http://c.65mhxy.com/b/1/558/gdd9fid.swf?uid=211885"><param name="quality" value="high"><param name="wmode" value="transparent"><embed pluginspage="http://www.macromedia.com/go/getflashplayer" width="300" height="250" align="middle" type="application/x-shockwave-flash" src="http://c.65mhxy.com/b/1/558/gdd9fid.swf?uid=211885" quality="high" wmode="transparent"></object></div><div id="ft_rich_close" kc="false" style="z-index: 1999643; top: 3px; left: 264px; width: 25px; height: 13px; position: absolute; display: block;"><img src="./西瓜哥电影网-高级搜索_files/close.gif" ck="ft_rich_close_hide" style="width: 25px; height: 13px; cursor: pointer;"></div><div style="z-index: 1999643; top: 234px; left: 240px; width: 60px; height: 16px; position: absolute;"><a href="http://www.feitian001.com/" target="_blank"><img src="./西瓜哥电影网-高级搜索_files/logo.gif" style="width: 60px; height: 16px; border-style: none;">
</a></div>
</div>
-->
</body>
</html>