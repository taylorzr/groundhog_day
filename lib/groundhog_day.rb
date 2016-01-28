require 'groundhog_day/version'
require 'groundhog_day/date_extensions'
require 'groundhog_day/time_extensions'
require 'date'

module GroundhogDay
  class << self
    def date
      @date
    end

    def date=(value)
      @date = value.to_date
    end

    def enable!(date: Date.new(1982, 6, 16))
      @date = date.to_date
      @enabled = true
    end

    def disable!
      @enabled = false
    end

    def enabled?
      @enabled
    end
  end

  Time.singleton_class.prepend TimeExtensions
  Date.singleton_class.prepend DateExtensions
end

