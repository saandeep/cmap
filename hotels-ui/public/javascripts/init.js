(function($) {
  $(function() {
    $(document).ready(function() {
      $('.modal').modal();
      $('.sidenav').sidenav();
    });
  });
})(jQuery);

var apiurl;

function load() {
  apiurl = localStorage.getItem("api_url")
  $("#api_url").val(apiurl);
  $('#url').val(apiurl);
}

function save() {
  apiurl = $('#api_url').val();
  $('#url').val(apiurl);
  localStorage.setItem("api_url", apiurl);
}

function go() {
  $("#search").submit();
}

load();