function trim(str){
return str.replace(/(^\s*)|(\s*$)/g, "");
}

/**** 是否为合法外网IP地址 ****/
function isIP(value) {
	var reg_ip = new RegExp('^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$');
    if ( ! reg_ip.exec(value) ) {
        return false; 
    }
	
	var strs = value.split(".");
	if( strs.length != 4) {
		return false; 
	}
	for (var i=0;i<strs.length ;i++ ) {
		if (strs[i].indexOf("0") == 0 && strs[i].length > 1) {
			return false;
		}
    else if (parseInt(strs[i])>255 || parseInt(strs[i])<0) {
			return false;
		}
  }
    if (value.search(/^192\.168\./) != -1 || value.search(/^172/) != -1 || value.search(/^127\.0/) != -1 ) {
        return false;
    }
	return true; 
}

/**** 是否为合法IP地址 ****/
function isAllIP(value, innerIP) {
	var reg_ip = new RegExp('^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$');
    if ( ! reg_ip.exec(value) ) {
        return false; 
    }
	
	var strs = value.split("."); 
	if( strs.length != 4) {
		return false; 
	}
	for (var i=0;i<strs.length ;i++ ) {   
		if (strs[i].indexOf("0") == 0 && strs[i].length > 1) {
			return false;
		}
    else if (parseInt(strs[i])>255 || parseInt(strs[i])<0) {
			return false;
		}
    }
    if (innerIP == false) {
        if (value.search(/^192\.168\./) != -1 || value.search(/^172/) != -1 || value.search(/^127\.0/) != -1 ) {
            return false;
        }
    }
	return true; 
}

/**** 是否为合法Email地址 ****/
function isEmail(value) {
    if(value.search(/^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/) == -1)
        return false;
    else
        return true;
}

/**** 是否为合法的国内电话号码 ****/
function isTelphone(value) {
    if(value.search(/^(\d{3}-\d{8}|\d{4}-\d{7}|\d{4}-\d{8})$/) == -1)
        return false;
    else
        return true;
}

/**** 是否为合法的手机号码，为了兼容国际写法，目前只判断了是否是+数字 ****/
function isMobilePhone(value) {
    if(value.search(/^(\+\d{2,3})?\d{11}$/) == -1)
        return false;
    else
        return true;
}

/**** 是否为合法的国内邮政编码 ****/
function isZipcode(value) {
    if(value.search(/^[1-9]\d{5}$/) == -1)
        return false;
    else
        return true;
}

/**** 是否为合法的QQ号 ****/
function isQQ(value) {
    if(value.search(/^[1-9][0-9]{4,}$/) == -1)
        return false;
    else
        return true;
}

/**** 是否为数字串，length等于0不限制长度 ****/
function isNumber(value, length) {
    var regx;
    if(length==0)
        regx = new RegExp("^\\d*$");
    else
        regx = new RegExp("^\\d{" + length + "}$");
    if(value.search(regx) == -1)
        return false;
    else
        return true;
}

/*Error message Tooltips*/
$(document).ready(function(){
	/*点击隐藏错误提示,如果不想让提示点击消失,需要加上class='not_click_hide'*/
	$('.control-group input').not('.not_click_hide').focus(function(){
		hideTooltips($(this).parent().parent().attr('id'));
	});
});
/*
 *msgid:想让tooltips出现的地方的id
 *msg:提示的内容
 *time:自动消失的时间，如果不想让提示自动消失，则此参数不写
 */
function showTooltips(msgid,msg,time){
	if (msgid==''){ return; }
	if (msg==''){ msg='Error!'; }
	$('#'+msgid).prepend("<div class='for_fix_ie6_bug' style='position:relative;'><div class='tooltips_main'><div class='tooltips_box'><div class='tooltips'><div class='msg'>"+msg+"</div></div><div class='ov'></div></div></div></div>");
	$('#'+msgid+' .tooltips_main').fadeIn("slow").animate({ marginTop: "-23px"}, {queue:true, duration:400});
	try{
		if(typeof time != "undefined"){
			setTimeout('hideTooltips("'+msgid+'")',time);
		}
	}catch(err){}
	
}
function hideTooltips(msgid){
	try{
		$('#'+msgid).find('.tooltips_main').fadeOut("slow");
		$('#'+msgid).find('.tooltips_main').remove();
	}catch(e){}
}
function hideAllTooltips(){
	$('.tooltips_main').fadeOut("slow");
	$('.tooltips_main').remove();
}
/*End error message tooltips*/
