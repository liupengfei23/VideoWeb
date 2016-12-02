;(function(x){
if(top!=self && x.sitetype!=1){document.body.innerHTML+='iframe not allowed!';return false;};
var doc = window.document,d=navigator.userAgent;
var rich ={dm:'http://img.feitian001.com/',comurl : 'http://www.feitian001.com',
	ffb_url   : 'http://'+x.domain+'/r/ffb.php?ep=',track_url : 'http://'+x.domain+'/f/track.php?step=1&ext=',
	getVer    : function(){if (/msie (\d+\.\d)/i.test(d)){return parseFloat(RegExp.$1);}else{return 0;}}, 
	other     : /firefox/i.test(d) || /webkit/i.test(d),
	isOpera   : /opera/i.test(d),
	getCookie : function(n){var sRE = '(?:; )?'+n+'=([^;]*);?';var oRE = new RegExp(sRE);if(oRE.test(doc.cookie)){return decodeURIComponent(RegExp['$1']);}return '';},
	setCookie : function(n,v,e){doc.cookie=n+'='+escape(v)+';expires='+e.toGMTString()+';path=/';},
	addEvent  : function(eventName,element,fn){element.attachEvent ? element.attachEvent("on"+eventName,fn) : element.addEventListener(eventName,fn,false)},
	creEle : function(stype,atts){
			var ele = null;
			if(typeof(stype)=="undefined" || stype=="") stype='div';
			try{ele = doc.createElement(stype);
				if(typeof(atts) != "undefined" && atts!=null && typeof(atts)=="object"){
					for(var attr in atts){
						if(attr=="class"){
							ele.setAttribute("className",atts[attr]);
							ele.setAttribute("class",atts[attr]);
						}else if(attr=="style"){
							ele.style.cssText=ele.style.cssText+atts[attr];
						}else{
							ele.setAttribute(attr,atts[attr]);
						}
					}
				}
			}
			catch(e){
				alert(e.name + ": " + e.message);
			}
			return ele;
	},
	addChild : function(pe,ce){pe.appendChild(ce);},
	player : function(src,w,h){	
			var thtml="<object classid='clsid:d27cdb6e-ae6d-11cf-96b8-444553540000' codebase='http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,24,0'";
			thtml+=" width='"+w+"' height='"+h+"' align='middle'><param name='movie' value='"+src+"'><param name='quality' value='high'>"
			thtml+="<param name='wmode' value='transparent'><embed pluginspage='http://www.macromedia.com/go/getflashplayer'"
			thtml+=" width='"+w+"' height='"+h+"' align='middle' type='application/x-shockwave-flash' src='"+src+"' quality='high' wmode='transparent'></embed></object>"
			return thtml;
	},
	show : function(e,p){
		var bd = doc.getElementsByTagName("body")[0];
		if(p!=null && p=="start")
			bd.insertBefore(e, bd.firstChild);
		else
			bd.appendChild(e);
	},
	isExist : function(id){
		var obj = doc.getElementById(id);
		return (obj == null || obj == undefined) ? false : true;
	},
	reSetPos : function(sid,offset,isRight){
		if(sid == undefined || sid == '' || sid == null) return;
		var bdy = (doc.compatMode.toLowerCase() == 'css1compat') ? doc.documentElement:doc.body;
		var obj=doc.getElementById(sid);
		if(obj!=null){
			var mh = obj.offsetHeight;
			var mw = obj.offsetWidth;
			var bw = (offset == undefined || offset==null) ? 0 : offset;
			obj.style.top = bdy.scrollTop+bdy.clientHeight-mh-2*bw +'px';
			if(isRight==1){
				obj.style.left = '0px';
			}else{
				obj.style.left = bdy.scrollLeft+bdy.clientWidth-mw-2*bw +'px';
			}
		}
	},
	isTop : function(myself){
		var _check_other = ['div','iframe'];
		for(var t=0; t<_check_other.length; t++){
			var divs = doc.getElementsByTagName(_check_other[t]);
			var len = divs.length;
			for(var i=0;i<len;i++){
			    var flag = false;
			    for(var self in myself){
					if(myself[self]==divs[i].id){
						flag = true;break;
					}
				}
				if (flag){ 
					divs[i].style.zIndex = 2147483647;
				}else if(divs[i].style.zIndex >= 100){ 
					divs[i].style.zIndex--; 
				}
			}
		}
	}
};
rich.isFixed = function(){var q=rich.getVer();return (rich.other||(q>=7 && doc.compatMode!='BackCompat')) ? true : false;};
rich.ffb = function(a){try{var img = new Image();img.src = rich.ffb_url+a;}catch(e){alert(e.name + ":" + e.message);}};
rich.crePlayer = function(src,w,h,dst,ep){
	var div = rich.creEle("div",{style:"margin:0;padding:0;width:"+w+"px;height:"+h+"px;"});
	var div_t=rich.creEle('div',{'style':'position:absolute;z-index:2;width:26px;height:12px;top:'+(h-13)+'px;background:url("'+rich.dm+'/html/click/adtag.png") no-repeat;'});
	rich.addChild(div,div_t);
	var div_sub = rich.creEle("div",{style:"position:absolute;z-index:3;"});
	rich.addChild(div,div_sub);
	var alink = rich.creEle("a",{href:dst+'&ext='+ep,target:"_blank",style:'width:'+w+'px;height:'+h+'px;display:block;filter:Alpha(opacity=0.1);opacity:0.1;background:url("'+rich.dm+'/img/r/dot.gif");'});
	rich.addChild(div_sub,alink);
	var image = rich.creEle("img",{src:rich.dm+'/img/r/dot.gif',border:0,width:w,height:h,style:'background-color:transparent'});
	rich.addChild(alink,image);
	div.innerHTML = div.innerHTML + rich.player(src,w,h);
	rich.addEvent("click",div,function(e){var img=new Image();img.src=rich.track_url+ep;});
	return div;
};
rich.creClose=function(css,maxhour){
	var div = rich.creEle("div",css);
	var img = rich.creEle("img",{style:"width:"+div.style.width+";height:"+div.style.height+";cursor:pointer",src:rich.dm+'/img/r/close.gif',ck:css.id+"_hide"});
	rich.addChild(div,img);
	img.ck = css.id+"_hide";
	img.keepclose = css.kc;
	img.onclick = function(e){
		e = e || window.event; 
		var src  = e.target || e.srcElement; 
		if(eval(src.keepclose)==true || eval(src.keepclose)=='true'){   
			var ex=new Date();
			ex.setTime(ex.getTime()+((maxhour==null)? 3600000 : 3600*1000*maxhour));
			rich.setCookie(src.ck,1,ex);
		}
		src.parentNode.parentNode.style.display="none";
	};
	return div;	
};
rich.creLogo = function(css){
    var div = rich.creEle('div',css);
	var alink = rich.creEle('a',{href : rich.comurl,target : '_blank'});
	var img = rich.creEle('img',{style:'width:60px; height:16px;border-style:none',src:rich.dm+'/img/r/logo.gif'});
	rich.addChild(alink,img);
	rich.addChild(div,alink);
	return div;
};
rich.init=function(info){
    if(info.keepClose && rich.getCookie(info.div_close_id+'_hide')){
		return;
	}
	var idx  = parseInt(rich.getCookie(info.cookiehead+'_fidx'));	
	if(!idx || idx>=info.asdata.length) idx=0;
	var oItem=info.asdata[idx];idx++;
	var ex=new Date();
	ex.setTime(ex.getTime()+172800000);
	rich.setCookie(info.cookiehead+'_fidx',idx,ex);
	var FB = rich.ffb(oItem["eps"]); 
	

	var div_attrs={'id' : info.rich_div_id,'style' : (rich.isFixed() ? 'position:fixed;bottom:'+info.offset+'px;' : 'position:absolute;bottom:'+info.offset+'px;')+'z-index: 2147483647;overflow:hidden;'+(info.rich_left==1?'left:'+info.offset+'px;':'right:'+info.offset+'px;') };
	var _cs_task_   = setInterval(function(){
		if(!rich.isExist(info.rich_div_id)){
			var div_p      = rich.creEle('div',div_attrs);  
			var div_player = rich.crePlayer(oItem['swfurl'],info.w,info.h,oItem['dsturl'],oItem['eps']);
			var close      = rich.creClose({id : info.div_close_id,style : "z-index:1999999;top:"+info.close_top+"px;left:"+info.close_left+"px;width:"+info.close_width+"px;height:"+info.close_height+"px;position:absolute;display:none;",kc : info.keepClose},info.keepHour);
			rich.addChild(div_p,div_player);
			if(info.richclose){
				rich.addChild(div_p,close);
			}
			if(info.showlogo){
				var logocss    = {style : 'z-index:1999999;top:'+(info.h-16)+'px;left:'+(info.w-60)+'px; width: 60px; height: 16px; position:absolute;'};
				var logo       = rich.creLogo(logocss);
				rich.addChild(div_p,logo);
			}
			rich.show(div_p);
			setTimeout(function(){try{document.getElementById(info.div_close_id).style.display='block';}catch(q){}},info.delaytime);
			if(info.flash){
				setTimeout(function(){try{setInterval(function(){var _mystyle=document.getElementById(info.rich_div_id).style;_mystyle.borderStyle='solid';if(_mystyle.borderColor!='red'){_mystyle.borderColor='red'}else{_mystyle.borderColor='yellow'}},400)}catch(q){}},5000);
			}
		}
		if(doc.body) {
			clearInterval(_cs_task_);
		}
	},1000);
	if(!rich.isFixed()){
		setInterval(function(){rich.reSetPos(info.rich_div_id,info.offset,info.rich_left);},info.interval);
	}
	if(info.isSetTop){
		var _cs_task_settop = setInterval(function(){rich.isTop(info.self_list);},info.interval);
	}
};
rich.init(x);
})(__ft_rich_info__);

