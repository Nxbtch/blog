page_load = ->
  return unless $('table.post-index')
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
    ]

$(document).on('turbolinks:load', page_load)

