<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="./css/video-js.min.css" rel="stylesheet">
<script src="./js/video.min.js" type="text/javascript"></script>
<title>视频名称</title>
</head>
<body>
	<video id="example_video_1" class="video-js vjs-default-skin" controls
	preload="none" width="840" height="520"
	poster="http://video-js.zencoder.com/oceans-clip.png" data-setup="{}">
	<source src="http://vjs.zencdn.net/v/oceans.mp4" type='video/mp4' />
	<source src="http://vjs.zencdn.net/v/oceans.webm" type='video/webm' />
	<source src="http://vjs.zencdn.net/v/oceans.ogv" type='video/ogg' />
	<track kind="captions" src="demo.captions.vtt" srclang="en"
	label="English"></track>
	<!-- Tracks need an ending tag thanks to IE9 -->
	<track kind="subtitles" src="demo.captions.vtt" srclang="en"
	label="English"></track>
	<!-- 如果浏览器不兼容HTML5则使用flash播放 -->
    <object id="sample_video" class="vjs-flash-fallback" width="852"
     height="480" type="application/x-shockwave-flash"
     data="http://vjs.zencdn.net/v/oceans.mp4">
          <param name="movie"
                   value="http://vjs.zencdn.net/v/oceans.mp4" />
          <param name="allowfullscreen" value="true" />
          <param name="flashvars" value='config={"playlist":["images/sample_video_poster.png", {"url": "http://vjs.zencdn.net/v/oceans.mp4","autoPlay":false,"autoBuffering":true}]}' />
          <!-- 视频图片. -->
          <img src="http://video-js.zencoder.com/oceans-clip.png" width="852"
                            height="480" alt="Poster Image"
                            title="No video playback capabilities." />
   </object>
   </video>
<!-- Tracks need an ending tag thanks to IE9 -->

</body>
</html>