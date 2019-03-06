// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require jquery3
//= require jquery_ujs
//= require_tree .



let songId;
// This code enables to have access to the particular song's ID
document.addEventListener('DOMContentLoaded',()=>{
	document.querySelector('ul').addEventListener('click', (event)=>{
		if (event.target.tagName == 'BUTTON') {
			// debugger
			songId = event.target.dataset.id
			console.log(songId)
		}
	})
})
// This function is for the progress bar
	function updateProgress() {
	    var player = document.getElementById(songId);
	    var progressbar = document.querySelector(`#bar-${songId}`);
	    progressbar.value = (player.currentTime / player.duration);
	};