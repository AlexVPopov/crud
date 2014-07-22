class Car < ActiveRecord::Base
  has_paper_trail

  validates :model, :year, :kilometers, :color, presence: true
  validates :kilometers, numericality: { only_integer: true,
                                         greater_than_or_equal_to: 0 }
  validates :year, numericality: { only_integer: true,
                                   greater_than_or_equal_to: 1894,
                                   less_than_or_equal_to: Time.now.year }
end
