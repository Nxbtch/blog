# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#
$(document).on 'turbolinks:load', ->
  path = window.location.pathname
  if path.indexOf "/admin" != -1
    return
  $.post '/page_view',
    path: path

