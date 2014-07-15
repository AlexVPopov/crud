class VersionsController < ApplicationController
  def revert
    @version = Version.find(param[:id])
    @version.reify.save!
    redirect_to :back, notice: "#{@version.event.capitalize} undone!"
  end
end
