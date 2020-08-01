jQuery.ajaxSetup({
	'beforeSend': function(xhr) { xhr.setRequestHeader('Accept', 'text/javascript')}
})
jQuery.fn.submitWithAjax = function(Btn){
	this.submit(function(){

		$.post($(this).attr("action"), $(this).serialize(), null, "script");
		// this.get(0).submit(); // for html posting
		Btn.val('Submitted by Ajax').prop('disabled', true);
		return false;
	})
}
$(document).on('turbolinks:load', function(){
	var theForm = $('#new_review');
	var submitBtn = $('#new_review input[type=submit]');
	theForm.submitWithAjax(submitBtn);
})