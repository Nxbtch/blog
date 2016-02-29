window.PostsIndexView = Backbone.View.extend
  el: "body"

  initialize: ->
    console.log "hehe"
    table = $('table.posts')
    table.bootstrapTable
      serach: true
      url: '/admin/posts.json'
      sidePagination: 'server'
      pagination: true
      columns: [
        field: 'id'
        title: 'ID'
      ,
        field: 'post_title'
        title: 'Title'
      ,
        field: 'post_status'
        title: 'status'
      ,
        field: 'comment_count'
        title: 'Comments'
      ,
        title: 'Operation'
        formatter: @_operateFormatter
      ]

  _operateFormatter: (value, row, idx)->
    [
      '<a href="/admin/posts/'+row.id+'/edit">',
      'edit',
      '</a>'
    ].join('')

