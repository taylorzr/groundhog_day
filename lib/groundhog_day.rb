require 'groundhog_day/version'
require 'groundhog_day/date_extensions'
require 'groundhog_day/time_extensions'
require 'date'

module GroundhogDay
  class << self
    def enable!(date: Date.new(1982, 6, 16))
      @date = date.to_date
      Time.singleton_class.prepend TimeExtensions unless Time.singleton_class.ancestors.include? TimeExtensions
      Date.singleton_class.prepend DateExtensions unless Date.singleton_class.ancestors.include? DateExtensions
      @enabled = true
    end

    def disable!
      @enabled = false
    end

    def enabled?
      @enabled
    end

    def date
      @date
    end

    def date=(value)
      @date = value.to_date
    end
  end
end

