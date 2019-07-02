class Tier < ApplicationRecord
  validates :level, inclusion: { in: [1, 2, 3] }
  belongs_to :alliance
end
