var ColorImg;
var ColorValue;
function hideColourPallete() {
	document.getElementById("colourPalette").style.visibility="hidden";
}
function Getcolor(img_val,input_val){
	var obj = document.getElementById("colourPalette");
	ColorImg = img_val;
	ColorValue = document.getElementById(input_val);
	if (obj){
	obj.style.left = getOffsetLeft(ColorImg) + "px";
	obj.style.top = (getOffsetTop(ColorImg) + ColorImg.offsetHeight) + "px";
	if (obj.style.visibility=="hidden")
	{
	obj.style.visibility="visible";
	}else {
	obj.style.visibility="hidden";
	}
	}
}
//Colour pallete top offset
function getOffsetTop(elm) {
	var mOffsetTop = elm.offsetTop;
	var mOffsetParent = elm.offsetParent;
	while(mOffsetParent){
		mOffsetTop += mOffsetParent.offsetTop;
		mOffsetParent = mOffsetParent.offsetParent;
	}
	return mOffsetTop;
}

//Colour pallete left offset
function getOffsetLeft(elm) {
	var mOffsetLeft = elm.offsetLeft;
	var mOffsetParent = elm.offsetParent;
	while(mOffsetParent) {
		mOffsetLeft += mOffsetParent.offsetLeft;
		mOffsetParent = mOffsetParent.offsetParent;
	}
	return mOffsetLeft;
}
function setColor(color)
{
	if (ColorValue){ColorValue.value = color;}
	if (ColorImg){ColorImg.style.backgroundColor = color;}
	document.getElementById("colourPalette").style.visibility="hidden";
}