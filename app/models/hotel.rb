class Hotel < ApplicationRecord
  belongs_to :group
  has_many :rooms
end
