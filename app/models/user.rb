class User < ApplicationRecord
  has_many :calendars


  validates_presence_of :email
  validates_presence_of :name_first
  validates :username, length: {in: 8..12}, uniqueness: true
  validates_presence_of :password
  # def full_name
  #   @name_first + " " + @name_last
  # end
end
