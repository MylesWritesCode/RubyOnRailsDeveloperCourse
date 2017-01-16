// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap
//  require jquery_ujs
//= require turbolinks
//  require jquery.infinite-pages
//= require_self
//= require_tree .


$(document).ready(function() {

  // For Endless Pagination with will_paginate
  if ($('.pagination').length) {
    $(window).scroll(function() {
      var url = $('a[rel=next]').attr('href');
      if (url && $(window).scrollTop() > $(document).height() - $(window).height() - 50) {
        $('.pagination').text("Loading...");
        return $.getScript(url);
      }
    });
    return $(window).scroll();
  }

  // For Chosen jQuery UI Autocomplete
  $("#categorySelect").chosen({
    allow_single_deselect: true,
    no_results_text: "Oops, no category found!",
  });
});
