// JavaScript Document
$(function(){
	$("#uploadify_video").uploadify({
		'auto'     : true,//关闭自动上传
    	'removeTimeout' : 1,//文件队列上传完成1秒后删除
		'folder': 'uploads',//服务端的上传目录
        'swf'      : 'js/uploadify.swf',
        'uploader' : 'uploadify_video.php',
        'method'   : 'post',//方法，服务端可以用$_POST数组获取数据
		'buttonText' : '点击上传视频',//设置按钮文本
		//'buttonImg': 'common/images/imgup.png',//替换上传钮扣
        'multi'    : false,//允许同时上传多张图片
        'uploadLimit' : 15,//一次最多只允许上传10张图片
        'fileTypeDesc' : 'Image Files',//只允许上传图像
		//'sizeLimit': 999999 ,//限制上传文件的大小
		//'folder': 'UploadFile/<% = DateTime.Now.ToString("yyyyMMdd") %>/', //上传文件夹的路径按20130416  
        'queueID': 'fileQueue_video', //页面中，你想要用来作为文件队列的元素的id
        'fileTypeExts' : '*.ogg; *.mp4; *.webm',//限制允许上传的图片后缀
        'fileSizeLimit' : '2000000000KB',//限制上传的图片不得超过200KB
		'displayData': 'speed',//进度条的显示方式
		'width': 88,//buttonImg的大小
 		'height': 24,//
		//postData: {},//和后台交互时，附加的参数 
		'onUploadSuccess':function(file,data,response){
			
			$('#upvideo_list').html("<span id='video_0'><input type='text' id='video' class='input_bg3' name='video' value='"+data.replace( /^\s*/, '')+"'><a href='javascript:void(0)'>删除</a></span>");//系统原始文件
				
				$("#upvideo_list a").click(function(){
					$("#video").val("");
				})
		}
	})
})