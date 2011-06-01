/*!
 * jQuery Observer
 *
 * Copyright 2010 - 2011 Kevin Sylvestre
 */

(function ($) {
	
	$.fn.observe = function(callback, options) {
		
		var settings = { 
			interval: 800, 
		}
		
		if (options) $.extend(settings, options);
		
		return this.each(function () {
			
			var form = this;
			var modified = null;
			
			$(form.elements).change(function () { modified = new Date(); });
			$(form.elements).keypress(function () { modified = new Date(); });
			setInterval(function () { if (modified) callback.call(form); modified = null; }, settings.interval);
			
		});
		
	};
	
}) (jQuery);