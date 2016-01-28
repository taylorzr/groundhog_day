module GroundhogDay
  module TimeExtensions
    def now
      if GroundhogDay.enabled?
        actual_now = super
        Time.new GroundhogDay.date.year, GroundhogDay.date.month, GroundhogDay.date.day, actual_now.hour, actual_now.min, actual_now.sec, actual_now.utc_offset
      else
        super
      end
    end
  end
end
