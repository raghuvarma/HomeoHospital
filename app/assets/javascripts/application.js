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
		$(this).siblings().removeClass('active');
		$(this).addClass('active');
	});
	$('#problem_other_problem_type_container').css('display', 'none');
	
	if($('#problem_other_problem_type').val() == 'Other') {
		$('#problem_other_problem_type_container').css('display', 'inline-block');
	} else {
		$('#problem_other_problem_type_container').css('display', 'none');
	}

	$('#problem_problem_type').on('change', function (e) {
	    var optionSelected = $("option:selected", this);
	    var valueSelected = this.value;
	    if(valueSelected === 'Other') {
	    	$('#problem_other_problem_type_container').css('display', 'inline-block');
	    } else {
	    	$('#problem_other_problem_type').val('');
	    	$('#problem_other_problem_type_container').css('display', 'none');

	    }
	});

	$('#token_staff2_container').css('display', 'none');
	
	if($('#token_is_staff2_involved').prop('checked')) {
		$('#token_staff2_container').css('display', 'inline-block');
	} else {
		$('#token_staff2_container').css('display', 'none');
	}

	$('#token_is_staff2_involved').on('change', function (e) {
	    //var optionSelected = $("option:selected", this);
	    //var valueSelected = this.value;
	    if($('#token_is_staff2_involved').prop('checked')) {
	    	$('#token_staff2_container').css('display', 'inline-block');
	    } else {
	    	$('#token_staff2').val('');
	    	$('#token_staff2_container').css('display', 'none');

	    }
	});

	$('#is_new_application_error').css('display', 'none');
	$("#idIsNewApplication").click(function() {	
		if ($("#idIsNewApplication").prop('checked')) {
			$('#application_id_error').css('display', 'none');
			$('#is_new_application_error').css('display', 'inline-block');
        } else {
        	$('#application_id_error').css('display', 'inline-block');
        	$('#is_new_application_error').css('display', 'none');
        }
	});

	// var linkClick = function() {
	// 	//alert('hi');
	// 	$(this).siblings().removeClass('active');
	// 	$(this).addClass('active');
	// 	//$('#'+id).addClass('active');
	// }

});

