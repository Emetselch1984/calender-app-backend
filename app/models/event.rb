class Event < ApplicationRecord
  validates :name,presence: true,length: {maximum: 100}
  validates :start,:end,presence: true
end
