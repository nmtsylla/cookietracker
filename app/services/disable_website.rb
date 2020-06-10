class DisableWebsite < ApplicationService
  def initialize(params)
    @params = params
  end

  def call
    @website = Website.find(@params[:id])
    @website.active = false
    @website.save!
  end

end