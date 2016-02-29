#= require jquery
#= require underscore
#= require backbone
#= require bootstrap-sprockets
#= require jquery_ujs
#= require turbolinks
#= require codemirror
#= require codemirror/modes/markdown
#= require codemirror/modes/gfm
#= require codemirror/addons/mode/overlay
#
#require plugins
#
#= require bootstrap-table/src/bootstrap-table
#= require bootstrap-table/src/locale/bootstrap-table-zh-CN
#
#= require_tree .
#= require_self

AppView = Backbone.View.extend
  el: "body"

  capitalize: (string)->
    string.charAt(0).toUpperCase() + string.substring(1).toLowerCase()

  initialize: ->
    @initPlugins()

    # initialize corespond view
    controller_name = $("body").data("controller-name")
    action_name = $("body").data("action-name")
    name = @capitalize(controller_name) + @capitalize(action_name) + "View"
    view = window[name]

    new view() if view

    $("[data-dismiss='alert']").alert()

  initPlugins: ()->
    new EditorView($("#editor")) if $("#editor").length > 0

$(document).on 'turbolinks:load', ->
  window._appView = new AppView()
