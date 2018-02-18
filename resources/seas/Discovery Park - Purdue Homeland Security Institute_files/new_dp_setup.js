




/*
     FILE ARCHIVED ON 15:51:49 May 27, 2010 AND RETRIEVED FROM THE
     INTERNET ARCHIVE ON 23:10:45 Sep 24, 2015.
     JAVASCRIPT APPENDED BY WAYBACK MACHINE, COPYRIGHT INTERNET ARCHIVE.

     ALL OTHER CONTENT MAY ALSO BE PROTECTED BY COPYRIGHT (17 U.S.C.
     SECTION 108(a)(3)).
*/
	$(function() {
		setupGallery();
		findOpenRows();
		//buzzSetup();
		hiddenInfoSetup();
		startArchive();
	});
	
function hiddenInfoSetup(){
	$("ul.hiddenInfo li h3").each(function(){
		var isShown = 0;
		$(this).click(function(){
			if(isShown == 0){
				$(this).removeClass("hidden");
				$(this).addClass("shown");
				$(this).next("div.moreInfo").slideDown(300);
				isShown = 1;
			}else{
				$(this).removeClass("shown");
				$(this).addClass("hidden");
				$(this).next("div.moreInfo").slideUp(300);
				isShown = 0;
			}
		});
	});
}

/*function showInfo() {
	var display = $('div.moreInfo:first').css("display");
	if(display == 'none') {
		$("this div.moreInfo").show(1000);
}	*/

/* Sliders */
	function findOpenRows(){
		var temp;
		var openRows = new Array();
		openRows[0] = 1;
		$('.pageIndex').each(function() {
			temp = this.id;
			openRows = temp.split(",");
		});
		setupSliders(openRows);
	}
	function setupSliders(index) {
		var sliderNum=0;
		//show first sub item of each slider
		$('.slider').each(function() {
			$(this).children('ul').hide();
			if(index[sliderNum]>0){
				$(this).children('h3:eq('+(index[sliderNum]-1)+')').next('ul').show();
				$(this).children('h3:eq('+(index[sliderNum]-1)+')').addClass('open');
			}
			sliderNum++;	
		});
		//check for items with no sub items
		$(".slider h3").each(function() {
			if(!$(this).next().is("ul")){
				$(this).addClass('none'); //add class for no icon
			}		
		});
		//click function
		$(".slider h3").click(function(){
			var tabOpen = false;
			if($(this).hasClass("open")){
				tabOpen = true;
			}else{
				tabOpen = false;
			}
			$('.slider').each(function() {
				$(this).children('h3').removeClass("open");
				$(this).children('ul').slideUp("slow");
			});
			if(tabOpen==true){
				$(this).removeClass("open");
			}else{
				$(this).addClass("open");
				$(this).next("ul").slideToggle(300).siblings("ul").slideUp("slow");
			}
			$(this).siblings("h3").removeClass("open"); 
		});
	}
