




/*
     FILE ARCHIVED ON 3:47:56 May 28, 2010 AND RETRIEVED FROM THE
     INTERNET ARCHIVE ON 23:10:45 Sep 24, 2015.
     JAVASCRIPT APPENDED BY WAYBACK MACHINE, COPYRIGHT INTERNET ARCHIVE.

     ALL OTHER CONTENT MAY ALSO BE PROTECTED BY COPYRIGHT (17 U.S.C.
     SECTION 108(a)(3)).
*/
/**
 * Accordian Class
 * 
 * @author G.S.Navin Raj Kumar /web/20100528034756/http://dezinerfolio.com (initial developper)
 * @author Fabian Kunz, /web/20100528034756/http://www.fadth-design.ch (improvements and simplifications)
 * 
 * @param {String}	id ID of the container node
 * @param {Int}		speed animation speed; 0 turns off animation
 * @param {String}	css  CSS-class to highlight the active header.
 * 						Assign class "selected" to the header that should be initially opened
 * @param {bool}		ah true: animate height
 * @param {bool}		ao true: animate opacity
 */
Accordian=function(id,speed,css,ah,ao){var $=function(d){return document.getElementById(d);};var _cc=function(d,v){var s=d.className.split(/\s+/);for(var i=0;i<s.length;i++){if(s[i]==v){s.splice(i,1);d.className=s.join(' ');return;}}};var _int=function(){_v-=_v/_s;if(_v<0.001){_v=0;clearInterval(_hnd);}_set(_e,1-_v);_set(_c,_v);};var _click=function(){if(_curr==this)return;_last=_curr;_curr=this;_cc(_last,_css);_curr.className+=' '+_css;_e=_curr.content;_c=_last.content;_e.style.zIndex=9999;_c.style.zIndex=0;if(!_s){_set(_e,1);_set(_c,0);return;}_v=1;clearInterval(_hnd);_hnd=setInterval(_int,10);};var _curr={className:"",content:{style:{}}};var _last;var _css=css;var _s=speed;var _hnd;var _c,_e;var _v;var node=$(id);node.style.display="block";var arr=node.getElementsByTagName('div');var coll=[];ah=ah==undefined?true:ah;ao=ao==undefined?true:ao;var _set="_set = function(d, v) {";if(ah)_set+="d.style.height = (d, Math.round(v * d.maxh)) + 'px';";if(ao)_set+=arr[0].style.opacity==undefined?"d.style.filter = 'alpha(opacity=' + (v * 100) + ')';":"d.style.opacity = v;";eval(_set+"}");var pos;for(var i=0;i<arr.length;i++){id=arr[i].id;pos=id.indexOf('-header');if(pos>-1)coll.push(id.substr(0,pos));}var h,c,sel;for(i=0;i<coll.length;i++){if(c=$(coll[i]+"-content")){h=$(coll[i]+"-header");if(ah){c.style.overflow='hidden';c.maxh=c.offsetHeight;}h.content=c;h.onclick=_click;_set(c,0);if(h.className.indexOf(" selected")>-1)sel=h;}}if(sel!=undefined){_s=0;sel.onclick();_s=speed;}};