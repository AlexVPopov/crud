class Car < ActiveRecord::Base
  has_paper_trail

  validates :model, :year, :kilometers, :color, presence: true
  validates :kilometers, numericality: { only_integer: true,
                                         greater_than_or_equal_to: 0 }
  validates :year, numericality: { only_integer: true,
                                   greater_than_or_equal_to: 1894,
                                   less_than_or_equal_to: Time.now.year }
  validate :valid_ages

  private

    def valid_ages
      if ages.include? 0
        errors.add :ages, 'cannot contain a string or zero.'
      end
    end
end
