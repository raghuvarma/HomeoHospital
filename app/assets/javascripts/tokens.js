$(document).ready(function() {
	$("#idIsNewApplication").click(function() {	
		if ($("#idIsNewApplication").prop('checked')) {
			$('#application_id').css('display', 'none');
        } else {
        	$('#application_id').css('display', 'inline-block');
        }
	});
});
