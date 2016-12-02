<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>视频网信息管理</title>

<link href="./css/style.css" rel="stylesheet" type="text/css">
<script src="./js/function.js"></script>
<script language="javascript" src="./js/color.js"></script>
<script charset="utf-8" src="./js/kindeditor.js"></script>
<script>
	KE.show({
		id : 'content'
	});
	
	
</script>
<link type="text/css" rel="stylesheet" href="./css/default.css">
<script language="javascript"> 

function killErrors() { 
return true; 
} 
window.onerror = killErrors; 

</script>
<script src="./js/jquery-1.6.2.js" type="text/javascript"></script> 
<script type="text/javascript">
$(function(){
 $(".tabletlist3 tr:odd").css("background-color","#ffffff");
 $(".tabletlist3 tr:even").css("background-color","#F5F5F5");
 
 	$("#upvideo_list a").click(function(){
			$("#video").val("");
		})
		
});

</script>

<script type="text/javascript" src="./js/jquery.uploadify-3.1.min.js"></script>
<script type="text/javascript" src="./js/uploadify.js"></script>
<link href="./css/uploadify.css" rel="stylesheet" type="text/css">


</head>
<body marginwidth="0" marginheight="0"><div class="rightcontent">
<div class="right_top_bg"><a href="./index.jsp">视频管理</a></div>
<!--  
<iframe width="280" height="180" id="colourPalette" src="./nc_selcolor.html" style="visibility:hidden; position:absolute; left:0px; top:0px;border:1px gray solid" frameborder="0" scrolling="no"></iframe>
-->
<div class="quikediv">
    <table width="100%" height="34" border="0" cellpadding="0" cellspacing="0" class="tabletlist">
      <tbody><tr>
        <td width="23%"><form name="form1" method="post" action="http://v.stuclub.cn/yt_manage/hb_infodate.php" style="margin:0px; ">
                 <select name="selectclassid" id="classid" onchange="form1.submit()">
                    <option value="0">-----顶级分类-----</option>
                    <option value="175">┣生活休闲</option><option value="177">┣人文社科</option><option value="178">┣技术教程</option><option value="179">┣求职有道</option><option value="180">┣校园微视</option><option value="181">┣翱翔名家讲堂</option><option value="182">┣在线学习</option><option value="183">┣主题教育</option><option value="2">┣心灵驿站</option><option value="1">┣工大影院</option>                 </select>  
                </form></td>
        <td width="61%"><form name="form2" method="post" action="http://v.stuclub.cn/yt_manage/hb_infodate.php" style="margin:0px;">
                    <input name="selectcount" type="text" class="inputbg" id="selectcount">
                    <input type="submit" name="button" id="button" value="查  询" class="anniu">
                </form></td>
        <td width="16%"><a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=add" style="color:#FF0000">增加信息</a>　　<a href="http://v.stuclub.cn/yt_manage/hb_infodate.php" style="color:#FF0000">信息列表</a></td>
      </tr>
    </tbody></table>
