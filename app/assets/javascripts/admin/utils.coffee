window.Utils =
  index_table_options: (options)->
    default_options =
      search: true
      searchOnEnterKey: true
      url: ''
      sidePagination: 'server'
      pagination: true
      columns: []

    default_options[k] = v for k, v of options
    default_options

