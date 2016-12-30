<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="./error.jsp"%>
<%@page import="java.sql.ResultSet" %>
<%@page import="service.DBService" %>
<%@page import="bean.VideoInfo" %>
<%@page import="java.io.File" %>
<%!int id=0;  int cur=1; %>
<%
id = Integer.parseInt((request.getParameter("id")==null||request.getParameter("id")=="")?"0":request.getParameter("id"));
cur = Integer.parseInt((request.getParameter("cur")==null||request.getParameter("cur")=="")?"0":request.getParameter("cur"));
VideoInfo vi = new VideoInfo();
String sql = "select * from videoInfo where id=" + id +";";
ResultSet rs = DBService.query(sql);
if(rs.next())
{
	try
	{
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
	vi.setName(rs.getString("name").trim());
	vi.setSummary(rs.getString("summary").trim());
	vi.setCurnum(rs.getInt("curnum"));
	vi.setAllnum(rs.getInt("allnum"));
	vi.setTypeClass(DBService.queryObject("select name from typeclass where id = "+rs.getInt("typeClass")+";").toString().trim());
	
	//dir=new File("Video/"+rs.getString("video"));
	
	File dir=new File(this.getServletContext().getInitParameter("VideoPath")+rs.getString("video").trim());;

	//dir=new File(this.getServletContext().getInitParameter("VideoPath")+rs.getString("video").trim());
	//out.println(this.getServletContext().getInitParameter("VideoPath")+"-----");
	//out.println(rs.getString("video").trim());
	out.println(dir.isFile());
	//out.println(dir.isDirectory());
	//if(!dir.exists())throw new Exception();
	if(dir.isDirectory())
	{
		File[] list = dir.listFiles();
		for(File tmp:list)
		{
			//out.println(tmp.getPath()+"*********");
			//out.println(",,,,,"+cur+".mp4");
			if(tmp.getName().equalsIgnoreCase(cur+".mp4")||tmp.getName().equals(cur+".ogg")||tmp.getName().equalsIgnoreCase(cur+".webm"))
			{
				if(tmp.isFile())vi.setVideo("Video/"+dir.getName()+"/"+tmp.getName());
			}
		}
	}
	else if(dir.isFile())
	{
		vi.setVideo("Video/"+rs.getString("video").trim());
	}
	else if(rs.getString("video").trim().startsWith("http://")||rs.getString("video").trim().startsWith("www."))
	{
		vi.setVideo(rs.getString("video").trim());
		//vi.setVideo(dir.toString());
	}
	else
	{
		throw new Exception();
	}
	
	if(rs.getString("image")!=null)
	{
		//out.println(this.getServletContext().getInitParameter("ImagePath")+rs.getString("image").trim());
		//vi.setVideo(vi.getVideo().replace('\\','/'));
		dir=new File(this.getServletContext().getInitParameter("ImagePath")+rs.getString("image").trim());
		//out.println(this.getServletContext().getInitParameter("VideoPath")+"-----");
		//out.println(dir.getAbsolutePath());
		//out.println(dir.isFile());
		//out.println(dir.isDirectory());
		//if(!dir.exists())throw new Exception();
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
	//vi.setImage(rs.getString("image").trim());
	//out.println(vi.getVideo());

	vi.setTime((DBService.queryObject("select name from concreteClass where id="+rs.getInt("time")+";")).toString().trim());
	vi.setActors(((rs.getString("actors") ==""||rs.getString("actors")==null)?"":rs.getString("actors")).trim());
	vi.setDaoyan(rs.getString("daoyan").trim());
	vi.setLanguage(DBService.queryObject("select name from concreteClass where id = "+rs.getInt("language")+";").toString().trim());
	
	vi.setZimu((rs.getString("zimu")=="" || rs.getString("zimu")==null)?"":rs.getString("zimu"));
	//out.println("-"+rs.getInt("typeClass")+"-");
	}
	catch(Exception e)
	{
		e.printStackTrace();
		//response.sendRedirect("./error.jsp?err="+request.getRequestURL());
		//return;
	}
}
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="format-detection" content="telephone=no">
<meta name="renderer" content="webkit">
<meta name="applicable-device" content="pc,mobile">
<title>在线观看&lt;<%=vi.getName() %>&gt;</title>
<script src="./js/push.js"></script>
<script src="./js/myplay.js"></script>
<script src="./js/rich.js" type="text/javascript"></script>
</head>
<body>
<div id="cci1frame"
	style="height: 0px; width: 0px; display: none; wiidth: 100% px; heiight: 520px;"></div>
<script>var playn='<%=vi.getName()%>', playp='';</script>
<link href="./css/default.css" rel="stylesheet">
<script>var sitePath=''</script>
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
<!----------------------------- header start -------------------------------->
<jsp:include page="./head.jsp"></jsp:include>
<!------------------------------ header end --------------------------------->
<!--------------------------- dtextlink start ------------------------------->
<div id="dtextlink" class="wrap border-gray fn-clear">
<div class="textlink fn-left"><strong>您所在的位置：</strong>
<a href="./index.jsp">首页</a>&nbsp;&nbsp;»&nbsp;&nbsp;
<a href='<%="./search.jsp?typeClass="+rs.getInt("typeClass") %>'><%=vi.getTypeClass() %>
		</a>&nbsp;&nbsp;»&nbsp;&nbsp;
<a href='<%="./search.jsp?id="+(vi.getTypeClass().equals("电影")?(rs.getString("property").split("\\s+|，|,|\\|"))[0]:(vi.getTypeClass().equals("电视")?rs.getInt("area"):"0")) %>'>
	<%=((vi.getTypeClass().equals("电影"))?(vi.getProperty().split("\\s+|，|,|\\|"))[0]:((vi.getTypeClass().equals("电视"))?vi.getArea():"-")) %>
	</a>&nbsp;&nbsp;»&nbsp;&nbsp;
	<a href="./showInfo.jsp?id=<%=id %>"><%=vi.getName() %></a></div>
</div>
<!----------------------------dtextlink end --------------------------------->
<!---------------------------- content start -------------------------------->
<div id="content" class="wrap clearfix">

<%
//读取提示语
String notice = "";
sql = "select notice from config;";
rs = DBService.query(sql);
if(rs.next())
{
	notice = "<span style='color: #E53333;'>提示："+rs.getString("notice")+"</span>";
%>
<div class="ui-box border-gray clearfix">
<div class="playfrom jsfrom tab1 clearfix"><span class="laiyuan">鹏飞哥有话说&nbsp;<i
	class="arrow"></i></span></div>
<div id="box-jqjieshao"><%=notice %></div>
</div>
<% 
}
%>


<div class="border-gray clearfix" id="play-box">
<div class="video-info fn-left">
<div class="player">
<!--
<script>var VideoInfoList=unescape("%u4F18%u9177%24%24%u7B2C1%u96C6%24http%3A%2F%2Fv.youku.com%2Fv_show%2Fid_XMTgxNTAyNzA2NA%3D%3D.html%24youku%23%u7B2C2%u96C6%24http%3A%2F%2Fv.youku.com%2Fv_show%2Fid_XMTgxNTA0NDk2NA%3D%3D.html%24youku%23%u7B2C3%u96C6%24http%3A%2F%2Fv.youku.com%2Fv_show%2Fid_XMTgxNjE5MjQwMA%3D%3D.html%24youku%23%u7B2C4%u96C6%24http%3A%2F%2Fv.youku.com%2Fv_show%2Fid_XMTgxNzQ0MzU5Mg%3D%3D.html%24youku%23%u7B2C5%u96C6%24http%3A%2F%2Fv.youku.com%2Fv_show%2Fid_XMTgxNzQ0ODk2OA%3D%3D.html%24youku%23%u7B2C6%u96C6%24http%3A%2F%2Fv.youku.com%2Fv_show%2Fid_XMTgxODg5NzM0MA%3D%3D.html%24youku%23%u7B2C7%u96C6%24http%3A%2F%2Fv.youku.com%2Fv_show%2Fid_XMTgxODkyMjMwNA%3D%3D.html%24youku%23%u7B2C8%u96C6%24http%3A%2F%2Fv.youku.com%2Fv_show%2Fid_XMTgyMDI0Njk2NA%3D%3D.html%24youku%23%u7B2C9%u96C6%24http%3A%2F%2Fv.youku.com%2Fv_show%2Fid_XMTgyMDI1NDgyOA%3D%3D.html%24youku%23%u7B2C10%u96C6%24http%3A%2F%2Fv.youku.com%2Fv_show%2Fid_XMTgyMTY1MTYwOA%3D%3D.html%24youku%23%u7B2C11%u96C6%24http%3A%2F%2Fv.youku.com%2Fv_show%2Fid_XMTgyMTY1NjIyNA%3D%3D.html%24youku%23%u7B2C12%u96C6%24http%3A%2F%2Fv.youku.com%2Fv_show%2Fid_XMTgyMzA3MTM2MA%3D%3D.html%24youku%23%u7B2C13%u96C6%24http%3A%2F%2Fv.youku.com%2Fv_show%2Fid_XMTgyMzA4OTkwOA%3D%3D.html%24youku%23%u7B2C14%u96C6%24http%3A%2F%2Fv.youku.com%2Fv_show%2Fid_XMTgyNDQ1MTY1Ng%3D%3D.html%24youku%23%u7B2C15%u96C6%24http%3A%2F%2Fv.youku.com%2Fv_show%2Fid_XMTgyNDQ2MTc2OA%3D%3D.html%24youku%23%u7B2C16%u96C6%24http%3A%2F%2Fv.youku.com%2Fv_show%2Fid_XMTgyNjA4NzE1Ng%3D%3D.html%24youku")</script>
<script>var paras=getHtmlParas('.html');_lOlOl10l(paras[2],paras[1])</script>
-->
<div id="cc1play"
	style="height: 0px; width: 0px; display: none; width: 100% px; height: 520px;">
</div>
<iframe id="cciframe" scrolling="no" frameborder="0" allowfullscreen=""
	width="100%" height="520"
	src="./videoPlayer.jsp?name=<%=vi.getName() %>&cur=<%=cur %>&video=<%=vi.getVideo() %>&image=<%=vi.getImage() %>&zimu=<%=vi.getZimu() %>">	
</iframe>
</div>
</div>
</div>

<div class="ui-box border-gray clearfix">
<div class="playfrom jsfrom tab1 clearfix"><span class="laiyuan">播放地址&nbsp;<i
	class="arrow"></i></span>
<ul>
	<li id="tab1" onclick="setTab(&#39;tab&#39;,&#39;stab&#39;,1,1)"
		class="on"><i class="playerico ico-youku"></i><span class="f">播放</span></li>
</ul>
</div>


<div id="stab1" class="playlist jsplist clearfix flod">
<ul class="playul">

<%
if(vi.getAllnum()==1)
{%>
	<li><a title="播放" href="./show.jsp?id=<%=id %>&cur=0" target="_self" style="color: red">播放</a></li>
<%
}
else
{
	for(int i=1;i<=vi.getCurnum();i++)
	{
		%>
		<li><a title="第<%=i %>集" href="./show.jsp?id=<%=id %>&cur=<%=i %>" target="_self" <%=(cur==i)?"class='v' style='color: red'":"" %>>第<%=i %>集</a></li>
		<%
	}
}
%>

</ul>
</div>
</div>


<div class="ui-box border-gray clearfix">
<div class="playfrom jsfrom tab1 clearfix"><span class="laiyuan">剧情简介&nbsp;<i
	class="arrow"></i></span></div>
<div id="box-jqjieshao">
<div><%=vi.getSummary() %></div>
</div>
</div>

</div>
<!----------------------------- content end --------------------------------->
<!----------------------------- footer start -------------------------------->
<%@include file="./foot.html"%>
<!------------------------------ footer end --------------------------------->
</body>
</html>