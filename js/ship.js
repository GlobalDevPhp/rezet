var error1 = true;
var error2 = true;
var error3 = true;
var error4 = true;
$('input#js-name, input#js-address, input#js-email, input#js-phone').unbind().blur( function(){
	var id = $(this).attr('id');
	var val = $(this).val();

	switch(id)
	{
	    case 'js-name':
	        var rv_name = /^[a-zA-Zа-яА-Я\s]+$/;
	
	        if(val.length > 2 && val != '' && rv_name.test(val))
	        {
	            $(this).addClass('not_error');
	            $(this).next('.error-box').hide();
	            error1 = false;
	        }
	        else
	        {
	            $(this).removeClass('not_error').addClass('error');
	            $(this).next('.error-box').show();
	            error1 = true;
	        }
	        break;
	    case 'js-email':
	        var rv_email = /^([a-zA-Z0-9_.-])+@([a-zA-Z0-9_.-])+\.([a-zA-Z])+([a-zA-Z])+/;
	        if(val == '' || rv_email.test(val))
	        {
	            $(this).addClass('not_error');
	            $(this).next('.error-box').hide();
	            error2 = false;
	        }
	        else
	        {
	            $(this).removeClass('not_error').addClass('error');
	            $(this).next('.error-box').show();
	            error2 = true;
	        }
	        break;
	    case 'js-address':
			if(val.length > 4 && val != '')
			{
				$(this).addClass('not_error');
				$(this).next('.error-box').hide();
				error3 = false;
			}
			else
			{
				$(this).removeClass('not_error').addClass('error');
				$(this).next('.error-box').show();
				error3 = true;
			}
			break;
	    case 'js-phone':
	        var rv_phone = /^([+]48)?((3[\d]{2})([ ,\-,\/]){0,1}([\d, ]{6,9}))|(((0[\d]{1,4}))([ ,\-,\/]){0,1}([\d, ]{5,10}))$/;
	        if(rv_phone.test(val) || val == '')
	        {
	            $(this).addClass('not_error');
	            $(this).next('.error-box').hide();
	            error4 = false;
	        }
	        else
	        {
	            $(this).removeClass('not_error').addClass('error');
	            $(this).next('.error-box').show();
	            error4 = true;
	        }
	    	break;
	} // end switch(...)
	if (error1 || error2 || error3 || error4) {
	    console.log('disabled'+error1+error2+error3+error4);
	    $("#payout").attr("disabled", true);
	}
	else {
	    console.log('notdisabled');
	    $("#payout").attr("disabled", false);
	}
}); // end blur()