</div>
<table width="100%" border="0" align="center" cellpadding="4" cellspacing="0" class="tabletlist3" id="stripe">
    <tbody><tr class="list_class_bg" style="background-color: rgb(245, 245, 245);">
          <td width="4%" align="center">选择</td>
          <td width="41%" align="left">视频标题</td>
          <td width="12%" align="center">所属分类</td>
          <td width="5%" align="center">第几集</td>
          <td width="11%" align="center">排序数字</td>
          <td width="9%" align="center">发布时间</td>
          <td width="10%" align="center">修改</td>
          <td width="11%" align="center">删除</td>
        </tr>
	<form name="myform" method="post" action="http://v.stuclub.cn/yt_manage/hb_infodate.php"></form>
         
        <tr style="background-color: rgb(255, 255, 255);">
          <td align="center">
          	  <input type="checkbox" name="eng_id[]" id="eng_id[]" value="1618">
              <input type="hidden" name="selectdeltable" id="selectdeltable" value="hbinfodate">         
         </td>
          <td align="left" valign="middle">
          	<a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1618&amp;page=1&amp;selectclassid=&amp;selectcount=">
            <span style="color:">翱翔名家讲堂--陈剑报告会</span>            </a>
          </td>
          <td align="center" valign="middle">人文社会 - </td>
          <td align="center" valign="middle">1</td>
          <td align="center" valign="middle">1</td>
          <td align="center" valign="middle">2016-11-14</td>
          <td align="center" valign="middle">
          	  <a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1618&amp;page=1&amp;selectclassid=&amp;selectcount=">
              	 <img src="./edit.gif" width="16" height="16" style="border:none; text-decoration:none;">
              </a>
          </td>
          <td align="center" valign="middle">
          	  <img src="./delete.gif" width="16" height="16" onclick="delrec(1618,&#39;hbinfodate&#39;,&#39;翱翔名家讲堂--陈剑报告会&#39;,&#39;1&#39;,&#39;&#39;,&#39;&#39;)">
          </td>
        </tr>
	     
        <tr style="background-color: rgb(245, 245, 245);">
          <td align="center">
          	  <input type="checkbox" name="eng_id[]" id="eng_id[]" value="1617">
              <input type="hidden" name="selectdeltable" id="selectdeltable" value="hbinfodate">         
         </td>
          <td align="left" valign="middle">
          	<a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1617&amp;page=1&amp;selectclassid=&amp;selectcount=">
            <span style="color:">翱翔名家讲堂--刘芮汐报告会（上）</span>            </a>
          </td>
          <td align="center" valign="middle">人文社会 - </td>
          <td align="center" valign="middle">1</td>
          <td align="center" valign="middle">1</td>
          <td align="center" valign="middle">2016-11-12</td>
          <td align="center" valign="middle">
          	  <a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1617&amp;page=1&amp;selectclassid=&amp;selectcount=">
              	 <img src="./edit.gif" width="16" height="16" style="border:none; text-decoration:none;">
              </a>
          </td>
          <td align="center" valign="middle">
          	  <img src="./delete.gif" width="16" height="16" onclick="delrec(1617,&#39;hbinfodate&#39;,&#39;翱翔名家讲堂--刘芮汐报告会（上）&#39;,&#39;1&#39;,&#39;&#39;,&#39;&#39;)">
          </td>
        </tr>
	     
        <tr style="background-color: rgb(255, 255, 255);">
          <td align="center">
          	  <input type="checkbox" name="eng_id[]" id="eng_id[]" value="1616">
              <input type="hidden" name="selectdeltable" id="selectdeltable" value="hbinfodate">         
         </td>
          <td align="left" valign="middle">
          	<a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1616&amp;page=1&amp;selectclassid=&amp;selectcount=">
            <span style="color:">翱翔名家讲堂--夏笳报告会</span>            </a>
          </td>
          <td align="center" valign="middle">人文社会 - </td>
          <td align="center" valign="middle">1</td>
          <td align="center" valign="middle">1</td>
          <td align="center" valign="middle">2016-11-06</td>
          <td align="center" valign="middle">
          	  <a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1616&amp;page=1&amp;selectclassid=&amp;selectcount=">
              	 <img src="./images/edit.gif" width="16" height="16" style="border:none; text-decoration:none;">
              </a>
          </td>
          <td align="center" valign="middle">
          	  <img src="./images/delete.gif" width="16" height="16" onclick="delrec(1616,&#39;hbinfodate&#39;,&#39;翱翔名家讲堂--夏笳报告会&#39;,&#39;1&#39;,&#39;&#39;,&#39;&#39;)">
          </td>
        </tr>
	     
        <tr style="background-color: rgb(245, 245, 245);">
          <td align="center">
          	  <input type="checkbox" name="eng_id[]" id="eng_id[]" value="1615">
              <input type="hidden" name="selectdeltable" id="selectdeltable" value="hbinfodate">         
         </td>
          <td align="left" valign="middle">
          	<a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1615&amp;page=1&amp;selectclassid=&amp;selectcount=">
            <span style="color:">翱翔名家讲堂--王学贤报告会</span>            </a>
          </td>
          <td align="center" valign="middle">国防外交 - </td>
          <td align="center" valign="middle">1</td>
          <td align="center" valign="middle">1</td>
          <td align="center" valign="middle">2016-11-05</td>
          <td align="center" valign="middle">
          	  <a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1615&amp;page=1&amp;selectclassid=&amp;selectcount=">
              	 <img src="./edit.gif" width="16" height="16" style="border:none; text-decoration:none;">
              </a>
          </td>
          <td align="center" valign="middle">
          	  <img src="./delete.gif" width="16" height="16" onclick="delrec(1615,&#39;hbinfodate&#39;,&#39;翱翔名家讲堂--王学贤报告会&#39;,&#39;1&#39;,&#39;&#39;,&#39;&#39;)">
          </td>
        </tr>
	     
        <tr style="background-color: rgb(255, 255, 255);">
          <td align="center">
          	  <input type="checkbox" name="eng_id[]" id="eng_id[]" value="1614">
              <input type="hidden" name="selectdeltable" id="selectdeltable" value="hbinfodate">         
         </td>
          <td align="left" valign="middle">
          	<a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1614&amp;page=1&amp;selectclassid=&amp;selectcount=">
            <span style="color:">翱翔名家讲堂--闫团结报告会</span>            </a>
          </td>
          <td align="center" valign="middle">国防外交 - </td>
          <td align="center" valign="middle">1</td>
          <td align="center" valign="middle">1</td>
          <td align="center" valign="middle">2016-11-01</td>
          <td align="center" valign="middle">
          	  <a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1614&amp;page=1&amp;selectclassid=&amp;selectcount=">
              	 <img src="./edit.gif" width="16" height="16" style="border:none; text-decoration:none;">
              </a>
          </td>
          <td align="center" valign="middle">
          	  <img src="./delete.gif" width="16" height="16" onclick="delrec(1614,&#39;hbinfodate&#39;,&#39;翱翔名家讲堂--闫团结报告会&#39;,&#39;1&#39;,&#39;&#39;,&#39;&#39;)">
          </td>
        </tr>
	     
        <tr style="background-color: rgb(245, 245, 245);">
          <td align="center">
          	  <input type="checkbox" name="eng_id[]" id="eng_id[]" value="1613">
              <input type="hidden" name="selectdeltable" id="selectdeltable" value="hbinfodate">         
         </td>
          <td align="left" valign="middle">
          	<a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1613&amp;page=1&amp;selectclassid=&amp;selectcount=">
            <span style="color:">翱翔名家讲堂--孔燕报告会</span>            </a>
          </td>
          <td align="center" valign="middle">成功励志 - </td>
          <td align="center" valign="middle">1</td>
          <td align="center" valign="middle">1</td>
          <td align="center" valign="middle">2016-11-01</td>
          <td align="center" valign="middle">
          	  <a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1613&amp;page=1&amp;selectclassid=&amp;selectcount=">
              	 <img src="./edit.gif" width="16" height="16" style="border:none; text-decoration:none;">
              </a>
          </td>
          <td align="center" valign="middle">
          	  <img src="./delete.gif" width="16" height="16" onclick="delrec(1613,&#39;hbinfodate&#39;,&#39;翱翔名家讲堂--孔燕报告会&#39;,&#39;1&#39;,&#39;&#39;,&#39;&#39;)">
          </td>
        </tr>
	     
        <tr style="background-color: rgb(255, 255, 255);">
          <td align="center">
          	  <input type="checkbox" name="eng_id[]" id="eng_id[]" value="1612">
              <input type="hidden" name="selectdeltable" id="selectdeltable" value="hbinfodate">         
         </td>
          <td align="left" valign="middle">
          	<a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1612&amp;page=1&amp;selectclassid=&amp;selectcount=">
            <span style="color:">翱翔名家讲堂--杜文龙报告会</span>            </a>
          </td>
          <td align="center" valign="middle">国防外交 - </td>
          <td align="center" valign="middle">1</td>
          <td align="center" valign="middle">1</td>
          <td align="center" valign="middle">2016-11-01</td>
          <td align="center" valign="middle">
          	  <a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1612&amp;page=1&amp;selectclassid=&amp;selectcount=">
              	 <img src="./edit.gif" width="16" height="16" style="border:none; text-decoration:none;">
              </a>
          </td>
          <td align="center" valign="middle">
          	  <img src="./delete.gif" width="16" height="16" onclick="delrec(1612,&#39;hbinfodate&#39;,&#39;翱翔名家讲堂--杜文龙报告会&#39;,&#39;1&#39;,&#39;&#39;,&#39;&#39;)">
          </td>
        </tr>
	     
        <tr style="background-color: rgb(245, 245, 245);">
          <td align="center">
          	  <input type="checkbox" name="eng_id[]" id="eng_id[]" value="1607">
              <input type="hidden" name="selectdeltable" id="selectdeltable" value="hbinfodate">         
         </td>
          <td align="left" valign="middle">
          	<a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1607&amp;page=1&amp;selectclassid=&amp;selectcount=">
            <span style="color:">翱翔名家讲堂--郑启荣报告会</span>            </a>
          </td>
          <td align="center" valign="middle">国防外交 - </td>
          <td align="center" valign="middle">1</td>
          <td align="center" valign="middle">1</td>
          <td align="center" valign="middle">2016-10-30</td>
          <td align="center" valign="middle">
          	  <a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1607&amp;page=1&amp;selectclassid=&amp;selectcount=">
              	 <img src="./edit.gif" width="16" height="16" style="border:none; text-decoration:none;">
              </a>
          </td>
          <td align="center" valign="middle">
          	  <img src="./delete.gif" width="16" height="16" onclick="delrec(1607,&#39;hbinfodate&#39;,&#39;翱翔名家讲堂--郑启荣报告会&#39;,&#39;1&#39;,&#39;&#39;,&#39;&#39;)">
          </td>
        </tr>
	     
        <tr style="background-color: rgb(255, 255, 255);">
          <td align="center">
          	  <input type="checkbox" name="eng_id[]" id="eng_id[]" value="1606">
              <input type="hidden" name="selectdeltable" id="selectdeltable" value="hbinfodate">         
         </td>
          <td align="left" valign="middle">
          	<a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1606&amp;page=1&amp;selectclassid=&amp;selectcount=">
            <span style="color:">翱翔名家讲堂--艾力报告会</span>            </a>
          </td>
          <td align="center" valign="middle">成功励志 - </td>
          <td align="center" valign="middle">1</td>
          <td align="center" valign="middle">1</td>
          <td align="center" valign="middle">2016-10-30</td>
          <td align="center" valign="middle">
          	  <a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1606&amp;page=1&amp;selectclassid=&amp;selectcount=">
              	 <img src="./edit.gif" width="16" height="16" style="border:none; text-decoration:none;">
              </a>
          </td>
          <td align="center" valign="middle">
          	  <img src="./delete.gif" width="16" height="16" onclick="delrec(1606,&#39;hbinfodate&#39;,&#39;翱翔名家讲堂--艾力报告会&#39;,&#39;1&#39;,&#39;&#39;,&#39;&#39;)">
          </td>
        </tr>
	     
        <tr style="background-color: rgb(245, 245, 245);">
          <td align="center">
          	  <input type="checkbox" name="eng_id[]" id="eng_id[]" value="1600">
              <input type="hidden" name="selectdeltable" id="selectdeltable" value="hbinfodate">         
         </td>
          <td align="left" valign="middle">
          	<a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1600&amp;page=1&amp;selectclassid=&amp;selectcount=">
            <span style="color:">21世纪全国英语演讲比赛</span>            </a>
          </td>
          <td align="center" valign="middle">瓜子视角 - </td>
          <td align="center" valign="middle">1</td>
          <td align="center" valign="middle">1</td>
          <td align="center" valign="middle">2016-09-29</td>
          <td align="center" valign="middle">
          	  <a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1600&amp;page=1&amp;selectclassid=&amp;selectcount=">
              	 <img src="./edit.gif" width="16" height="16" style="border:none; text-decoration:none;">
              </a>
          </td>
          <td align="center" valign="middle">
          	  <img src="./delete.gif" width="16" height="16" onclick="delrec(1600,&#39;hbinfodate&#39;,&#39;21世纪全国英语演讲比赛&#39;,&#39;1&#39;,&#39;&#39;,&#39;&#39;)">
          </td>
        </tr>
	     
        <tr style="background-color: rgb(255, 255, 255);">
          <td align="center">
          	  <input type="checkbox" name="eng_id[]" id="eng_id[]" value="1596">
              <input type="hidden" name="selectdeltable" id="selectdeltable" value="hbinfodate">         
         </td>
          <td align="left" valign="middle">
          	<a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1596&amp;page=1&amp;selectclassid=&amp;selectcount=">
            <span style="color:">2016级新生开学典礼</span>            </a>
          </td>
          <td align="center" valign="middle">生活 - </td>
          <td align="center" valign="middle">1</td>
          <td align="center" valign="middle">1</td>
          <td align="center" valign="middle">2016-09-03</td>
          <td align="center" valign="middle">
          	  <a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1596&amp;page=1&amp;selectclassid=&amp;selectcount=">
              	 <img src="./edit.gif" width="16" height="16" style="border:none; text-decoration:none;">
              </a>
          </td>
          <td align="center" valign="middle">
          	  <img src="./delete.gif" width="16" height="16" onclick="delrec(1596,&#39;hbinfodate&#39;,&#39;2016级新生开学典礼&#39;,&#39;1&#39;,&#39;&#39;,&#39;&#39;)">
          </td>
        </tr>
	     
        <tr style="background-color: rgb(245, 245, 245);">
          <td align="center">
          	  <input type="checkbox" name="eng_id[]" id="eng_id[]" value="1595">
              <input type="hidden" name="selectdeltable" id="selectdeltable" value="hbinfodate">         
         </td>
          <td align="left" valign="middle">
          	<a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1595&amp;page=1&amp;selectclassid=&amp;selectcount=">
            <span style="color:">“ARJ21-700”飞机总师团队报告会</span>            </a>
          </td>
          <td align="center" valign="middle">成功励志 - </td>
          <td align="center" valign="middle">3</td>
          <td align="center" valign="middle">1</td>
          <td align="center" valign="middle">2016-09-03</td>
          <td align="center" valign="middle">
          	  <a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1595&amp;page=1&amp;selectclassid=&amp;selectcount=">
              	 <img src="./edit.gif" width="16" height="16" style="border:none; text-decoration:none;">
              </a>
          </td>
          <td align="center" valign="middle">
          	  <img src="./delete.gif" width="16" height="16" onclick="delrec(1595,&#39;hbinfodate&#39;,&#39;“ARJ21-700”飞机总师团队报告会&#39;,&#39;1&#39;,&#39;&#39;,&#39;&#39;)">
          </td>
        </tr>
	     
        <tr style="background-color: rgb(255, 255, 255);">
          <td align="center">
          	  <input type="checkbox" name="eng_id[]" id="eng_id[]" value="1594">
              <input type="hidden" name="selectdeltable" id="selectdeltable" value="hbinfodate">         
         </td>
          <td align="left" valign="middle">
          	<a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1594&amp;page=1&amp;selectclassid=&amp;selectcount=">
            <span style="color:">全国优秀共产党员马善祥同志报告会</span>            </a>
          </td>
          <td align="center" valign="middle">成功励志 - </td>
          <td align="center" valign="middle">1</td>
          <td align="center" valign="middle">1</td>
          <td align="center" valign="middle">2016-09-03</td>
          <td align="center" valign="middle">
          	  <a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1594&amp;page=1&amp;selectclassid=&amp;selectcount=">
              	 <img src="./edit.gif" width="16" height="16" style="border:none; text-decoration:none;">
              </a>
          </td>
          <td align="center" valign="middle">
          	  <img src="./delete.gif" width="16" height="16" onclick="delrec(1594,&#39;hbinfodate&#39;,&#39;全国优秀共产党员马善祥同志报告会&#39;,&#39;1&#39;,&#39;&#39;,&#39;&#39;)">
          </td>
        </tr>
	     
        <tr style="background-color: rgb(245, 245, 245);">
          <td align="center">
          	  <input type="checkbox" name="eng_id[]" id="eng_id[]" value="1593">
              <input type="hidden" name="selectdeltable" id="selectdeltable" value="hbinfodate">         
         </td>
          <td align="left" valign="middle">
          	<a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1593&amp;page=1&amp;selectclassid=&amp;selectcount=">
            <span style="color:">“ARJ21-700”飞机总师团队报告会</span>            </a>
          </td>
          <td align="center" valign="middle">成功励志 - </td>
          <td align="center" valign="middle">2</td>
          <td align="center" valign="middle">1</td>
          <td align="center" valign="middle">2016-09-03</td>
          <td align="center" valign="middle">
          	  <a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1593&amp;page=1&amp;selectclassid=&amp;selectcount=">
              	 <img src="./edit.gif" width="16" height="16" style="border:none; text-decoration:none;">
              </a>
          </td>
          <td align="center" valign="middle">
          	  <img src="./delete.gif" width="16" height="16" onclick="delrec(1593,&#39;hbinfodate&#39;,&#39;“ARJ21-700”飞机总师团队报告会&#39;,&#39;1&#39;,&#39;&#39;,&#39;&#39;)">
          </td>
        </tr>
	     
        <tr style="background-color: rgb(255, 255, 255);">
          <td align="center">
          	  <input type="checkbox" name="eng_id[]" id="eng_id[]" value="1592">
              <input type="hidden" name="selectdeltable" id="selectdeltable" value="hbinfodate">         
         </td>
          <td align="left" valign="middle">
          	<a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1592&amp;page=1&amp;selectclassid=&amp;selectcount=">
            <span style="color:">“ARJ21-700”飞机总师团队报告会</span>            </a>
          </td>
          <td align="center" valign="middle">成功励志 - </td>
          <td align="center" valign="middle">1</td>
          <td align="center" valign="middle">1</td>
          <td align="center" valign="middle">2016-09-03</td>
          <td align="center" valign="middle">
          	  <a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1592&amp;page=1&amp;selectclassid=&amp;selectcount=">
              	 <img src="./edit.gif" width="16" height="16" style="border:none; text-decoration:none;">
              </a>
          </td>
          <td align="center" valign="middle">
          	  <img src="./delete.gif" width="16" height="16" onclick="delrec(1592,&#39;hbinfodate&#39;,&#39;“ARJ21-700”飞机总师团队报告会&#39;,&#39;1&#39;,&#39;&#39;,&#39;&#39;)">
          </td>
        </tr>
	     
        <tr style="background-color: rgb(245, 245, 245);">
          <td align="center">
          	  <input type="checkbox" name="eng_id[]" id="eng_id[]" value="1581">
              <input type="hidden" name="selectdeltable" id="selectdeltable" value="hbinfodate">         
         </td>
          <td align="left" valign="middle">
          	<a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1581&amp;page=1&amp;selectclassid=&amp;selectcount=">
            <span style="color:">国学修身智慧</span>            </a>
          </td>
          <td align="center" valign="middle">国学 - </td>
          <td align="center" valign="middle">1</td>
          <td align="center" valign="middle">1</td>
          <td align="center" valign="middle">2016-05-20</td>
          <td align="center" valign="middle">
          	  <a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1581&amp;page=1&amp;selectclassid=&amp;selectcount=">
              	 <img src="./edit.gif" width="16" height="16" style="border:none; text-decoration:none;">
              </a>
          </td>
          <td align="center" valign="middle">
          	  <img src="./delete.gif" width="16" height="16" onclick="delrec(1581,&#39;hbinfodate&#39;,&#39;国学修身智慧&#39;,&#39;1&#39;,&#39;&#39;,&#39;&#39;)">
          </td>
        </tr>
	     
        <tr style="background-color: rgb(255, 255, 255);">
          <td align="center">
          	  <input type="checkbox" name="eng_id[]" id="eng_id[]" value="1580">
              <input type="hidden" name="selectdeltable" id="selectdeltable" value="hbinfodate">         
         </td>
          <td align="left" valign="middle">
          	<a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1580&amp;page=1&amp;selectclassid=&amp;selectcount=">
            <span style="color:">西方艺术欣赏</span>            </a>
          </td>
          <td align="center" valign="middle">艺术 - </td>
          <td align="center" valign="middle">12</td>
          <td align="center" valign="middle">1</td>
          <td align="center" valign="middle">2016-05-18</td>
          <td align="center" valign="middle">
          	  <a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1580&amp;page=1&amp;selectclassid=&amp;selectcount=">
              	 <img src="./edit.gif" width="16" height="16" style="border:none; text-decoration:none;">
              </a>
          </td>
          <td align="center" valign="middle">
          	  <img src="./delete.gif" width="16" height="16" onclick="delrec(1580,&#39;hbinfodate&#39;,&#39;西方艺术欣赏&#39;,&#39;1&#39;,&#39;&#39;,&#39;&#39;)">
          </td>
        </tr>
	     
        <tr style="background-color: rgb(245, 245, 245);">
          <td align="center">
          	  <input type="checkbox" name="eng_id[]" id="eng_id[]" value="1579">
              <input type="hidden" name="selectdeltable" id="selectdeltable" value="hbinfodate">         
         </td>
          <td align="left" valign="middle">
          	<a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1579&amp;page=1&amp;selectclassid=&amp;selectcount=">
            <span style="color:">西方艺术欣赏</span>            </a>
          </td>
          <td align="center" valign="middle">艺术 - </td>
          <td align="center" valign="middle">13</td>
          <td align="center" valign="middle">1</td>
          <td align="center" valign="middle">2016-05-18</td>
          <td align="center" valign="middle">
          	  <a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1579&amp;page=1&amp;selectclassid=&amp;selectcount=">
              	 <img src="./edit.gif" width="16" height="16" style="border:none; text-decoration:none;">
              </a>
          </td>
          <td align="center" valign="middle">
          	  <img src="./delete.gif" width="16" height="16" onclick="delrec(1579,&#39;hbinfodate&#39;,&#39;西方艺术欣赏&#39;,&#39;1&#39;,&#39;&#39;,&#39;&#39;)">
          </td>
        </tr>
	     
        <tr style="background-color: rgb(255, 255, 255);">
          <td align="center">
          	  <input type="checkbox" name="eng_id[]" id="eng_id[]" value="1578">
              <input type="hidden" name="selectdeltable" id="selectdeltable" value="hbinfodate">         
         </td>
          <td align="left" valign="middle">
          	<a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1578&amp;page=1&amp;selectclassid=&amp;selectcount=">
            <span style="color:">西方艺术欣赏</span>            </a>
          </td>
          <td align="center" valign="middle">艺术 - </td>
          <td align="center" valign="middle">14</td>
          <td align="center" valign="middle">1</td>
          <td align="center" valign="middle">2016-05-18</td>
          <td align="center" valign="middle">
          	  <a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1578&amp;page=1&amp;selectclassid=&amp;selectcount=">
              	 <img src="./edit.gif" width="16" height="16" style="border:none; text-decoration:none;">
              </a>
          </td>
          <td align="center" valign="middle">
          	  <img src="./delete.gif" width="16" height="16" onclick="delrec(1578,&#39;hbinfodate&#39;,&#39;西方艺术欣赏&#39;,&#39;1&#39;,&#39;&#39;,&#39;&#39;)">
          </td>
        </tr>
	     
        <tr style="background-color: rgb(245, 245, 245);">
          <td align="center">
          	  <input type="checkbox" name="eng_id[]" id="eng_id[]" value="1577">
              <input type="hidden" name="selectdeltable" id="selectdeltable" value="hbinfodate">         
         </td>
          <td align="left" valign="middle">
          	<a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1577&amp;page=1&amp;selectclassid=&amp;selectcount=">
            <span style="color:">西方艺术欣赏</span>            </a>
          </td>
          <td align="center" valign="middle">艺术 - </td>
          <td align="center" valign="middle">15</td>
          <td align="center" valign="middle">1</td>
          <td align="center" valign="middle">2016-05-18</td>
          <td align="center" valign="middle">
          	  <a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1577&amp;page=1&amp;selectclassid=&amp;selectcount=">
              	 <img src="./edit.gif" width="16" height="16" style="border:none; text-decoration:none;">
              </a>
          </td>
          <td align="center" valign="middle">
          	  <img src="./delete.gif" width="16" height="16" onclick="delrec(1577,&#39;hbinfodate&#39;,&#39;西方艺术欣赏&#39;,&#39;1&#39;,&#39;&#39;,&#39;&#39;)">
          </td>
        </tr>
	     
        <tr style="background-color: rgb(255, 255, 255);">
          <td align="center">
          	  <input type="checkbox" name="eng_id[]" id="eng_id[]" value="1576">
              <input type="hidden" name="selectdeltable" id="selectdeltable" value="hbinfodate">         
         </td>
          <td align="left" valign="middle">
          	<a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1576&amp;page=1&amp;selectclassid=&amp;selectcount=">
            <span style="color:">党中央在延安十三年（高尚斌）</span>            </a>
          </td>
          <td align="center" valign="middle">成功励志 - </td>
          <td align="center" valign="middle">1</td>
          <td align="center" valign="middle">1</td>
          <td align="center" valign="middle">2016-05-14</td>
          <td align="center" valign="middle">
          	  <a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1576&amp;page=1&amp;selectclassid=&amp;selectcount=">
              	 <img src="./edit.gif" width="16" height="16" style="border:none; text-decoration:none;">
              </a>
          </td>
          <td align="center" valign="middle">
          	  <img src="./delete.gif" width="16" height="16" onclick="delrec(1576,&#39;hbinfodate&#39;,&#39;党中央在延安十三年（高尚斌）&#39;,&#39;1&#39;,&#39;&#39;,&#39;&#39;)">
          </td>
        </tr>
	     
        <tr style="background-color: rgb(245, 245, 245);">
          <td align="center">
          	  <input type="checkbox" name="eng_id[]" id="eng_id[]" value="1575">
              <input type="hidden" name="selectdeltable" id="selectdeltable" value="hbinfodate">         
         </td>
          <td align="left" valign="middle">
          	<a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1575&amp;page=1&amp;selectclassid=&amp;selectcount=">
            <span style="color:">中国探月工程——探索永无止境（刘彤杰）</span>            </a>
          </td>
          <td align="center" valign="middle">国防外交 - </td>
          <td align="center" valign="middle">1</td>
          <td align="center" valign="middle">1</td>
          <td align="center" valign="middle">2016-05-14</td>
          <td align="center" valign="middle">
          	  <a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1575&amp;page=1&amp;selectclassid=&amp;selectcount=">
              	 <img src="./edit.gif" width="16" height="16" style="border:none; text-decoration:none;">
              </a>
          </td>
          <td align="center" valign="middle">
          	  <img src="./delete.gif" width="16" height="16" onclick="delrec(1575,&#39;hbinfodate&#39;,&#39;中国探月工程——探索永无止境（刘彤杰）&#39;,&#39;1&#39;,&#39;&#39;,&#39;&#39;)">
          </td>
        </tr>
	     
        <tr style="background-color: rgb(255, 255, 255);">
          <td align="center">
          	  <input type="checkbox" name="eng_id[]" id="eng_id[]" value="1574">
              <input type="hidden" name="selectdeltable" id="selectdeltable" value="hbinfodate">         
         </td>
          <td align="left" valign="middle">
          	<a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1574&amp;page=1&amp;selectclassid=&amp;selectcount=">
            <span style="color:">青年学生健康成长之道（赵云鹏）</span>            </a>
          </td>
          <td align="center" valign="middle">成功励志 - </td>
          <td align="center" valign="middle">2</td>
          <td align="center" valign="middle">1</td>
          <td align="center" valign="middle">2016-05-14</td>
          <td align="center" valign="middle">
          	  <a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1574&amp;page=1&amp;selectclassid=&amp;selectcount=">
              	 <img src="./edit.gif" width="16" height="16" style="border:none; text-decoration:none;">
              </a>
          </td>
          <td align="center" valign="middle">
          	  <img src="./delete.gif" width="16" height="16" onclick="delrec(1574,&#39;hbinfodate&#39;,&#39;青年学生健康成长之道（赵云鹏）&#39;,&#39;1&#39;,&#39;&#39;,&#39;&#39;)">
          </td>
        </tr>
	     
        <tr style="background-color: rgb(245, 245, 245);">
          <td align="center">
          	  <input type="checkbox" name="eng_id[]" id="eng_id[]" value="1573">
              <input type="hidden" name="selectdeltable" id="selectdeltable" value="hbinfodate">         
         </td>
          <td align="left" valign="middle">
          	<a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1573&amp;page=1&amp;selectclassid=&amp;selectcount=">
            <span style="color:">青年学生健康成长之道（赵云鹏）</span>            </a>
          </td>
          <td align="center" valign="middle">成功励志 - </td>
          <td align="center" valign="middle">1</td>
          <td align="center" valign="middle">1</td>
          <td align="center" valign="middle">2016-05-14</td>
          <td align="center" valign="middle">
          	  <a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1573&amp;page=1&amp;selectclassid=&amp;selectcount=">
              	 <img src="./edit.gif" width="16" height="16" style="border:none; text-decoration:none;">
              </a>
          </td>
          <td align="center" valign="middle">
          	  <img src="./delete.gif" width="16" height="16" onclick="delrec(1573,&#39;hbinfodate&#39;,&#39;青年学生健康成长之道（赵云鹏）&#39;,&#39;1&#39;,&#39;&#39;,&#39;&#39;)">
          </td>
        </tr>
	     
        <tr style="background-color: rgb(255, 255, 255);">
          <td align="center">
          	  <input type="checkbox" name="eng_id[]" id="eng_id[]" value="1572">
              <input type="hidden" name="selectdeltable" id="selectdeltable" value="hbinfodate">         
         </td>
          <td align="left" valign="middle">
          	<a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1572&amp;page=1&amp;selectclassid=&amp;selectcount=">
            <span style="color:">让一部分人在中国先爱起来 ——从《红楼梦》到“中国梦” （潘知常）</span>            </a>
          </td>
          <td align="center" valign="middle">人文社会 - </td>
          <td align="center" valign="middle">3</td>
          <td align="center" valign="middle">1</td>
          <td align="center" valign="middle">2016-05-03</td>
          <td align="center" valign="middle">
          	  <a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1572&amp;page=1&amp;selectclassid=&amp;selectcount=">
              	 <img src="./edit.gif" width="16" height="16" style="border:none; text-decoration:none;">
              </a>
          </td>
          <td align="center" valign="middle">
          	  <img src="./delete.gif" width="16" height="16" onclick="delrec(1572,&#39;hbinfodate&#39;,&#39;让一部分人在中国先爱起来 ——从《红楼梦》到“中国梦” （潘知常）&#39;,&#39;1&#39;,&#39;&#39;,&#39;&#39;)">
          </td>
        </tr>
	     
        <tr style="background-color: rgb(245, 245, 245);">
          <td align="center">
          	  <input type="checkbox" name="eng_id[]" id="eng_id[]" value="1571">
              <input type="hidden" name="selectdeltable" id="selectdeltable" value="hbinfodate">         
         </td>
          <td align="left" valign="middle">
          	<a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1571&amp;page=1&amp;selectclassid=&amp;selectcount=">
            <span style="color:">让一部分人在中国先爱起来 ——从《红楼梦》到“中国梦” （潘知常）</span>            </a>
          </td>
          <td align="center" valign="middle">人文社会 - </td>
          <td align="center" valign="middle">2</td>
          <td align="center" valign="middle">1</td>
          <td align="center" valign="middle">2016-05-03</td>
          <td align="center" valign="middle">
          	  <a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1571&amp;page=1&amp;selectclassid=&amp;selectcount=">
              	 <img src="./edit.gif" width="16" height="16" style="border:none; text-decoration:none;">
              </a>
          </td>
          <td align="center" valign="middle">
          	  <img src="./delete.gif" width="16" height="16" onclick="delrec(1571,&#39;hbinfodate&#39;,&#39;让一部分人在中国先爱起来 ——从《红楼梦》到“中国梦” （潘知常）&#39;,&#39;1&#39;,&#39;&#39;,&#39;&#39;)">
          </td>
        </tr>
	     
        <tr style="background-color: rgb(255, 255, 255);">
          <td align="center">
          	  <input type="checkbox" name="eng_id[]" id="eng_id[]" value="1570">
              <input type="hidden" name="selectdeltable" id="selectdeltable" value="hbinfodate">         
         </td>
          <td align="left" valign="middle">
          	<a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1570&amp;page=1&amp;selectclassid=&amp;selectcount=">
            <span style="color:">让一部分人在中国先爱起来 ——从《红楼梦》到“中国梦” （潘知常）</span>            </a>
          </td>
          <td align="center" valign="middle">人文社会 - </td>
          <td align="center" valign="middle">1</td>
          <td align="center" valign="middle">1</td>
          <td align="center" valign="middle">2016-05-03</td>
          <td align="center" valign="middle">
          	  <a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1570&amp;page=1&amp;selectclassid=&amp;selectcount=">
              	 <img src="./edit.gif" width="16" height="16" style="border:none; text-decoration:none;">
              </a>
          </td>
          <td align="center" valign="middle">
          	  <img src="./delete.gif" width="16" height="16" onclick="delrec(1570,&#39;hbinfodate&#39;,&#39;让一部分人在中国先爱起来 ——从《红楼梦》到“中国梦” （潘知常）&#39;,&#39;1&#39;,&#39;&#39;,&#39;&#39;)">
          </td>
        </tr>
	     
        <tr style="background-color: rgb(245, 245, 245);">
          <td align="center">
          	  <input type="checkbox" name="eng_id[]" id="eng_id[]" value="1568">
              <input type="hidden" name="selectdeltable" id="selectdeltable" value="hbinfodate">         
         </td>
          <td align="left" valign="middle">
          	<a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1568&amp;page=1&amp;selectclassid=&amp;selectcount=">
            <span style="color:">微语青春（徐茂）</span>            </a>
          </td>
          <td align="center" valign="middle">人文社会 - </td>
          <td align="center" valign="middle">2</td>
          <td align="center" valign="middle">1</td>
          <td align="center" valign="middle">2016-04-28</td>
          <td align="center" valign="middle">
          	  <a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1568&amp;page=1&amp;selectclassid=&amp;selectcount=">
              	 <img src="./edit.gif" width="16" height="16" style="border:none; text-decoration:none;">
              </a>
          </td>
          <td align="center" valign="middle">
          	  <img src="./delete.gif" width="16" height="16" onclick="delrec(1568,&#39;hbinfodate&#39;,&#39;微语青春（徐茂）&#39;,&#39;1&#39;,&#39;&#39;,&#39;&#39;)">
          </td>
        </tr>
	     
        <tr style="background-color: rgb(255, 255, 255);">
          <td align="center">
          	  <input type="checkbox" name="eng_id[]" id="eng_id[]" value="1567">
              <input type="hidden" name="selectdeltable" id="selectdeltable" value="hbinfodate">         
         </td>
          <td align="left" valign="middle">
          	<a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1567&amp;page=1&amp;selectclassid=&amp;selectcount=">
            <span style="color:">微语青春（徐茂）</span>            </a>
          </td>
          <td align="center" valign="middle">人文社会 - </td>
          <td align="center" valign="middle">1</td>
          <td align="center" valign="middle">1</td>
          <td align="center" valign="middle">2016-04-28</td>
          <td align="center" valign="middle">
          	  <a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1567&amp;page=1&amp;selectclassid=&amp;selectcount=">
              	 <img src="./edit.gif" width="16" height="16" style="border:none; text-decoration:none;">
              </a>
          </td>
          <td align="center" valign="middle">
          	  <img src="./delete.gif" width="16" height="16" onclick="delrec(1567,&#39;hbinfodate&#39;,&#39;微语青春（徐茂）&#39;,&#39;1&#39;,&#39;&#39;,&#39;&#39;)">
          </td>
        </tr>
	     
        <tr style="background-color: rgb(245, 245, 245);">
          <td align="center">
          	  <input type="checkbox" name="eng_id[]" id="eng_id[]" value="1565">
              <input type="hidden" name="selectdeltable" id="selectdeltable" value="hbinfodate">         
         </td>
          <td align="left" valign="middle">
          	<a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1565&amp;page=1&amp;selectclassid=&amp;selectcount=">
            <span style="color:">创业那些事&amp;互联网+大赛指导（徐俊祥）</span>            </a>
          </td>
          <td align="center" valign="middle">人文社会 - </td>
          <td align="center" valign="middle">2</td>
          <td align="center" valign="middle">1</td>
          <td align="center" valign="middle">2016-04-28</td>
          <td align="center" valign="middle">
          	  <a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1565&amp;page=1&amp;selectclassid=&amp;selectcount=">
              	 <img src="./edit.gif" width="16" height="16" style="border:none; text-decoration:none;">
              </a>
          </td>
          <td align="center" valign="middle">
          	  <img src="./delete.gif" width="16" height="16" onclick="delrec(1565,&#39;hbinfodate&#39;,&#39;创业那些事&amp;互联网+大赛指导（徐俊祥）&#39;,&#39;1&#39;,&#39;&#39;,&#39;&#39;)">
          </td>
        </tr>
	     
        <tr style="background-color: rgb(255, 255, 255);">
          <td align="center">
          	  <input type="checkbox" name="eng_id[]" id="eng_id[]" value="1564">
              <input type="hidden" name="selectdeltable" id="selectdeltable" value="hbinfodate">         
         </td>
          <td align="left" valign="middle">
          	<a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1564&amp;page=1&amp;selectclassid=&amp;selectcount=">
            <span style="color:">创业那些事&amp;互联网+大赛指导（徐俊祥）</span>            </a>
          </td>
          <td align="center" valign="middle">人文社会 - </td>
          <td align="center" valign="middle">1</td>
          <td align="center" valign="middle">1</td>
          <td align="center" valign="middle">2016-04-28</td>
          <td align="center" valign="middle">
          	  <a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1564&amp;page=1&amp;selectclassid=&amp;selectcount=">
              	 <img src="./edit.gif" width="16" height="16" style="border:none; text-decoration:none;">
              </a>
          </td>
          <td align="center" valign="middle">
          	  <img src="./delete.gif" width="16" height="16" onclick="delrec(1564,&#39;hbinfodate&#39;,&#39;创业那些事&amp;互联网+大赛指导（徐俊祥）&#39;,&#39;1&#39;,&#39;&#39;,&#39;&#39;)">
          </td>
        </tr>
	     
        <tr style="background-color: rgb(245, 245, 245);">
          <td align="center">
          	  <input type="checkbox" name="eng_id[]" id="eng_id[]" value="1563">
              <input type="hidden" name="selectdeltable" id="selectdeltable" value="hbinfodate">         
         </td>
          <td align="left" valign="middle">
          	<a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1563&amp;page=1&amp;selectclassid=&amp;selectcount=">
            <span style="color:">The Universe has Spoken（David Blair报告会）</span>            </a>
          </td>
          <td align="center" valign="middle">人文社会 - </td>
          <td align="center" valign="middle">1</td>
          <td align="center" valign="middle">1</td>
          <td align="center" valign="middle">2016-04-27</td>
          <td align="center" valign="middle">
          	  <a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1563&amp;page=1&amp;selectclassid=&amp;selectcount=">
              	 <img src="./edit.gif" width="16" height="16" style="border:none; text-decoration:none;">
              </a>
          </td>
          <td align="center" valign="middle">
          	  <img src="./delete.gif" width="16" height="16" onclick="delrec(1563,&#39;hbinfodate&#39;,&#39;The Universe has Spoken（David Blair报告会）&#39;,&#39;1&#39;,&#39;&#39;,&#39;&#39;)">
          </td>
        </tr>
	     
        <tr style="background-color: rgb(255, 255, 255);">
          <td align="center">
          	  <input type="checkbox" name="eng_id[]" id="eng_id[]" value="1558">
              <input type="hidden" name="selectdeltable" id="selectdeltable" value="hbinfodate">         
         </td>
          <td align="left" valign="middle">
          	<a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1558&amp;page=1&amp;selectclassid=&amp;selectcount=">
            <span style="color:">“我的中国心”——航天人生艰苦创业回忆录（阮崇智）</span>            </a>
          </td>
          <td align="center" valign="middle">科学技术 - </td>
          <td align="center" valign="middle">2</td>
          <td align="center" valign="middle">1</td>
          <td align="center" valign="middle">2016-04-26</td>
          <td align="center" valign="middle">
          	  <a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1558&amp;page=1&amp;selectclassid=&amp;selectcount=">
              	 <img src="./edit.gif" width="16" height="16" style="border:none; text-decoration:none;">
              </a>
          </td>
          <td align="center" valign="middle">
          	  <img src="./delete.gif" width="16" height="16" onclick="delrec(1558,&#39;hbinfodate&#39;,&#39;“我的中国心”——航天人生艰苦创业回忆录（阮崇智）&#39;,&#39;1&#39;,&#39;&#39;,&#39;&#39;)">
          </td>
        </tr>
	     
        <tr style="background-color: rgb(245, 245, 245);">
          <td align="center">
          	  <input type="checkbox" name="eng_id[]" id="eng_id[]" value="1557">
              <input type="hidden" name="selectdeltable" id="selectdeltable" value="hbinfodate">         
         </td>
          <td align="left" valign="middle">
          	<a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1557&amp;page=1&amp;selectclassid=&amp;selectcount=">
            <span style="color:">“我的中国心”——航天人生艰苦创业回忆录（阮崇智）</span>            </a>
          </td>
          <td align="center" valign="middle">科学技术 - </td>
          <td align="center" valign="middle">1</td>
          <td align="center" valign="middle">1</td>
          <td align="center" valign="middle">2016-04-26</td>
          <td align="center" valign="middle">
          	  <a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1557&amp;page=1&amp;selectclassid=&amp;selectcount=">
              	 <img src="./edit.gif" width="16" height="16" style="border:none; text-decoration:none;">
              </a>
          </td>
          <td align="center" valign="middle">
          	  <img src="./delete.gif" width="16" height="16" onclick="delrec(1557,&#39;hbinfodate&#39;,&#39;“我的中国心”——航天人生艰苦创业回忆录（阮崇智）&#39;,&#39;1&#39;,&#39;&#39;,&#39;&#39;)">
          </td>
        </tr>
	     
        <tr style="background-color: rgb(255, 255, 255);">
          <td align="center">
          	  <input type="checkbox" name="eng_id[]" id="eng_id[]" value="1556">
              <input type="hidden" name="selectdeltable" id="selectdeltable" value="hbinfodate">         
         </td>
          <td align="left" valign="middle">
          	<a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1556&amp;page=1&amp;selectclassid=&amp;selectcount=">
            <span style="color:">本科生党员骨干培训班、研究生党支部书记培训班 暨教育部“两学一做”专题网络培训班   开班典礼</span>            </a>
          </td>
          <td align="center" valign="middle">网上党校 - </td>
          <td align="center" valign="middle">1</td>
          <td align="center" valign="middle">256</td>
          <td align="center" valign="middle">2016-04-20</td>
          <td align="center" valign="middle">
          	  <a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1556&amp;page=1&amp;selectclassid=&amp;selectcount=">
              	 <img src="./edit.gif" width="16" height="16" style="border:none; text-decoration:none;">
              </a>
          </td>
          <td align="center" valign="middle">
          	  <img src="./delete.gif" width="16" height="16" onclick="delrec(1556,&#39;hbinfodate&#39;,&#39;本科生党员骨干培训班、研究生党支部书记培训班 暨教育部“两学一做”专题网络培训班   开班典礼&#39;,&#39;1&#39;,&#39;&#39;,&#39;&#39;)">
          </td>
        </tr>
	     
        <tr style="background-color: rgb(245, 245, 245);">
          <td align="center">
          	  <input type="checkbox" name="eng_id[]" id="eng_id[]" value="1553">
              <input type="hidden" name="selectdeltable" id="selectdeltable" value="hbinfodate">         
         </td>
          <td align="left" valign="middle">
          	<a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1553&amp;page=1&amp;selectclassid=&amp;selectcount=">
            <span style="color:">西方艺术鉴赏</span>            </a>
          </td>
          <td align="center" valign="middle">艺术 - </td>
          <td align="center" valign="middle">1</td>
          <td align="center" valign="middle">1</td>
          <td align="center" valign="middle">2016-04-19</td>
          <td align="center" valign="middle">
          	  <a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1553&amp;page=1&amp;selectclassid=&amp;selectcount=">
              	 <img src="./edit.gif" width="16" height="16" style="border:none; text-decoration:none;">
              </a>
          </td>
          <td align="center" valign="middle">
          	  <img src="./delete.gif" width="16" height="16" onclick="delrec(1553,&#39;hbinfodate&#39;,&#39;西方艺术鉴赏&#39;,&#39;1&#39;,&#39;&#39;,&#39;&#39;)">
          </td>
        </tr>
	     
        <tr style="background-color: rgb(255, 255, 255);">
          <td align="center">
          	  <input type="checkbox" name="eng_id[]" id="eng_id[]" value="1552">
              <input type="hidden" name="selectdeltable" id="selectdeltable" value="hbinfodate">         
         </td>
          <td align="left" valign="middle">
          	<a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1552&amp;page=1&amp;selectclassid=&amp;selectcount=">
            <span style="color:">第二十届新星杯MV——一生有你</span>            </a>
          </td>
          <td align="center" valign="middle">瓜子视角 - </td>
          <td align="center" valign="middle">1</td>
          <td align="center" valign="middle">255</td>
          <td align="center" valign="middle">2016-04-09</td>
          <td align="center" valign="middle">
          	  <a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1552&amp;page=1&amp;selectclassid=&amp;selectcount=">
              	 <img src="./edit.gif" width="16" height="16" style="border:none; text-decoration:none;">
              </a>
          </td>
          <td align="center" valign="middle">
          	  <img src="./delete.gif" width="16" height="16" onclick="delrec(1552,&#39;hbinfodate&#39;,&#39;第二十届新星杯MV——一生有你&#39;,&#39;1&#39;,&#39;&#39;,&#39;&#39;)">
          </td>
        </tr>
	     
        <tr style="background-color: rgb(245, 245, 245);">
          <td align="center">
          	  <input type="checkbox" name="eng_id[]" id="eng_id[]" value="1551">
              <input type="hidden" name="selectdeltable" id="selectdeltable" value="hbinfodate">         
         </td>
          <td align="left" valign="middle">
          	<a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1551&amp;page=1&amp;selectclassid=&amp;selectcount=">
            <span style="color:">张丹报告会：张丹</span>            </a>
          </td>
          <td align="center" valign="middle">国防外交 - </td>
          <td align="center" valign="middle">2</td>
          <td align="center" valign="middle">255</td>
          <td align="center" valign="middle">2016-04-05</td>
          <td align="center" valign="middle">
          	  <a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1551&amp;page=1&amp;selectclassid=&amp;selectcount=">
              	 <img src="./edit.gif" width="16" height="16" style="border:none; text-decoration:none;">
              </a>
          </td>
          <td align="center" valign="middle">
          	  <img src="./delete.gif" width="16" height="16" onclick="delrec(1551,&#39;hbinfodate&#39;,&#39;张丹报告会：张丹&#39;,&#39;1&#39;,&#39;&#39;,&#39;&#39;)">
          </td>
        </tr>
	     
        <tr style="background-color: rgb(255, 255, 255);">
          <td align="center">
          	  <input type="checkbox" name="eng_id[]" id="eng_id[]" value="1550">
              <input type="hidden" name="selectdeltable" id="selectdeltable" value="hbinfodate">         
         </td>
          <td align="left" valign="middle">
          	<a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1550&amp;page=1&amp;selectclassid=&amp;selectcount=">
            <span style="color:">张丹报告会：张丹</span>            </a>
          </td>
          <td align="center" valign="middle">国防外交 - </td>
          <td align="center" valign="middle">1</td>
          <td align="center" valign="middle">255</td>
          <td align="center" valign="middle">2016-04-05</td>
          <td align="center" valign="middle">
          	  <a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1550&amp;page=1&amp;selectclassid=&amp;selectcount=">
              	 <img src="./edit.gif" width="16" height="16" style="border:none; text-decoration:none;">
              </a>
          </td>
          <td align="center" valign="middle">
          	  <img src="./delete.gif" width="16" height="16" onclick="delrec(1550,&#39;hbinfodate&#39;,&#39;张丹报告会：张丹&#39;,&#39;1&#39;,&#39;&#39;,&#39;&#39;)">
          </td>
        </tr>
	     
        <tr style="background-color: rgb(245, 245, 245);">
          <td align="center">
          	  <input type="checkbox" name="eng_id[]" id="eng_id[]" value="1545">
              <input type="hidden" name="selectdeltable" id="selectdeltable" value="hbinfodate">         
         </td>
          <td align="left" valign="middle">
          	<a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1545&amp;page=1&amp;selectclassid=&amp;selectcount=">
            <span style="color:">聚合引发的自组装：高分子与超分子的完美结合(Steven P. Armes报告会)</span>            </a>
          </td>
          <td align="center" valign="middle">科学技术 - </td>
          <td align="center" valign="middle">1</td>
          <td align="center" valign="middle">255</td>
          <td align="center" valign="middle">2016-04-03</td>
          <td align="center" valign="middle">
          	  <a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?action=edit&amp;id=1545&amp;page=1&amp;selectclassid=&amp;selectcount=">
              	 <img src="./edit.gif" width="16" height="16" style="border:none; text-decoration:none;">
              </a>
          </td>
          <td align="center" valign="middle">
          	  <img src="./delete.gif" width="16" height="16" onclick="delrec(1545,&#39;hbinfodate&#39;,&#39;聚合引发的自组装：高分子与超分子的完美结合(Steven P. Armes报告会)&#39;,&#39;1&#39;,&#39;&#39;,&#39;&#39;)">
          </td>
        </tr>
	
        <tr style="background-color: rgb(255, 255, 255);">
          <td align="center">&nbsp;</td>
          <td align="left">
            <input type="button" class="anniu" onclick="alls();" value="全部选择">
            <input type="button" class="anniu" onclick="unalls();" value="全部清空">
            <input type="button" class="anniu" onclick="resets();" value="反向选择">
            <input type="submit" class="anniu" name="submit" value="确认删除">
            <input type="hidden" name="panduan" value="xiugai">
            <input type="hidden" name="fhurl" value="hb_infodate.php">
          </td>
          <td colspan="5" align="right"><span style="border:#8D0130 1px solid;width:16px;background-color:#D31556; height:16px;display:inline-block; line-height:16px;text-align:center;color:#fff;margin-right:3px;">1</span><a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?page=2" style="border:#999 1px solid;background-color:#999; width:16px; height:16px;display:inline-block;text-align:center; line-height:16px;color:#fff; margin-right:3px;">2</a><a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?page=3" style="border:#999 1px solid;background-color:#999; width:16px; height:16px;display:inline-block;text-align:center; line-height:16px;color:#fff; margin-right:3px;">3</a><a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?page=4" style="border:#999 1px solid;background-color:#999; width:16px; height:16px;display:inline-block;text-align:center; line-height:16px;color:#fff; margin-right:3px;">4</a><a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?page=5" style="border:#999 1px solid;background-color:#999; width:16px; height:16px;display:inline-block;text-align:center; line-height:16px;color:#fff; margin-right:3px;">5</a><a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?page=6" style="border:#999 1px solid;background-color:#999; width:16px; height:16px;display:inline-block;text-align:center; line-height:16px;color:#fff; margin-right:3px;">6</a><a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?page=7" style="border:#999 1px solid;background-color:#999; width:16px; height:16px;display:inline-block;text-align:center; line-height:16px;color:#fff; margin-right:3px;">7</a><a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?page=8" style="border:#999 1px solid;background-color:#999; width:16px; height:16px;display:inline-block;text-align:center; line-height:16px;color:#fff; margin-right:3px;">8</a><a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?page=9" style="border:#999 1px solid;background-color:#999; width:16px; height:16px;display:inline-block;text-align:center; line-height:16px;color:#fff; margin-right:3px;">9</a><a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?page=10" style="border:#999 1px solid;background-color:#999; width:16px; height:16px;display:inline-block;text-align:center; line-height:16px;color:#fff; margin-right:3px;">10</a><a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?page=11" style="border:#999 1px solid;background-color:#999; width:16px; height:16px;display:inline-block;text-align:center; line-height:16px;color:#fff; margin-right:3px;">11</a><a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?page=12" style="border:#999 1px solid;background-color:#999; width:16px; height:16px;display:inline-block;text-align:center; line-height:16px;color:#fff; margin-right:3px;">12</a>...<a href="http://v.stuclub.cn/yt_manage/hb_infodate.php?page=17" style="border:#D38B00 1px solid;background-color:#999;width:16px; height:16px;display:inline-block;text-align:center; line-height:16px;color:#fff; margin-right:3px;">17</a></td>
        </tr>
      <!--form1 end-->
     </tbody></table>
</div>

</body>
</html>