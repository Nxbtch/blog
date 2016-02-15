page_load = ->
  $("[data-dismiss='alert']").alert()

$(document).on('turbolinks:load', page_load)
