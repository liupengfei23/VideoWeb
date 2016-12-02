<?php 
include("hbuser.php");
include("../inc/htconn.php");
?>
<?php
	session_start();
	header('Content-Type:text/html;charset=utf-8');
	//上传图片名称、类别、文件和图片描述
	$picname = $_POST['picname'];
	$typename = $_POST['pictype'];
	$file = $_FILES['uppath'];
	$bewrite = $_POST['picmess'];
	//上传图片的信息数组
	$fileinfo = getimagesize($file['tmp_name']);
	//判断上传文件大小
	if($file['size'] > (1024 * 2000000)){
		echo "<script>alert('上传文件超过200K的上限！');history.go(-1);</script>";
		exit();
	}
	//判断上传文件类型，只允许上传jpg和gif类型
	if((false == $fileinfo) or ($fileinfo[2] != 1 and $fileinfo[2] != 2 and $fileinfo[2] != 3 )){
		echo "<script>alert('上传文件类型错误！');history.go(-1);</script>";
		exit();
	}
	
	
	//生成新文件名
	$newname = time().strrchr($file['name'],'.');
	//上传图片
	move_uploaded_file($file['tmp_name'],'../hbUploadFile/'.$newname);
	
	
	if($fileinfo[2] == 1){
		$source = imagecreatefromgif('../hbUploadFile/'.$newname);
	}else if($fileinfo[2] == 2){
		$source = imagecreatefromjpeg('../hbUploadFile/'.$newname);
	}else if($fileinfo[2] == 3){
		$source = imagecreatefrompng('../hbUploadFile/'.$newname);
	}
	//设置缩略图的长和宽
	$oldwidth = $fileinfo[0];
	$oldheight = $fileinfo[1];
	if($oldwidth > $oldheight){
		$newwidth = 50;
		$newheight = $oldheight / ($oldwidth / 50);
	}else{
		$newheight = 50;
		$newwidth = $oldwidth / ($oldheight / 50);
	}
	//创建画板
	$dst = imagecreatetruecolor($newwidth,$newheight);
	//复制图片
	imagecopyresized($dst,$source, 0, 0, 0, 0, $newwidth, $newheight, $oldwidth, $oldheight);
	//保存缩略图
	imagejpeg($dst,'../hbUploadFiles/'.$newname);
	//销毁画板
	imagedestroy($dst);



	 
?>

<div style="font-size:12px; margin:0px;">
	<div style="float:left;border:#dde4e9 1px solid; width:60px; height:60px; margin:0px 20px 0px 0px;">
    	<img src="../hbUploadFiles/<?php echo $newname?>" style=" margin:5px;" />
    </div>
    <div style="float:left; line-height:24px;">
      上传成功！<br />
      <a href="../hbUploadFile/<?php echo $newname?>" target='_blank'style="color:#FF0000; text-decoration:none;">查看原图</a>
      <a href="delupload.php?picdel=picdel&newname=<?php echo $newname?>" onClick="javascript:if(confirm('确定重新上传吗?')){return true;}else{return false;}">
   		<span style="color:#FF0000; text-decoration:none;">重新上传</span>      
      </a>
    </div>
</div>
<script language="javascript"> 
	parent.document.form1.img.value="<?php echo $newname; ?>";
</script>