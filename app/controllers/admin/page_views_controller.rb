class Admin::PageViewsController < Admin::ApplicationController
  # GET /page_views
  # GET /page_views.json
  def index
    TableFilterService.new(PageView, params, {search_fields: [:ip, :user_agent]}).execute
  end

  # DELETE /page_views/1
  # DELETE /page_views/1.json
  def destroy
    @page_view.destroy
    respond_to do |format|
      format.html { redirect_to page_views_url, notice: 'Page view was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

end
