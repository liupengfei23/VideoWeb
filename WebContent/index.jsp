<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="./error.jsp"%>
<%@page import="java.sql.ResultSet" %>
<%@page import="service.DBService" %>
<%@page import="bean.VideoInfo" %>
<%@page import="java.io.File" %>
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
<!--<div class="fullSlide">
<div class="bd">
<ul style="position: relative; width: 1349px; height: 410px;">

<%
String sql = "select * from videoInfo;";
ResultSet rs = DBService.query(sql);
while(rs.next())
{
	%>
	<li
		style="position: absolute; width: 1349px; left: 0px; top: 0px; background-image: url(&quot;http://dy.pic.wlbgt.com/uploads/s/201610/2ab1886ffecbb81c.jpg&quot;); display: list-item;">
	<a href="./showInfo.jsp?id=<%=rs.getInt("id") %>">
	<div class="fstext">
	<p class="wrap"><i class="focus_btn"></i><span class="fsname"><%=rs.getString("name") %></span><span
		class="fsdes">剧情：<%=rs.getString("summary").length()>60?rs.getString("summary").substring(0,60)+"..":rs.getString("summary") %></span>
	</p>
	</div>
	</a></li>
	<%
}

%>
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
	
--><!------------------------------ fullSlide end --------------------------------->
<!------------------------------ content start --------------------------------->
<div id="content" class="wrap"><!------------------------------ ui-box1 start --------------------------------->
<div class="ui-box border-gray clearfix">
<div class="playfrom jsfrom tab1 clearfix"><span class="laiyuan">鹏飞哥有话说&nbsp;<i
	class="arrow"></i></span></div>
<div id="box-jqjieshao">
<%
sql = "select notice from config;";
rs = DBService.query(sql);
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
sql = "select * from videoInfo order by click desc limit 6;";
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
		vi.setTypeClass(DBService.queryObject("select name from typeclass where id = "+rs.getInt("typeClass")+";").toString().trim());
		vi.setArea(DBService.queryObject("select name from concreteClass where id = "+rs.getInt("area")+";").toString());
		String [] s_property = new String[5];
		String result_property = "";
s_property = rs.getString("property").split(" ",5);
for(int i=0;i<s_property.length;i++)
{
	String tmp = DBService.queryObject("select name from concreteClass where id = "+Integer.parseInt(s_property[i])+";").toString();
	if(i==0)result_property += (tmp!=null?tmp:"");
	else
		result_property += (tmp!=null?" "+tmp:"");
}
vi.setProperty(result_property.trim());
if(rs.getString("image")!=null)
{

	File dir=new File(this.getServletContext().getInitParameter("ImagePath")+rs.getString("image").trim());
	if(dir.isFile())
	{
		vi.setImage("Images/"+rs.getString("image").trim());
	}
	else if(rs.getString("image").trim().startsWith("http://")||rs.getString("image").trim().startsWith("www."))
	{
		vi.setImage(rs.getString("image").trim());
		//vi.setVideo(dir.toString());
	}
	else
	{
		throw new Exception();
	}
}
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
	//response.sendRedirect(request.getContextPath()+"/error.jsp?err="+request.getRequestURL());
	//return;
}
}
%>

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
	//response.sendRedirect(request.getContextPath()+"/error.jsp?err="+request.getRequestURL());
	//return;
}

}
%>
</ul>

<a class="more" href="./search.jsp?typeClass=<%=(DBService.queryObject("select id from typeclass where name='电影';").toString()) %>>" target="_blank"
	title="更多">更多</a></div>
<div class="module-content">
<ul class="yun-list clearfix" id="yun-list">

<%
sql = "select * from videoInfo where typeClass=(select id from typeclass where name='电影' ) and id not in (select t.id from (select id from videoInfo order by click desc limit 6)as t)order by click desc limit 6;";
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
vi.setArea(DBService.queryObject("select name from concreteClass where id = "+rs.getInt("area")+";").toString());
vi.setTypeClass(DBService.queryObject("select name from typeclass where id = "+rs.getInt("typeClass")+";").toString().trim());

String [] s_property = new String[5];
String result_property = "";
s_property = rs.getString("property").split(" ",5);
for(int i=0;i<s_property.length;i++)
{
	String tmp = DBService.queryObject("select name from concreteClass where id = "+Integer.parseInt(s_property[i])+";").toString();
	if(i==0)result_property += (tmp!=null?tmp:"");
	else
		result_property += (tmp!=null?" "+tmp:"");
}
vi.setProperty(result_property.trim());
if(rs.getString("image")!=null)
{

	File dir=new File(this.getServletContext().getInitParameter("ImagePath")+rs.getString("image").trim());
	if(dir.isFile())
	{
		vi.setImage("Images/"+rs.getString("image").trim());
	}
	else if(rs.getString("image").trim().startsWith("http://")||rs.getString("image").trim().startsWith("www."))
	{
		vi.setImage(rs.getString("image").trim());
		//vi.setVideo(dir.toString());
	}
	else
	{
		throw new Exception();
	}
}
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
	//response.sendRedirect(request.getContextPath()+"/error.jsp?err="+request.getRequestURL());
	//return;
}
}
%>


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
sql = "select * from concreteclass where pid!=id and pid=(select id  from concreteclass where name='地区') ;";
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
	//response.sendRedirect(request.getContextPath()+"/error.jsp?err="+request.getRequestURL());
	//return;
}

}
%>
</ul>

<a class="more" href="./search.jsp?typeClass=<%=(DBService.queryObject("select id from typeclass where name='电视';").toString()) %>" target="_blank"
	title="更多">更多</a></div>
<div class="module-content">
<ul class="yun-list clearfix" id="yun-list">

<%
sql = "select * from videoInfo where typeClass=(select id from typeclass where name='电视')and id not in(select t.id from (select id from videoInfo order by click desc limit 6)as t) order by click desc limit 6;";
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
vi.setArea(DBService.queryObject("select name from concreteClass where id = "+rs.getInt("area")+";").toString());
vi.setTypeClass(DBService.queryObject("select name from typeclass where id = "+rs.getInt("typeClass")+";").toString().trim());

String [] s_property = new String[5];
String result_property = "";
s_property = rs.getString("property").split(" ",5);
for(int i=0;i<s_property.length;i++)
{
	String tmp = DBService.queryObject("select name from concreteClass where id = "+Integer.parseInt(s_property[i])+";").toString();
	if(i==0)result_property += (tmp!=null?tmp:"");
	else
		result_property += (tmp!=null?" "+tmp:"");
}
vi.setProperty(result_property.trim());
if(rs.getString("image")!=null)
{

	File dir=new File(this.getServletContext().getInitParameter("ImagePath")+rs.getString("image").trim());
	if(dir.isFile())
	{
		vi.setImage("Images/"+rs.getString("image").trim());
	}
	else if(rs.getString("image").trim().startsWith("http://")||rs.getString("image").trim().startsWith("www."))
	{
		vi.setImage(rs.getString("image").trim());
		//vi.setVideo(dir.toString());
	}
	else
	{
		throw new Exception();
	}
}
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
	//response.sendRedirect(request.getContextPath()+"/error.jsp?err="+request.getRequestURL());
	//return;
}
}
%>

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

	<li><a href="http://www.ttkyy.net/" target="_blank">天天看影院</a></li>

</ul>
</section> 
<!---------------------------- -- ui-box5 end -------- ------------------------->
</div>
<!------------------------------- content end ---------------------------------->
<!------------------------------- footer start --------------------------------->
<%-- <%@include file="./foot.html" %> --> --%> 
<%@include file="./foot.html"%>
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