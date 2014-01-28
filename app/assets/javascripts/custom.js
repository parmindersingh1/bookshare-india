$(document).ready(function() {

	$('#myBtn').button();

	$('#myBtn').click(function() {

		$('#myBtn').button('loading');

		/* perform processing then reset button when done */
		setTimeout(function() {
			$('#myBtn').button('reset');
		}, 1000);

	});

}); 