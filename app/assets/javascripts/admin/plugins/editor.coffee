PreviewView = Backbone.View.extend
  tagName: 'div'
  className: 'preview'

  template: _.template("<button class='btn btn-default close'>x</button> <div><%= body %></div>")

  initialize: (data)->
    @data = data

  events:
    'click button.close': 'remove'

  render: ->
    @$el.html(@template(@data))
    @

window.EditorView = Backbone.View.extend
  el: "body"

  events:
    "click button.preview": "preview"

  initialize: (ele) ->
    @editor = CodeMirror.fromTextArea ele.get(0),
      lineNumbers: true
      mode: 'gfm'

  preview: (e)->
    e.preventDefault()
    value = @editor.getValue()

    $.post '/admin/posts/preview', {body: value}, (data)->
      v = new PreviewView(data).render()
      $('body').append(v.el)

