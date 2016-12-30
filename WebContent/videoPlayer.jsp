<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="./error.jsp"%>

<%!String name; String video; String image; String zimu; int id; int cur;%>
<%
cur = Integer.parseInt(request.getParameter("cur").trim());
name = request.getParameter("name").trim();
name = new String(name.getBytes("ISO-8859-1"),"utf-8");
video= request.getParameter("video").trim();
image = request.getParameter("image")==null?" ":request.getParameter("image").trim();
zimu = (request.getParameter("zimu")==null||request.getParameter("zimu")=="")?" ":request.getParameter("zimu").trim();
//out.println(video.substring(0,video.lastIndexOf('.'))+".mp4");
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
	<script>videojs.options.flash.swf = "video-js.swf";</script>
	<video id="example_video_1" class="video-js vjs-default-skin vjs-big-play-centered" controls preload="none" width="840" height="520"
	poster="<%=image %>" data-setup="{}">

	<source src='<%=video.substring(0,video.lastIndexOf('.'))+".mp4" %>' type='video/mp4' />
	<source src='<%=video.substring(0,video.lastIndexOf('.'))+".webm" %>' type='video/webm' />
	<source src='<%=video.substring(0,video.lastIndexOf('.'))+".ogg" %>' type='video/ogg' />
	<track kind="captions" src="<%=zimu %>" srclang="en"
	label="English"></track>
	<track kind="captions" src="<%=zimu %>" srclang="zh"
	label="Chinese"></track>
	<!-- Tracks need an ending tag thanks to IE9 -->
	<track kind="subtitles" src="<%=zimu %>" srclang="en"
	label="English"></track>
	<!-- Tracks need an ending tag thanks to IE9 -->
	<track kind="subtitles" src="<%=zimu %>" srclang="en"
	label="Chinese"></track>
	<!-- 如果浏览器不兼容HTML5则使用flash播放 -->
    <object id="sample_video" class="vjs-flash-fallback" width="852"
     height="480" type="application/x-shockwave-flash"
     data='<%=video.substring(0,video.lastIndexOf('.'))+".mp4" %>'>
          <param name="movie"
                   value='<%=video.substring(0,video.lastIndexOf('.'))+".mp4" %>' />
          <param name="allowfullscreen" value="true" />
          <param name="flashvars" value='config={"playlist":["images/sample_video_poster.png", {"url": '<%=video.substring(0,video.lastIndexOf('.'))+".mp4" %>',"autoPlay":false,"autoBuffering":true}]}' />
          <!-- 视频图片. -->
          <img src="<%=image %>" width="852"
                            height="480" alt="Poster Image"
                            title="No video playback capabilities." />
   </object>
   </video>
<!-- Tracks need an ending tag thanks to IE9 -->

</body>
</html>