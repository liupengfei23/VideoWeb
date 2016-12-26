<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet" %>
<%@page import="service.DBService" %>
<%@page import="bean.VideoInfo" %>

<%!String name; String video; String image; String zimu;%>
<%
try{
String name = request.getParameter("name").trim();
String video= request.getParameter("video").trim();
String image = request.getParameter("image").trim();
String zimu = request.getParameter("zimu").trim();
}
catch(Exception e)
{
	e.printStackTrace();
	if(name== null || name=="" || video=="" || video==null)
	{
		response.sendRedirect(request.getContextPath()+"/error.jsp?err="+request.getRequestURL());
		return;
	}
}	
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="./css/video-js.min.css" rel="stylesheet">
<script src="./js/video.min.js" type="text/javascript"></script>
<title><%=name %></title>
</head>
<body>
	<video id="example_video_1" class="video-js vjs-default-skin" controls
	preload="none" width="840" height="520"
	poster="<%=image %>" data-setup="{}">
	<source src='<%=name.substring(0,name.length()-4)+".mp4" %>' type='video/mp4' />
	<source src='<%=name.substring(0,name.length()-5)+".webm" %>' type='video/webm' />
	<source src='<%=name.substring(0,name.length()-4)+".ogg" %>' type='video/ogg' />
	<track kind="captions" src="<%=zimu %>" srclang="en"
	label="English"></track>
	<!-- Tracks need an ending tag thanks to IE9 -->
	<track kind="subtitles" src="<%=zimu %>" srclang="en"
	label="English"></track>
	<track kind="captions" src="<%=zimu %>" srclang="zh"
	label="Chinese"></track>
	<!-- Tracks need an ending tag thanks to IE9 -->
	<track kind="subtitles" src="<%=zimu %>" srclang="en"
	label="Chinese"></track>
	<!-- 如果浏览器不兼容HTML5则使用flash播放 -->
    <object id="sample_video" class="vjs-flash-fallback" width="852"
     height="480" type="application/x-shockwave-flash"
     data='<%=name.substring(0,name.length()-4)+".mp4" %>'>
          <param name="movie"
                   value='<%=name.substring(0,name.length()-4)+".mp4" %>' />
          <param name="allowfullscreen" value="true" />
          <param name="flashvars" value='config={"playlist":["images/sample_video_poster.png", {"url": '<%=name.substring(0,name.length()-4)+".mp4" %>',"autoPlay":false,"autoBuffering":true}]}' />
          <!-- 视频图片. -->
          <img src="<%=image %>" width="852"
                            height="480" alt="Poster Image"
                            title="No video playback capabilities." />
   </object>
   </video>
<!-- Tracks need an ending tag thanks to IE9 -->

</body>
</html>