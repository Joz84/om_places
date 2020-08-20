class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true


  def cumul_ref
    {
      1 => 52,
      2 => 45,
      3 => 33,
      4 => 22,
      5 => 13,
    }
    self.bookings.filter_by_ref.group(:DBE).sort.reverse.to_h
  end

  def custom_cumul_ref
    [cumul_ref.keys, cumul_ref.values]
  end
end


# class Booking < ApplicationRecord
#   def filter_by_ref
#     booking.all.where(phase: "ref")
#   end
# end
