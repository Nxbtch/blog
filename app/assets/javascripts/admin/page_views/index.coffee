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
        field: 'path',
        title: 'path'
      ,
        field: 'user_agent',
        title: 'User Agent'
      ,
        field: 'created_at',
        title: 'Created At'
      ]

    table.bootstrapTable options
