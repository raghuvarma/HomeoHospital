$(document).ready(function() {
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
});
