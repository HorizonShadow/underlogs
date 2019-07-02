class Alliance < ApplicationRecord
  has_one_attached :icon
  belongs_to :card
end
