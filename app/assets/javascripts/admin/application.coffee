#= require jquery
#= require bootstrap-sprockets
#= require jquery_ujs
#= require turbolinks
#= require codemirror
#
#
#require plugins
#
#= require bootstrap-table/src/bootstrap-table
#
#= require_tree .

ready = ->

page_load = ->

# bind bootstrap alert.js
  $("[data-dismiss='alert']").alert()

# bind codemirror editor
  if $('.codemirror-editor').length
    CodeMirror.fromTextArea $('.codemirror-editor').get(0),
      lineNumbers: true

$(document).ready(ready)
$(document).on('turbolinks:load', page_load)
