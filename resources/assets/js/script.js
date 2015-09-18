$(function(){
	if($.isFunction($.fn.chosen))
	{
		$('.chosen-input').chosen();
	}
	if($.isFunction($.fn.inputmask))
	{
		$(".datemask").inputmask("dd/mm/yyyy", {"placeholder": "dd/mm/yyyy"});
		$(".ssnmask").inputmask("999-99-9999",{placeholder:"xxx-xx-xxxx"});
	}
});