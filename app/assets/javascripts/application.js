// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require jquery-expander
//= require jquery.ui.all
//= require anytime
//= require_tree .

function remove_fields(link) {
        $(link).prev("input[type=hidden]").val("1");
        $(link).closest(".link_fields").hide();
}

function add_fields(link, association, content) {
        var new_id = new Date().getTime();
        var regexp = new RegExp("new_" + association, "g");
        $(link).parent().after(content.replace(regexp, new_id));
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