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
        title: 'User Agent',
        formatter: @user_agent_formatter
      ,
        field: 'created_at',
        title: 'Created At'
      ]

    table.bootstrapTable options

  user_agent_formatter: (value, row)->
    parser = new UAParser(value)
    result = parser.getResult()
    [
      result.browser.name,
      result.browser.version,
      result.os.name,
      result.os.version,
      result.cpu.architecture
    ].join(' ')
