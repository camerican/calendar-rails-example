class Calendar < ApplicationRecord
  belongs_to :user
  has_many :events

 # scope :has_events, -> { where() }
end
