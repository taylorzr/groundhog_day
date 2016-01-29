module GroundhogDay
  module DateTimeExtensions
    def now
      if GroundhogDay.enabled?
        actual_now = super
        DateTime.new GroundhogDay.date.year, GroundhogDay.date.month, GroundhogDay.date.day, actual_now.hour, actual_now.min, actual_now.sec, actual_now.offset, actual_now.sec_fraction
      else
        super
      end
    end
  end
end
