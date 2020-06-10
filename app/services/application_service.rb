class ApplicationService
  class NotValidEntryRecord < StandardError; end

  def self.call(*args, &block)
    new(*args, &block).call
  end
end