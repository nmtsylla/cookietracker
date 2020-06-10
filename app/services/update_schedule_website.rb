class UpdateScheduleWebsite < ApplicationService

  def initialize(id, params)
    @params = params
    @website_id = id
  end

  def call
    @website_form = ScheduleWebsiteForm.new(@params)

    if @website_form.valid?
      website = Website.find(@website_id)
      website.update(@params)
      website
    else
      raise(NotValidEntryRecord, @website_form.errors.full_messages.to_sentence)
    end
  end
end
