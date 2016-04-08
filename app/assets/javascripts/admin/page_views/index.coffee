window.PageViewsIndexView = Backbone.View.extend
  el: "body"

  initialize: ->
    return if $('.bootstrap-table').length != 0
    table = $('table.page_views')

    options = Utils.index_table_options
      url: '/admin/page_views.json'
      columns: [
        field: 'id',
        title: 'ID'
      ,
        field: 'ip',
        title: 'IP'
      ,
        field: 'UA',
        title: 'User Agent'
      ]

    table.bootstrapTable options
