window.PostsIndexView = Backbone.View.extend
  el: "body"

  initialize: ->
    return if $('.bootstrap-table').length != 0
    table = $('table.posts')
    options = Utils.index_table_options
      url: '/admin/posts.json'
      columns: [
        field: 'id'
        title: 'ID'
        sortable: true
      ,
        field: 'post_title'
        title: 'Title'
        formatter: @_operateFormatter
      ,
        field: 'post_status'
        title: 'status'
        sortable: true
      ]

    table.bootstrapTable options

  _operateFormatter: (value, row, idx)->
    [
      '<a href="/admin/posts/'+row.id+'/edit">',
      value || "No Title",
      '</a>'
    ].join('')

