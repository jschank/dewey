# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
# jQuery ->
# 	$('#collapsable').jTruncate()

jQuery -> 
	$('div#act_collapsable').expander({
    slicePoint:       190,      # default is 100
    #expandPrefix:     ' ',     # default is '... '
    #expandText:       '[...]', # default is 'read more'
    #collapseTimer:    5000,    # re-collapses after 5 seconds; default is 0, so no re-collapsing
    #userCollapseText: '[^]'    # default is 'read less'
  });
