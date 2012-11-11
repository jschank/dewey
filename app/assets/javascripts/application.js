// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery-ui
//= require jquery_ujs
//= require jquery-expander
//= require_tree .

function remove_fields(link) {
        $(link).prev("input[type=hidden]").val("1");
        $(link).closest(".dynamic_fields").hide();
}

function add_fields(link, association, content) {
        var new_id = new Date().getTime();
        var regexp = new RegExp("new_" + association, "g");
        $(link).before(content.replace(regexp, new_id));
}

function populate_schedulables(chooser)
{
	// Clear all options from sub category select 
	$("select#schedule_schedulable_id").empty();
			
	// Fill sub category select 
	var options_list = $(this).val()+"_options";
			
	// Clone the proper options into the select control
	var div_entity = "div#"+options_list;
	var div_contents = $(div_entity).contents().clone();
	$(div_contents).appendTo("select#schedule_schedulable_id"); 
}

// iOS treats links in Web Apps as something that should be opened in Safari, and javascript location changes as an in-app action that is allowed to stay in the web-app.
// The code below works because it prevents the default link behavior, replacing it with a js nav call. 


(function(a,b,c){if(c in b&&b[c]){var d,e=a.location,f=/^(a|html)$/i;a.addEventListener("click",function(a){d=a.target;while(!f.test(d.nodeName))d=d.parentNode;"href"in d&&(d.href.indexOf("http")||~d.href.indexOf(e.host))&&(a.preventDefault(),e.href=d.href)},!1)}})(document,window.navigator,"standalone");

