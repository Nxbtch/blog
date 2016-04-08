class TableFilterService < BaseService

  attr_reader :resource, :options

  # supported options
  #   search_fields: Array, define a set of field to search, search is based on sql like query
  #
  def initialize(resource, params, options={})
    super(params)
    @resource = resource
    @options = ActiveSupport::HashWithIndifferentAccess.new(options)
  end

  def execute
    resources = resource.all

    limit = params[:limit] || Settings.pagination.admin_table
    offset = params[:offset] || 0

    if params[:order]
      order = params[:order] || :desc
      order_column = params[:sort] || :id
      resources = resource.order("#{order_column} #{order}")
    end

    search_fields = options[:search_fields]
    if params[:search].present? && search_fields.present? && search_fields.is_a?(Array)
      search_fields.each do |field|
        resources = resources.where("#{field} like '%#{params[:search]}%'")
      end
    end

    resources.limit(limit).offset(offset)
  end
end
