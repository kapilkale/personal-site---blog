$(function(){
  $(".email_link").click(function(event){
    event.preventDefault();
    $('img#email_address').toggle();
  });
});