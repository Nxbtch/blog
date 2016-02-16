page_load = ->
  return unless $('table.post-index')

  operateFormatter = (value, row, idx)->
    [
      '<a href="/admin/posts/'+row.id+'/edit" target="_blank">',
      'edit',
      '</a>'
    ].join('')


  table = $('table.post-index')
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
      formatter: operateFormatter
    ]

$(document).on('turbolinks:load', page_load)

