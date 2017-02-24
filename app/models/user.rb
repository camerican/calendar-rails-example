class User < ApplicationRecord
  has_many :calendars

  # def full_name
  #   @name_first + " " + @name_last
  # end
end