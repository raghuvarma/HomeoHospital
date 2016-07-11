// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
$(document).ready(function() {
	$('nav ul li a').on('click', function() {
		//$('nav ul a').first().addClass('fdsfsd')
		//location.pathname.substring(1, location.pathname.length);
		//alert('location.pathname', location.pathname);
		$(this).siblings().removeClass('active');
		$(this).addClass('active');
	})

	// var linkClick = function() {
	// 	//alert('hi');
	// 	$(this).siblings().removeClass('active');
	// 	$(this).addClass('active');
	// 	//$('#'+id).addClass('active');
	// }

});

