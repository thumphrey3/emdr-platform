// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require twitter/bootstrap
//= require fuelux.js
//= require_tree .

$(document).ready(function(){
  /* Your javascripts goes here... */
   $('#my-wizard').on('change', function(e, data) {
                console.log('change');
                if(data.step===3 && data.direction==='next') {
                    // return e.preventDefault();
                }
            });

            $('#my-wizard').on('changed', function(e, data) {
                console.log('changed');
            });

            $('#my-wizard').on('finished', function(e, data) {
                console.log('finished');
            });

            $('.btn-prev').on('click', function() {
                console.log('prev');
            });

            $('.btn-next').on('click', function() {
                console.log('next');
            });	
});