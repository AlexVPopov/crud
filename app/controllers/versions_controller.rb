class VersionsController < ApplicationController
  def revert
    @version = PaperTrail::Version.find(params[:id])
    @version.reify ? @version.reify.save! : @version.item.destroy
    link_name = params[:redo] == true ? "undo" : "redo"
    link = view_context.link_to(link_name, revert_version_path(@version.next, :redo => !params[:redo]), :method => :post)
    redirect_to :back, notice: "#{@version.event.capitalize} undone! #{link}"
  end
end
