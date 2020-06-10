class DisableWebsite < ApplicationService

  def initialize(params)
    @params = params
  end

  def call
    @website = Website.find(@params[:id])
    @website.active = false
    unless @website.save!
      raise(NotValidEntryRecord, @website.errors.full_messages.to_sentence)
    end
  end

end