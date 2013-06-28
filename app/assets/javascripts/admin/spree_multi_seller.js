//= require admin/spree_backend
$(document).ready(function(){
 $(".phone").keyup(function(event) {
    var phone = $(this).val();
    if(event.which == 61 || event.which == 173 || event.which == 57 || event.which == 48 || event.which == 32 || $.isNumeric(phone))
      ;
    else
    {
      var changed = phone.replace(/[^0-9-+()\s]/gi, '').replace(/[_\s]/g, '')
      $(this).val(changed.substring(0,changed.lenght));
    }
  });   
  $('.fancybox').fancybox({
    padding : 0,
    openEffect  : 'elastic'
  });

});