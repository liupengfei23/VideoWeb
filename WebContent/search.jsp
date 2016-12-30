<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="./error.jsp"%>
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
<%!int id = 0; int typeClass = 0; String searchword; String order=""; %>
<%!int pageCount=1; int pageNow=1; int pageSize = 15; int rowCount = 0;%>
<%
try{
request.setCharacterEncoding("UTF-8");
response.setContentType("text/html;charset=UTF-8");
order = (request.getParameter("order")==null?"time":request.getParameter("order"));
typeClass = Integer.parseInt((request.getParameter("typeClass")==null||request.getParameter("typeClass").equals(""))?"0":request.getParameter("typeClass"));
id = Integer.parseInt((request.getParameter("id")==null)?"0":request.getParameter("id"));
//if(request.getParameter("searchword")!=null)
//	searchword = new String(request.getParameter("searchword").getBytes("ISO-8859-1"),"utf-8");
searchword = request.getParameter("searchword");
//out.println(searchword);
//order = ((request.getParameter("order")=="" || request.getParameter("order")==null)?"time":request.getParameter("order"));
//order = ((request.getParameter("order")=="" || request.getParameter("order")==null)?"time":request.getParameter("order"));
//searchword = new String(searchword.getBytes("ISO-8859-1"),"utf-8");
//tmp_ = ((request.getParameter("typeClass")==null||request.getParameter("typeClass").equals(""))?"0":request.getParameter("typeClass"));
pageNow = ((request.getParameter("page")==null)?1:(Integer.parseInt(request.getParameter("page"))));
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
<a href='./search.jsp?typeClass=<%=DBService.queryObject("select id from typeclass where name='电视';") %>&id=<%=rs.getInt("id") %>&searchword='>
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
<a href='./search.jsp?typeClass=<%=DBService.queryObject("select id from typeclass where name='电影';") %>&id=<%=rs.getInt("id") %>&searchword='><%=rs.getString("name") %></a><em>|</em>
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
<a href='./search.jsp?id=<%=rs.getInt("id") %>&typeCLass=0' <%=(id==0||id==rs.getInt("id")?"class='on'":"") %> >全部</a>
</li>
	<%
	}
	else
	{
		%>
<li>
<a href='./search.jsp?id=<%=rs.getInt("id") %>&typeCLass=0' <%=(id==rs.getInt("id")?"class='on'":"") %>><%=rs.getString("name") %>
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
<a href='./search.jsp?id=<%=rs.getInt("id") %>&typeClass=0&searchword=' <%=(id==0||id==rs.getInt("id")?"class='on'":"") %> >全部</a>
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
<a id="time" href="./search.jsp?typeClass=<%=typeClass %>&id=<%=id %>&searchword=<%=((searchword==null)?"":searchword) %>&order=time" class="order " target="_self"><span>按时间</span></a>
<a id="hits" href="./search.jsp?typeClass=<%=typeClass %>&id=<%=id %>&searchword=<%=((searchword==null)?"":searchword) %>&order=click" class="order current" target="_self"><span>按人气</span></a>
<a id="pingfen" href="./search.jsp?typeClass=<%=typeClass %>&id=<%=id %>&searchword=<%=((searchword==null)?"":searchword) %>&order=click" class="order " target="_self"><span>按评分</span></a>
<%
}
else if(order.equals("click"))
{
%>
<a id="time" href="./search.jsp?typeClass=<%=typeClass %>&id=<%=id %>&searchword=<%=((searchword==null)?"":searchword) %>&order=time" class="order" target="_self"><span>按时间</span></a>
<a id="hits" href="./search.jsp?typeClass=<%=typeClass %>&id=<%=id %>&searchword=<%=((searchword==null)?"":searchword) %>&order=click" class="order" target="_self"><span>按人气</span></a>
<a id="pingfen" href="./search.jsp?typeClass=<%=typeClass %>&id=<%=id %>&searchword=<%=((searchword==null)?"":searchword) %>&order=click" class="order current" target="_self"><span>按评分</span></a>
<%
}
else
{
%>
<a id="time" href="./search.jsp?typeClass=<%=typeClass %>&id=<%=id %>&searchword=<%=((searchword==null)?"":searchword) %>&order=time" class="order current" target="_self"><span>按时间</span></a>
<a id="hits" href="./search.jsp?typeClass=<%=typeClass %>&id=<%=id %>&searchword=<%=((searchword==null)?"":searchword) %>&order=click" class="order " target="_self"><span>按人气</span></a>
<a id="pingfen" href="./search.jsp?typeClass=<%=typeClass %>&id=<%=id %>&searchword=<%=((searchword==null)?"":searchword) %>&order=click" class="order " target="_self"><span>按评分</span></a>
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
<%
if((searchword==null || searchword=="") && id!=0 && typeClass!=0)
{
	int pid = Integer.parseInt(DBService.queryObject("select pid from concreteClass where id="+id+";").toString());
	rowCount = Integer.parseInt(DBService.queryObject("select count(*) from videoInfo where ("+id+"="+pid+" or (area="+id +" or time="+id +" or language ="+id+"))"+" and typeClass = "+typeClass+" order by "+order+" desc;" ).toString());
	
	sql = "select * from videoInfo where ("+id+"="+pid+" or (area="+id +" or time="+id +" or language ="+id+"))"+" and typeClass = "+typeClass+" order by "+order+" desc limit "+ (pageNow-1)*pageSize + ","+pageSize+";";
	
}
else if((searchword==null || searchword=="") && id!=0)
{
	int pid = Integer.parseInt(DBService.queryObject("select pid from concreteClass where id="+id+";").toString());
	rowCount = Integer.parseInt(DBService.queryObject("select count(*) from videoInfo where "+id+"="+pid+" or area="+id +" or time= "+id +" or language ="+id +" order by "+order+" desc;" ).toString());
	sql = "select * from videoInfo where "+id+"="+pid+" or area="+id +" or time="+id +" or language ="+id +" order by "+order+" desc limit "+ (pageNow-1)*pageSize + ","+pageSize+";";
}
else if((searchword==null || searchword=="") && typeClass!=0)
{
	rowCount = Integer.parseInt(DBService.queryObject("select count(*) from videoInfo where typeClass="+typeClass+" order by "+order+" desc;" ).toString());
	sql = "select * from videoInfo where typeClass="+typeClass+" order by "+order+" desc limit "+ (pageNow-1)*pageSize + ","+pageSize+";";
}
else if(searchword!=null && searchword!="")
{
	rowCount = Integer.parseInt(DBService.queryObject("select count(*) from videoInfo where name like'%"+searchword+"%' or actors like '%"+searchword+"%' or daoyan like '%"+searchword+"%' or summary like '%"+searchword+"%' order by "+order+" desc;" ).toString());
	sql = "select * from videoInfo where name like '%"+searchword+"%' or actors like '%"+searchword+"%' or daoyan like '%"+searchword+"%' or summary like '%"+searchword+"%' order by "+order+" desc limit "+ (pageNow-1)*pageSize + ","+pageSize+";";
	
}
else
{
	rowCount = Integer.parseInt(DBService.queryObject("select count(*) from videoInfo order by "+order+" desc;" ).toString());
	sql = "select * from videoInfo order by "+order+" desc limit "+ (pageNow-1)*pageSize + ","+pageSize+";";
	
}

pageCount = (rowCount%pageSize==0)?(rowCount/pageSize):(rowCount/pageSize+1);
rs=DBService.query(sql);
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
		vi.setActors(((rs.getString("actors")==null)?"":rs.getString("actors")).trim());
%>	

	<li class="yun yun-large  border-gray">
	<a class="yun-link" href='./showInfo.jsp?id=<%=rs.getInt("id") %>' title="<%=vi.getName() %>">
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

</ul>
</div>
</div>
</section>
<div class="page clearfix">
<%="pageCount:"+pageCount+"rowCount:"+rowCount %>
<%
int start = pageNow<8?1:pageNow+8<pageCount?pageNow-4:pageCount-8;
if(start!=1)
{
	%>
	<a href='search.jsp?page=1&id=<%=id %>&typeClass=<%=typeClass %>&order=<%=order %>&searchword=<%=searchword %>'>1..</a>
	<%
}
if(pageNow!=1)
{
	%>
	<a href='search.jsp?page=<%=pageNow-1 %>&id=<%=id %>&typeClass=<%=typeClass %>&order=<%=order %>&searchword=<%=searchword %>'>&lt;</a>
	<%
}
for(int i=start;i<=((start+8)<pageCount?(start+8-1):pageCount);i++)
{
	if(i==pageNow)out.println("<em>"+i+"</em>");
	else 
	{
	%>
	<a href='search.jsp?page=<%=i %>&id=<%=id %>&typeClass=<%=typeClass %>&order=<%=order %>&searchword=<%=searchword %>'><%=i %></a>
	<%
	}
}
if(pageNow<pageCount)
{
	%>
	<a href='search.jsp?page=<%=pageNow+1 %>&id=<%=id %>&typeClass=<%=typeClass %>&order=<%=order %>&searchword=<%=searchword %>'>&gt;</a>
	<%
}
if(start+8-1<pageCount)
{
	%>
	<a href='search.jsp?page=<%=pageCount %>&id=<%=id %>&typeClass=<%=typeClass %>&order=<%=order %>&searchword=<%=searchword %>'>..<%=pageCount %></a>
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