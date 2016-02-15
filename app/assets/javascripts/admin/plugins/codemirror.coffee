page_load = ->
  return if $('.codemirror-editor').length == 0
  CodeMirror.fromTextArea $('.codemirror-editor').get(0),
    lineNumbers: true

$(document).on('turbolinks:load', page_load)


