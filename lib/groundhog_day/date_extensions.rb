module GroundhogDay
  module DateExtensions
    def today
      if GroundhogDay.enabled?
        GroundhogDay.date
      else
        super
      end
    end
  end
end
