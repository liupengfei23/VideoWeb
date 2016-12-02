function delrec(delid,deltable,delname,page,selectclassid,selectcount)
{ 
   if(confirm("你确认要删除=="+ delname+"==？")==true)
   {window.location.href="?del=suredel&delid="+delid+"&deltable="+deltable+"&page="+page+"&selectclassid="+selectclassid+"&selectcount="+selectcount+""}
}

function delrecfz(delid,deltable,delzitable,delname)
{ 
   if(confirm("你确认要删除=="+ delname+"==吗？")==true)
   {window.location.href="?del=suredelfz&delid="+delid+"&deltable="+deltable+"&delzitable="+delzitable+""}
}

function fasong(fasongid,display,tablename,gainum,page,selectcount,fhurl)
{ 
   if(confirm("你确认此操作吗？")==true)
   {
	   window.location.href="?fasong=surefasong&fasongid="+fasongid+"&tablename="+tablename+"&display="+display+"&gainum="+gainum+"&page="+page+"&selectcount="+selectcount+"&fhurl="+fhurl+""
   }
}
/*============================================================================================*/
function alls(){
var sum = document.getElementsByName("eng_id[]");// 得到name是eng_id[]的元素的类型
for(var i=0;i<sum.length;i++){ //循环输出
   if(sum[i].type=="checkbox"){ //判断是否是checkbox
     sum[i].checked = true ; //是的话就选中
   }
}
}
function unalls(){
var sum = document.getElementsByName("eng_id[]");// 得到name是eng_id[]的元素的类型
for(var i=0;i<sum.length;i++){ //循环输出
   if(sum[i].type=="checkbox"){ //判断是否是checkbox
     sum[i].checked = false ; //是的话就不选中
   }
}
}
function resets(){
var sum = document.getElementsByName("eng_id[]");// 得到name是eng_id[]的元素的类型
for(var i=0;i<sum.length;i++){ //循环输出
   if(sum[i].type=="checkbox"){ //判断是否是checkbox
     if(sum[i].checked==true){    //判断是否选中
      sum[i].checked = false; //选中的让其不选择
     }
     else{      //判断是否没选
      sum[i].checked = true;   //没选中的让其选择
     } 
   }
}
}
function SelectAll() {
var checkboxs=document.getElementsByName("ch");
for (var i=0;i<checkboxs.length;i++) {
var e=checkboxs[i];
e.checked=!e.checked;
}
}
function changeBoxes(action){
var oForm = document.forms["myform"];
var oCheckBox = oForm.hobby;
for(var i=0;i<oCheckBox.length;i++)   //遍历每一个选项
   if(action<0)        //反选
    oCheckBox[i].checked = !oCheckBox[i].checked;
   else    //action为1是则全选，为0时则全不选
    oCheckBox[i].checked = action;
}
/*============================================================================================*/



