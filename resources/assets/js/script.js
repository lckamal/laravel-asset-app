$(function(){
	if($.isFunction($.fn.chosen))
	{
		$('.chosen-input').chosen();
	}
	if($.isFunction($.fn.inputmask))
	{
		$(".datemask").inputmask("yyyy-mm-dd", {"placeholder": "yyyy-mm-dd"});
		$(".ssnmask").inputmask("999-99-9999",{placeholder:"xxx-xx-xxxx"});
	}
});