/* Featured Gallery */	
	function setupGallery() {
		$('#myGallery').show();
		$('#myGallery div').each(function() {
			title = $(this).children('h3').text();
			text = $(this).children('p').text();
			$(this).children('h3').remove();
			$(this).children('p').remove();
			if(title != "" && text != "") {
				$(this).append('<div class=\'slideInfoZone\'><h2>'+title+'</h2><p>'+text+'</p></div>');
			}
			//if only one feature, slide up its content, else show the slideshow controls
			if($(this).is(':only-child')){
				onAfter();
			}else{
				$(this).append('<a class=\'left\'/>');
				$(this).append('<a class=\'right\'/>');
				$(this).append('<a class=\'pause\'/>');
			}
		});
		$('#myGallery').cycle({ 
			fx:     'fade', 
			speed:   700, 
			timeout: 9000, 
			next: '.right',
			prev: '.left',
			before: onBefore,
			after: onAfter
		});
		//click events for pause/play button
		$('#myGallery a').click(function() { 
			if($(this).hasClass('pause')){										
				$('#myGallery .pause').addClass('play');			
				$('#myGallery .pause').removeClass('pause');
				$('#myGallery').cycle('pause'); 
			}else if($(this).hasClass('play')){		
				$('#myGallery .play').addClass('pause');			
				$('#myGallery .play').removeClass('play');
				$('#myGallery').cycle('resume'); 
			}
		});			
	}
	function onBefore(curr, next, opts) {
		$('.slideInfoZone').stop().animate({bottom:'-100px', opacity: 0.0}, 300);
	}
	function onAfter(curr, next, opts) {
		$('.slideInfoZone').stop().animate({bottom:'0px', opacity: 0.8}, 700);
	}

	/* Archived Element Controls */
	
	function startArchive() {
		$(".expandLinkArch").each(function(){
			$(this).removeClass("shownArch");
			$(this).addClass("hiddenArch");
			$(this).next(".archived").slideUp(0);
		});
		$(".expandLinkArch").each(function(){
			var isShown = 0;
			$(this).click(function(){
				if(isShown == 0){
					$(this).removeClass("hiddenArch");
					$(this).addClass("shownArch");
					$(this).next(".archived").slideDown(700);
					isShown = 1;
				}else{
					$(this).removeClass("shownArch");
					$(this).addClass("hiddenArch");
					$(this).next(".archived").slideUp(700);
					isShown = 0;
				}
			});
		});
	}
	
	
/* Buzz controls */
/*function buzzShow(from, to) {
	selectorFrom = "#buzz ul li:eq(" + from + ")";
	selectorTo = "#buzz ul li:eq(" + to + ")";
	$(selectorFrom).fadeOut(1500);
	for(var i = 0; i < liNodes.length; i++) { 
		liNodes[i].style.display = 'none'
	}
	//liNodes[to].style.opacity = 1;
	//liNodes[to].style.display = '';
	$(selectorTo).fadeIn(1500);

	//new Fx.Style(liNodes[to], 'opacity', {duration: 1000} ).start(1);
	//new Fx.Style(liNodes[from], 'opacity', {duration: 1000} ).start(0);
	//new Moo.Fx.Style(liNodes[to], 'opacity', {duration: 1000} ).start(1); - for namespaced version
	//new Moo.Fx.Style(liNodes[from], 'opacity', {duration: 1000} ).start(0); - for namespaced version
	buzzCurrent = to;
}

function buzzSetup() {
	if($('#buzz')) {
		container = document.getElementById("buzz"); 
		if(container!=null){
			ulNode = container.getElementsByTagName("ul"); 
			ulNode[0].style.display = 'block';
			
			liNodes = container.getElementsByTagName("li"); 
			buzzNum = liNodes.length;
			buzzCurrent = 0;
			for(var i = 0; i < liNodes.length; i++) { 
				liNodes[i].style.display = 'none'
			}
			
			var nextButton = document.createElement('a');
			var prevButton = document.createElement('a');
			
			nextButton.onclick = function(){return buzzNext();};
			prevButton.onclick = function(){return buzzPrev();};
			
			nextButton.id = 'next';
			prevButton.id = 'prev';
			
			container.insertBefore(prevButton, container.firstChild);
			container.insertBefore(nextButton, container.firstChild);
			
			liNodes[buzzCurrent].style.opacity = 1;
			liNodes[buzzCurrent].style.display = 'block';
			
			//new Fx.Style(liNodes[buzzCurrent], 'opacity', {duration: 1000} ).start(1);
			//new Moo.Fx.Style(liNodes[buzzCurrent], 'opacity', {duration: 1000} ).start(1); - for namespaced version
		}
	}
}

function buzzNext() {
	if (buzzCurrent == (buzzNum-1)) {
		buzzShow(buzzCurrent, 0);
	} else {
		buzzShow(buzzCurrent, (buzzCurrent+1));
	}
	buttonPressed=true;
}
function buzzPrev() {
	if (buzzCurrent == 0) {
		buzzShow(buzzCurrent, (buzzNum-1));
	} else {
		buzzShow(buzzCurrent, (buzzCurrent-1));
	}
	buttonPressed=true;
}*/