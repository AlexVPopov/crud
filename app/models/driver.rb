class Driver < ActiveRecord::Base
  validates :name,
    presence: true
  validates :age,
    presence: true,
    numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  belongs_to :driving_style

  accepts_nested_attributes_for :driving_style
end
