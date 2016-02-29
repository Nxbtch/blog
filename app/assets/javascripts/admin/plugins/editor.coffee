window.EditorView = Backbone.View.extend
  el: "body"

  initialize: (ele) ->
    @editor = CodeMirror.fromTextArea ele.get(0),
      lineNumbers: true
      mode: 'gfm'

