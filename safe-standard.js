var psCsiksid = "fWtNaRk8z2lr";
// safe-standard@gecko.js

var psCsikiso;
try {
	psCsikiso = (opener != null) && (typeof(opener.name) != "unknown") && (opener.psCsikwid != null);
} catch(e) {
	psCsikiso = false;
}
if (psCsikiso) {
	window.psCsikwid = opener.psCsikwid + 1;
	psCsiksid = psCsiksid + "_" + window.psCsikwid;
} else {
	window.psCsikwid = 1;
}
function psCsikn() {
	return (new Date()).getTime();
}
var psCsiks = psCsikn();
function psCsikst(f, t) {
	if ((psCsikn() - psCsiks) < 7200000) {
		return setTimeout(f, t * 1000);
	} else {
		return null;
	}
}
var psCsikol = false;
function psCsikow() {
	if (psCsikol || (1 == 1)) {
		var pswo = "menubar=0,location=0,scrollbars=auto,resizable=1,status=0,width=650,height=680";
		var pswn = "pscw_" + psCsikn();
		var url = "http://messenger.providesupport.com/messenger/merabino.html?ps_s=" + psCsiksid;
		if (false && !false) {
			window.open(url, pswn, pswo); 
		} else {
			var w = window.open("", pswn, pswo); 
			try {
				w.document.body.innerHTML += '<form id="pscf" action="http://messenger.providesupport.com/messenger/merabino.html" method="post" target="' + pswn + '" style="display:none"><input type="hidden" name="ps_s" value="'+psCsiksid+'"></form>';
				w.document.getElementById("pscf").submit();
			} catch (e) {
				w.location.href = url;
			}
		}
	} else if (1 == 2) {
		document.location = "http\u003a\u002f\u002f";
	}
}
var psCsikil;
var psCsikit;
function psCsikpi() {
	var il;
	if (3 == 2) {
		il = window.pageXOffset + 50;
	} else if (3 == 3) {
		il = (window.innerWidth * 50 / 100) + window.pageXOffset;
	} else {
		il = 50;
	}
	il -= (271 / 2);
	var it;
	if (3 == 2) {
		it = window.pageYOffset + 50;
	} else if (3 == 3) {
		it = (window.innerHeight * 50 / 100) + window.pageYOffset;
	} else {
		it = 50;
	}
	it -= (191 / 2);
	if ((il != psCsikil) || (it != psCsikit)) {
		psCsikil = il;
		psCsikit = it;
		var d = document.getElementById('ciCsik');
		if (d != null) {
			d.style.left  = Math.round(psCsikil) + "px";
			d.style.top  = Math.round(psCsikit) + "px";
		}
	}
	setTimeout("psCsikpi()", 100);
}
var psCsiklc = 0;
function psCsiksi(t) {
	window.onscroll = psCsikpi;
	window.onresize = psCsikpi;
	psCsikpi();
	psCsiklc = 0;
	var url = "http://messenger.providesupport.com/" + ((t == 2) ? "auto" : "chat") + "-invitation/merabino.html?ps_s=" + psCsiksid + "&ps_t=" + psCsikn() + "";
	var d = document.getElementById('ciCsik');
	if (d != null) {
		d.innerHTML = '<iframe allowtransparency="true" style="background:transparent;width:271;height:191" src="' + url + 
			'" onload="psCsikld()" frameborder="no" width="271" height="191" scrolling="no"></iframe>';
	}
}
function psCsikld() {
	if (psCsiklc == 1) {
		var d = document.getElementById('ciCsik');
		if (d != null) {
			d.innerHTML = "";
		}
	}
	psCsiklc++;
}
if (false) {
	psCsiksi(1);
}
var psCsikd = document.getElementById('scCsik');
if (psCsikd != null) {
	if (psCsikol || (1 == 1) || (1 == 2)) {
		var ctt = "";
		if (ctt != "") {
			tt = 'alt="' + ctt + '" title="' + ctt + '"';
		} else {
			tt = '';
		}
		if (false) {
			var p1 = '<table style="display:inline;border:0px;border-collapse:collapse;border-spacing:0;"><tr><td style="padding:0px;text-align:center;border:0px;vertical-align:middle"><a href="#" onclick="psCsikow(); return false;"><img name="psCsikimage" src="http://downloads-templates.com/images/chat-off.gif"  style="border:0;display:block;margin:auto"';
			var p2 = '<td style="padding:0px;text-align:center;border:0px;vertical-align:middle"><a href="http://www.providesupport.com/pb/merabino" target="_blank"><img src="http://image.providesupport.com/';
			var p3 = 'style="border:0;display:block;margin:auto"></a></td></tr></table>';
			if ((0 >= 140) || (0 >= 0)) {
				psCsikd.innerHTML = p1+tt+'></a></td></tr><tr>'+p2+'lcbpsh.gif" width="140" height="17"'+p3;
			} else {
				psCsikd.innerHTML = p1+tt+'></a></td>'+p2+'lcbpsv.gif" width="17" height="140"'+p3;
			}
		} else {
			psCsikd.innerHTML = '<a href="#" onclick="psCsikow(); return false;"><img name="psCsikimage" src="http://downloads-templates.com/images/chat-off.gif"  border="0"'+tt+'></a>';
		}
	} else {
		psCsikd.innerHTML = '';
	}
}
var psCsikop = false;
function psCsikco() {
	var w1 = psCsikci.width - 1;
	psCsikol = (w1 & 1) != 0;
	psCsiksb(psCsikol ? "http://downloads-templates.com/images/chat-on.gif" : "http://downloads-templates.com/images/chat-off.gif");
	psCsikscf((w1 & 2) != 0);
	var h = psCsikci.height;

	if (h == 1) {
		psCsikop = false;

	// manual invitation
	} else if ((h == 2) && (!psCsikop)) {
		psCsikop = true;
		psCsiksi(1);
		//alert("Chat invitation in standard code");
		
	// auto-invitation
	} else if ((h == 3) && (!psCsikop)) {
		psCsikop = true;
		psCsiksi(2);
		//alert("Auto invitation in standard code");
	}
}
var psCsikci = new Image();
psCsikci.onload = psCsikco;
var psCsikpm = false;
var psCsikcp = psCsikpm ? 30 : 60;
var psCsikct = null;
function psCsikscf(p) {
	if (psCsikpm != p) {
		psCsikpm = p;
		psCsikcp = psCsikpm ? 30 : 60;
		if (psCsikct != null) {
			clearTimeout(psCsikct);
			psCsikct = null;
		}
		psCsikct = psCsikst("psCsikrc()", psCsikcp);
	}
}
function psCsikrc() {
	psCsikct = psCsikst("psCsikrc()", psCsikcp);
	try {
		psCsikci.src = "http://image.providesupport.com/cmd/merabino?" + "ps_t=" + psCsikn() + "&ps_l=" + escape(document.location) + "&ps_r=" + escape(document.referrer) + "&ps_s=" + psCsiksid + "" + "";
	} catch(e) {
	}
}
psCsikrc();
var psCsikcb = "http://downloads-templates.com/images/chat-off.gif";
function psCsiksb(b) {
	if (psCsikcb != b) {
		var i = document.images['psCsikimage'];
		if (i != null) {
			i.src = b;
		}
		psCsikcb = b;
	}
}

