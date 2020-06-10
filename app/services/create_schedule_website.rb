class CreateScheduleWebsite < ApplicationService

  def initialize(params)
    @params = params
  end

  def call
    @website_form = ScheduleWebsiteForm.new(@params)

    if @website_form.valid?
      website = Website.new(@params)
      website.save!
      website
    else
      raise(NotValidEntryRecord, @website_form.errors.full_messages.to_sentence)
    end
  end
end
